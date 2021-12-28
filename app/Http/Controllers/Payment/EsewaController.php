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
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class EsewaController extends Controller
{
    /**
     * @param $order_id
     * @param Request $request
     */
    public function payment(Request $request)
    {
        $gateway = with(new Esewa);

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

        $txnid = "ESEWA_TXN_" . uniqid();

        $grand_total = ($cart_total + ($shipping ? $shipping->price : 0)) + $total_tax;
        $grand_total = $grand_total - ($discount ? $discount['discount'] : 0);
        $total_amount = PriceHelper::setConvertPrice($grand_total);

        $orderData['cart'] = json_encode($cart, true);
        $orderData['discount'] = json_encode($discount, true);
        $orderData['shipping'] = json_encode($shipping, true);
        $orderData['tax'] = $total_tax;
        $orderData['shipping_info'] = json_encode(Session::get('shipping_address'), true);
        $orderData['billing_info'] = json_encode(Session::get('billing_address'), true);
        $orderData['payment_method'] = 'Esewa Payment';
        $orderData['order_status'] = 'Pending';
        $orderData['user_id'] = $user->id;
        $orderData['transaction_number'] = Str::random(10);
        $orderData['currency_sign'] = PriceHelper::setCurrencySign();
        $orderData['currency_value'] = PriceHelper::setCurrencyValue();
        $orderData['txnid'] = $txnid;

        $order = $user->orders()->create($orderData);

        try {
            $response = $gateway->purchase([
                'deliveryCharge' => 0,
                'serviceCharge' => 0,
                'taxAmount' => 0,
                'amount' => $gateway->formatAmount($total_amount),
                'totalAmount' => $gateway->formatAmount($total_amount),
                'productCode' => $txnid,
                'failedUrl' => $gateway->getFailedUrl(),
                'returnUrl' => $gateway->getReturnUrl(),
            ]);
        } catch (Exception $e) {
            $order->update(['payment_status' => 'Unpaid']);

            $order->delete();

            return redirect()
                ->route('front.esewa.submit', [$order->id])
                ->with('message', sprintf("Your payment failed with error: %s", $e->getMessage()));
        }

        if ($response->isRedirect()) {
            $response->redirect();
        }

        return redirect()->back()->with([
            'message' => "We're unable to process your payment at the moment, please try again..",
        ]);
    }



    /**
     * @param $order_id
     * @param Request $request
     */
    public function completed(Request $request)
    {
        $user = Auth::user();
        $setting = Setting::first();
        $cart = Session::get('cart');

        $input = $request->all();

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

        $gateway = with(new Esewa);

        $response = $gateway->verifyPayment([
            'amount' => $gateway->formatAmount($total_amount),
            'referenceNumber' => $request->get('refId'),
            'productCode' => $request->get('oid'),
        ]);

        $oid = $request->get('oid');

        if ($response->isSuccessful()) {

            // dd($oid);

            $order = Order::where('txnid', $oid)->first();
            $transaction_id = $request->get('refId');

            if (isset($order)) {
                $data['payment_status'] = 'Paid';
                $data['txnid'] = $transaction_id;

                $order->update($data);

                TrackOrder::create([
                    'title' => 'Pending',
                    'order_id' => $order->id,
                ]);

                $user = Auth::user();
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


                PriceHelper::Transaction($order->id, $order->transaction_number, $user->email, PriceHelper::OrderTotal($order));
                PriceHelper::LicenseQtyDecrese($cart);

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

                Session::put('order_id', $order->id);
                Session::forget('cart');
                Session::forget('coupon');
                Session::forget('discount');
                if ($discount) {
                    $coupon_id = $discount['code']['id'];
                    $get_coupon = PromoCode::findOrFail($coupon_id);
                    $get_coupon->no_of_times -= 1;
                    $get_coupon->update();
                }
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
            } else {
                return redirect()->route('front.checkout.cancle')->with([
                    'message' => 'The payment has been declined. Order is now Pending and is Unpaid.',
                ]);
            }
        }
        return redirect()->route('front.esewa.notify')->with([
            'message' => 'Thank you for your shopping, However, the payment has been declined.',
        ]);
    }

    /**
     * @param $order_id
     * @param Request $request
     */
    public function failed($order_id, Request $request)
    {
        $order = Order::findOrFail($order_id);

        return view('front.checkout.billing', compact('order'));
    }
}
