<?php

namespace App\Http\Controllers\Payment;

use Exception;
use App\Models\Item;
use Omnipay\Omnipay;
use App\Models\Order;
use App\Models\Setting;
use App\Models\Currency;
use App\Processor\Esewa;
use App\Models\PromoCode;
use App\Helpers\SmsHelper;
use App\Models\TrackOrder;
use Illuminate\Support\Str;
use App\Helpers\EmailHelper;
use App\Helpers\PriceHelper;
use App\Models\Notification;
use Illuminate\Http\Request;
use App\Models\PaymentSetting;
use App\Models\ShippingService;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class KhaltiController extends Controller
{
    public function verifyPayment(Request $request)
    {
        if (Session::has('currency')) {
            $currency = Currency::findOrFail(Session::get('currency'));
        } else {
            $currency = Currency::where('is_default', 1)->first();
        }

        $supported = ['NPR'];
        if (!in_array($currency->name, $supported)) {
            Session::flash('error', __('Currency Not Supported'));
            return redirect()->back();
        }

        $user = Auth::user();
        $setting = Setting::first();
        $cart = Session::get('cart');

        $total_tax = 0;
        $cart_total = 0;
        $total = 0;
        $option_price = 0;
        foreach ($cart as $key => $item) {

            $total += $item['main_price'] * $item['qty'];
            $option_price += $item['attribute_price'];
            $cart_total = $total + $option_price;
            $item = Item::findOrFail($key);
            if ($item->tax) {
                $total_tax += $item::taxCalculate($item);
            }
        }
        $shipping = [];
        if (ShippingService::whereStatus(1)->exists()) {
            $shipping = ShippingService::whereStatus(1)->first();
        }
        $discount = [];
        if (Session::has('coupon')) {
            $discount = Session::get('coupon');
        }

        $txnid = "KHALTI_" . uniqid();

        $grand_total = ($cart_total + ($shipping ? $shipping->price : 0)) + $total_tax;
        $grand_total = $grand_total - ($discount ? $discount['discount'] : 0);
        $total_amount = PriceHelper::setConvertPrice($grand_total);

        $token = $request->token;

        $args = http_build_query(array(
            'token' => $token,
            'amount'  => $total_amount * 100
        ));

        $url = "https://khalti.com/api/v2/payment/verify/";

        # Make the call using API.
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $args);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $secret_key = config('services.khalti.khalti_secret_key');

        $headers = ["Authorization: Key $secret_key"];
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        // Response
        $response = curl_exec($ch);
        $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        return $response;
    }



    public function storePayment(Request $request)
    {
        $user = Auth::user();
        $setting = Setting::first();
        $cart = Session::get('cart');

        $total_tax = 0;
        $cart_total = 0;
        $total = 0;
        $option_price = 0;
        foreach ($cart as $key => $item) {

            $total += $item['main_price'] * $item['qty'];
            $option_price += $item['attribute_price'];
            $cart_total = $total + $option_price;
            $item = Item::findOrFail($key);
            if ($item->tax) {
                $total_tax += $item::taxCalculate($item);
            }
        }
        $shipping = [];
        if (ShippingService::whereStatus(1)->exists()) {
            $shipping = ShippingService::whereStatus(1)->first();
        }
        $discount = [];
        if (Session::has('coupon')) {
            $discount = Session::get('coupon');
        }

        $grand_total = ($cart_total + ($shipping ? $shipping->price : 0)) + $total_tax;
        $grand_total = $grand_total - ($discount ? $discount['discount'] : 0);
        $total_amount = PriceHelper::setConvertPrice($grand_total);

        // dd('Payment Transaction Successful via Khalti Gateway');

        // if ($status_code == 200) {
        
            
        $txnid = $request->payload;

        $orderData['cart'] = json_encode($cart, true);
        $orderData['discount'] = json_encode($discount, true);
        $orderData['shipping'] = json_encode($shipping, true);
        $orderData['tax'] = $total_tax;
        $orderData['shipping_info'] = json_encode(Session::get('shipping_address'), true);
        $orderData['billing_info'] = json_encode(Session::get('billing_address'), true);
        $orderData['payment_method'] = 'Khalti Gateway';
        $orderData['txnid'] = $txnid;
        $orderData['user_id'] = $user->id;
        $orderData['payment_status'] = 'Paid';
        $orderData['order_status'] = 'Pending';
        $orderData['transaction_number'] = Str::random(10);
        $orderData['currency_sign'] = PriceHelper::setCurrencySign();
        $orderData['currency_value'] = PriceHelper::setCurrencyValue();
        $order = $user->orders()->create($orderData);

        PriceHelper::Transaction($order->id, $order->transaction_number, $user->email, PriceHelper::OrderTotal($order));
        PriceHelper::LicenseQtyDecrese($cart);

        if (Session::has('copon')) {
            $code = PromoCode::find(Session::get('copon')['code']['id']);
            $code->no_of_times--;
            $code->update();
        }
        TrackOrder::create([
            'title' => 'Pending',
            'order_id' => $order->id,
        ]);

        Notification::create([
            'order_id' => $order->id
        ]);

        $emailData = [
            'to' => $user->email,
            'type' => "Order",
            'user_name' => $user->displayName(),
            'order_cost' => $total_amount,
            'transaction_number' => $order->transaction_number,
            'site_title' => Setting::first()->title,
        ];

        $email = new EmailHelper();
        $email->sendTemplateMail($emailData);

        foreach (json_decode($order->cart, true) as $id => $product) {
            $vendor_id[] = $user = Item::findOrFail($id)->user->id;
        }

        if ($discount) {
            $coupon_id = $discount['code']['id'];
            $get_coupon = PromoCode::findOrFail($coupon_id);
            $get_coupon->no_of_times -= 1;
            $get_coupon->update();
        }

        Session::forget('coupon');
        Session::put('order_id', $order->id);
        Session::forget('cart');
        Session::forget('discount');

        $setting = Setting::first();
        if ($setting->is_twilio == 1) {
            // message
            $sms = new SmsHelper();
            $user_number = $order->user->phone;
            if ($user_number) {
                $sms->SendSms($user_number, "'purchase'");
            }
        }

        return redirect()->route('front.checkout.success');

        // } else {
        //     return redirect()->route('front.checkout.cancle')->with([
        //         'message' => 'The payment has been declined. Order is now Pending and is Unpaid.',
        //     ]);
        // }
        // return redirect()->route('front.checkout.cancle')->with([
        //     'message' => 'The payment has been declined. Order is now Pending and is Unpaid.',
        // ]);
    }
}
