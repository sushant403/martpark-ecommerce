<script>
    var config = {
        // replace the publicKey with yours
        "publicKey": "{{ config('services.khalti.khalti_public_key') }}",
        "productIdentity": "1234567890",
        "productName": "Dragon",
        "productUrl": "http://gameofthrones.wikia.com/wiki/Dragons",
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
                    url : "{{ route('khalti.verifyPayment') }}",
                    data: {
                        token : payload.token,
                        amount : payload.amount,
                        "_token" : "{{ csrf_token() }}"
                    },
                    success : function(res){
                        $.ajax({
                            type : "POST",
                            url : "{{ route('khalti.storePayment') }}",
                            data : {
                                response : res,
                                "_token" : "{{ csrf_token() }}"
                            },
                            success: function(res){
                                console.log('transaction successfull');
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