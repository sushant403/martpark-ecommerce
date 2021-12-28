<script>
    var config = {
        // replace the publicKey with yours
        "publicKey": "{{ config('services.khalti.khalti_public_key') }}",
        "productIdentity": "1234567890",
        "productName": "{{env('APP_NAME')}}",
        "productUrl": "{{env('APP_URL')}}",
        "paymentPreference": [
            "KHALTI", "EBANKING", "MOBILE_BANKING", "CONNECT_IPS", "SCT",
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
                    beforeSend: function (res) {
                    $("body").addClass("loading");
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
                                window.location.href = "{{ route('front.checkout.success') }}";
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
                console.log('Widget is Closing');
                window.location.reload();
            }
        }
    };
  
    var checkout = new KhaltiCheckout(config);
    var btn = document.getElementById("payment-button");
    btn.onclick = function () {
        // minimum transaction amount must be 10, i.e 1000 in paisa.
        checkout.show({amount: {{round($grand_total * PriceHelper::setCurrencyValue(),2)}} * 100});
    }
</script>