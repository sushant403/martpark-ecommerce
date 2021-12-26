@extends('master.front')
@section('title')
    {{__('Payment')}}
@endsection
@section('content')
    <!-- Page Title-->
<div class="page-title">
    <div class="container">
      <div class="column">
        <ul class="breadcrumbs">
          <li><a href="{{route('front.index')}}">{{ __('Home') }}</a> </li>
          <li class="separator"></li>
          <li>{{ __('Review your order and pay') }}</li>
        </ul>
      </div>
    </div>
  </div>
  <!-- Page Content-->
  <div class="container padding-bottom-3x mb-1  checkut-page">
    <div class="row">
      <!-- Payment Methode-->
      <div class="col-xl-9 col-lg-8">
        <div class="steps flex-sm-nowrap mb-5"> <a class="step" href="{{route('front.checkout.billing')}}">
          <h4 class="step-title"><i class="icon-check-circle"></i>1. {{__('Invoice to')}}:</h4>
          </a> <a class="step" href="{{route('front.checkout.shipping')}}">
          <h4 class="step-title"><i class="icon-check-circle"></i>2. {{__('Ship to')}}:</h4>
          </a> <a class="step active" href="{{route('front.checkout.payment')}}">
          <h4 class="step-title">3. {{__('Review and pay')}}</h4>
          </a>
        </div>
        <div class="card">
            <div class="card-body">
                <h6 class="pb-2">{{__('Review Your Order')}} :</h6>
        <hr>
        <div class="row padding-top-1x  mb-4">
          <div class="col-sm-6">
            <h6>{{__('Invoice address')}} :</h6>
            @php

                $ship = Session::get('shipping_address');
                $bill = Session::get('billing_address');
            @endphp
            <ul class="list-unstyled">
              <li><span class="text-muted">{{__('Name')}}: </span>{{$ship['ship_first_name']}} {{$ship['ship_last_name']}}</li>
              @if (PriceHelper::CheckDigital())
              <li><span class="text-muted">{{__('Address')}}: </span>{{$ship['ship_address1']}} {{$ship['ship_address2']}}</li>
              @endif
              <li><span class="text-muted">{{__('Phone')}}: </span>{{$ship['ship_phone']}}</li>
            </ul>
          </div>
          <div class="col-sm-6">
            <h6>{{__('Shipping address')}} :</h6>
            <ul class="list-unstyled">
              <li><span class="text-muted">{{__('Name')}}: </span>{{$bill['bill_first_name']}} {{$bill['bill_last_name']}}</li>
              @if (PriceHelper::CheckDigital())
              <li><span class="text-muted">{{__('Address')}}: </span>{{$ship['ship_address1']}} {{$ship['ship_address2']}}</li>
              @endif
              <li><span class="text-muted">{{__('Phone')}}: </span>{{$bill['bill_phone']}}</li>
            </ul>
          </div>
        </div>

        <h6>{{__('Pay with')}} :</h6>
        <div class="row mt-4">
          <div class="col-12">
            <div class="payment-methods">
              @php
                  $gateways = DB::table('payment_settings')->whereStatus(1)->get();
              @endphp
              @foreach ($gateways as $gateway)
              @if (PriceHelper::CheckDigitalPaymentGateway())
              @if ($gateway->unique_keyword != 'cod')
              <div class="single-payment-method">
                <a class="text-decoration-none" href="#" data-bs-toggle="modal" data-bs-target="#{{$gateway->unique_keyword}}">
                    <img class="" src="{{asset('assets/images/'.$gateway->photo)}}" alt="{{$gateway->name}}" title="{{$gateway->name}}">
                    <p>{{$gateway->name}}</p>
                </a>
              </div>
              @endif

              @else
              <div class="single-payment-method">
                <a class="text-decoration-none" href="#" data-bs-toggle="modal" data-bs-target="#{{$gateway->unique_keyword}}">
                    <img class="" src="{{asset('assets/images/'.$gateway->photo)}}" alt="{{$gateway->name}}" title="{{$gateway->name}}">
                    <p>{{$gateway->name}}</p>
                </a>
              </div>
              @endif

              @endforeach

              <div class="single-payment-method">
                <a class="text-decoration-none" href="#" data-bs-toggle="modal" data-bs-target="#esewa">
                    <img class="" src="https://blog.esewa.com.np/assets/upload/images/esewa%20logo%200001-01.png" alt="eSewa-Payment" title="Pay via eSewa Payment Gateway">
                    <p>eSewa Online Payment</p>
                </a>
              </div>

              <div class="single-payment-method">
                {{-- <a class="text-decoration-none border-0" href="#" data-bs-toggle="modal" data-bs-target="#khalti"> --}}
                <button class="text-decoration-none border-0" id="payment-button">
                    <img class="" src="https://www.nepalitimes.com/wp-content/uploads/2021/07/Khalti-collaborations.png" alt="Khalti-Payment" title="Pay via Khalti Gateway">
                    <p>Khalti Payment</p>
                </button>
              </div>

            </div>
          </div>
        </div>

        </div>
        </div>

        @include('includes.checkout_modal')

      </div>
      @include('includes.checkout_sitebar',$cart)
    </div>
  </div>
@endsection

@section('styleplugins')
<script src="https://khalti.s3.ap-south-1.amazonaws.com/KPG/dist/2020.12.17.0.0.0/khalti-checkout.iffe.js"></script>
@endsection

@section('script')
<script>
  var config = {
      // replace the publicKey with yours
      "publicKey": "{{ config('services.khalti.khalti_public_key') }}",
      "productIdentity": "1234567890",
      "productName": "Dragon",
      "productUrl": "https://projects.sushantp.com.np/martpark",
      "paymentPreference": [
          "KHALTI",
          "EBANKING",
          "MOBILE_BANKING",
          "CONNECT_IPS",
          "SCT",
          ],
      "eventHandler": {
          onSuccess (payload) {
              // hit merchant api for initiating verfication
              $.ajax({
                  type : 'POST',
                  url : "{{ route('front.khalti.submit') }}",
                  data: {
                      token : payload.token,
                      amount : payload.amount,
                      "_token" : "{{ csrf_token() }}"
                  },
                  success : function(res){
                      $.ajax({
                          type : "POST",
                          url : "{{ route('front.khalti.notify') }}",
                          data : {
                              response : res,
                              "_token" : "{{ csrf_token() }}"
                          },
                          success: function(res){
                              console.log('Transaction Successfull');
                          }
                      });
                      console.log(res);
                  }
              });
              console.log(payload);
          },
          onError (error) {
              console.log(error);
          },
          onClose () {
              console.log('widget is closing');
          }
      }
  };

  var checkout = new KhaltiCheckout(config);
  var btn = document.getElementById("payment-button");
  btn.onclick = function () {
      // minimum transaction amount must be 10, i.e 1000 in paisa.
      checkout.show({amount: 1000});
  }
</script>
@endsection
