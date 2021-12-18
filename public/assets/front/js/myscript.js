$(function ($) {
    "use strict";

    function lazy (){
        $(".lazy").Lazy({
            scrollDirection: 'vertical',
            effect: "fadeIn",
            effectTime:1000,
            threshold: 0,
            visibleOnly: false,  
            onError: function(element) {
                console.log('error loading ' + element.data('src'));
            }
        });
    }


    $(document).ready(function () {

        lazy();
    
        // announcement banner magnific popup
        if (mainbs.is_announcement == 1) {
            $('.announcement-banner').magnificPopup({
                type: 'inline',
                midClick: true,
                mainClass: 'mfp-fade',
                callbacks: {
                    open: function () {
                        $.magnificPopup.instance.close = function () {
                            // Do whatever else you need to do here
                            sessionStorage.setItem("announcement", "closed");
                            // console.log(sessionStorage.getItem('announcement'));
    
                            // Call the original close method to close the announcement
                            $.magnificPopup.proto.close.call(this);
                        };
                    }
                }
            });
        }

        // Mobile Category
        $('#category_list .has-children .category_search span').on('click', function(e){
            e.preventDefault();
        });

        // Toggle mobile serch
        $('.close-m-serch').on('click', function(){
            $('.topbar .search-box-wrap').toggleClass('d-none');
        });
    

        // Flash Deal Area Start
        var $hero_slider_main = $(".hero-slider-main");
        $hero_slider_main.owlCarousel({
            navText: [],
            nav: true,
            dots: true,
            loop: true,
            autoplay: true,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            items: 1,
        });

        // heroarea-slider
            var $testimonialSlider = $('.heroarea-slider');
            $testimonialSlider.owlCarousel({
            loop: true,
            navText: [],
            nav: true,
            nav: true,
            dots:false,
            autoplay: true,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
            responsive: {
                0: {
                    items: 1
                },
                576: {
                    items: 1
                },
                950: {
                    items: 1
                },
                960: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        });


        // popular_category_slider
        var $popular_category_slider = $(".popular-category-slider");
        $popular_category_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            loop: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            margin: 15,
            responsive: {
                0: {
                    items: 2,
                },
                576: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 4,
                },
                1200: {
                    items: 4,
                },
                1400: {
                    items: 5
                }
            },
        });



        // Flash Deal Area Start
        var $flash_deal_slider = $(".flash-deal-slider");
        $flash_deal_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            margin: 15,
            responsive: {
                0: {
                    items: 1,
                    margin: 0,
                },
                576: {
                    items: 2,
                    margin: 0,
                },
                768: {
                    items: 3,
                    margin: 0,
                },
                992: {
                    items: 4,
                    margin: 0,
                },
                1200: {
                    items: 4,
                    margin: 0,
                },
                1400: {
                    items: 1,
                },
            },
        });


        // col slider
        var $col_slider = $(".newproduct-slider");
        $col_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            loop: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            margin: 15,
            responsive: {
                0: {
                    items: 1,
                },
                530: {
                    items: 1,
                },
            },
        });

        // col slider 2
        var $col_slider2 = $(".toprated-slider");
        $col_slider2.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            loop: true,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            margin: 15,
            responsive: {
                0: {
                    items: 1,
                },
                530: {
                    items: 1,
                },
            },
        });

        // newproduct-slider Area Start
        var $newproduct_slider = $(".features-slider");
        $newproduct_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            loop: false,
            margin: 15,
            responsive: {
                0: {
                    items: 2,
                },
                576: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 4,
                },
                1200: {
                    items: 4,
                },
                1400: {
                    items: 5
                }
            },
        });

        // home-blog-slider
        var $home_blog_slider = $(".home-blog-slider");
        $home_blog_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            loop: false,
            margin: 15,
            responsive: {
                0: {
                    items: 1,
                },
                576: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 3,
                },
                1200: {
                    items: 3,
                },
                1400: {
                    items: 4,
                }
            },
        });


        // brand-slider
        var $brand_slider = $(".brand-slider");
        $brand_slider.owlCarousel({
            navText: [],
            nav: true,
            dots: false,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            loop: true,
            margin: 0,
            responsive: {
                0: {
                    items: 2,
                },
                575: {
                    items: 3,
                },
                790: {
                    items: 4,
                },
                1100: {
                    items: 4,
                },
                1200: {
                    items: 4,
                },
                1400: {
                    items: 5,
                }
            },
        });

        // toprated-slider Area Start
        var $relatedproductsliderv = $(".relatedproductslider");
        $relatedproductsliderv.owlCarousel({
            nav: false,
            dots: true,
            autoplayTimeout: 6000,
            smartSpeed: 1200,
            margin: 15,
            responsive: {
                0: {
                    items: 2,
                },
                576: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 4,
                },
                1200: {
                    items: 4,
                },
                1400: {
                    items: 5
                }
            },
        });


        $('.left-category-area .category-header').on('click', function(){
            $('.left-category-area .category-list').toggleClass("active")
        });
  

        $("[data-date-time]").each(function () {
            var $this = $(this),
                finalDate = $(this).attr("data-date-time");
            $this.countdown(finalDate, function (event) {
                $this.html(
                    event.strftime(
                        "<span>%D<small>Days</small></span></small> <span>%H<small>Hrs</small></span> <span>%M<small>Min</small></span> <span>%S<small>Sec</small></span>"
                    )
                );
            });
        });

        // Subscriber Form Submit
        $(document).on("submit", ".subscriber-form", function (e) {
            e.preventDefault();
            var $this = $(this);
            var submit_btn = $this.find("button");
            submit_btn.find(".fa-spin").removeClass("d-none");
            $this.find("input[name=email]").prop("readonly", true);
            submit_btn.prop("disabled", true);
            $.ajax({
                method: "POST",
                url: $(this).prop("action"),
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    if (data.errors) {
                        for (var error in data.errors) {
                            dangerNotification(data.errors[error]);
                        }
                    } else {
                        if ($this.hasClass("subscription-form")) {
                            $(".close-popup").click();
                        }
                        successNotification(data);
                        $this.find("input[name=email]").val("");
                    }
                    submit_btn.find(".fa-spin").addClass("d-none");
                    $this.find("input[name=email]").prop("readonly", false);
                    submit_btn.prop("disabled", false);
                },
            });
        });
        // Subscriber Form Submit ENDS

        // Notifications
        function successNotification(title) {
            $.notify(
                {
                    title: ` <strong>${title}</strong>`,
                    message: "",
                    icon: "fas fa-check-circle",
                },
                {
                    // settings
                    element: "body",
                    position: null,
                    type: "success",
                    allow_dismiss: true,
                    newest_on_top: false,
                    showProgressbar: false,
                    placement: {
                        from: "top",
                        align: "right",
                    },
                    offset: 20,
                    spacing: 10,
                    z_index: 1031,
                    delay: 5000,
                    timer: 1000,
                    url_target: "_blank",
                    mouse_over: null,
                    animate: {
                        enter: "animated fadeInDown",
                        exit: "animated fadeOutUp",
                    },
                    onShow: null,
                    onShown: null,
                    onClose: null,
                    onClosed: null,
                    icon_type: "class",
                }
            );
        }

        function dangerNotification(title) {
            $.notify(
                {
                    // options
                    title: ` <strong>${title}</strong>`,
                    message: "",
                    icon: "fas fa-exclamation-triangle",
                },
                {
                    // settings
                    element: "body",
                    position: null,
                    type: "danger",
                    allow_dismiss: true,
                    newest_on_top: false,
                    showProgressbar: false,
                    placement: {
                        from: "top",
                        align: "right",
                    },
                    offset: 20,
                    spacing: 10,
                    z_index: 1031,
                    delay: 5000,
                    timer: 1000,
                    url_target: "_blank",
                    mouse_over: null,
                    animate: {
                        enter: "animated fadeInDown",
                        exit: "animated fadeOutUp",
                    },
                    onShow: null,
                    onShown: null,
                    onClose: null,
                    onClosed: null,
                    icon_type: "class",
                }
            );
        }
        // Notifications Ends


    

        $(document).on('click','.list-view',function(){
            let viewCheck = $(this).attr('data-step');
            let check = $(this);
            $('.list-view').removeClass('active');
            $('#search_form #view_check').val(viewCheck);
            $("#search_button").click();         
            check.addClass('active');
        })


        // category wise product 
        $(document).on('click','.category_get,.product_get',function(){
        
            $('.'+this.className).removeClass('active');
            $(this).addClass('active');
            let geturl = $(this).attr('data-href');
            let view   = $(this).attr('data-target');
 
            $('.'+view).removeClass('d-none');

            $.get(geturl,function(response){
                $('#'+view).html(response);
                $('.'+view).addClass('d-none');

                if(response.data === undefined){
                    $('.'+view+'_not_found').removeClass('d-none');
                }else{
                    $('.'+view+'_not_found').addClass('d-none');
                }
                
            });
        })



$(document).on('click','.wishlist_store',function(e){
    e.preventDefault();
    let wishlist_url = $(this).attr('href');
    $.get(wishlist_url,function(response){
        if(response.status == 0){
            location.href = response.link;
        }else if(response.status == 2){
            dangerNotification(response.message);
        }else{
            $('.wishlist1').addClass('d-none');
            $('.wishlist2').removeClass('d-none');
            $('.wishlist_count').text(response.count)
            successNotification(response.message);
        }
    })
})


        // catalog js start
        $(document).on("click", ".brand-select", function () {
            $('.brand-select').prop('checked',false);
            let brand = $(this).val();
            $(this).prop('checked',true);
            $("#search_form #brand").val(brand);
            removePage();
            $("#search_button").click();
        });

        $(document).on("click", "#price_filter", function () {
            let min_price = parseInt($(".min_price").html());
            let max_price = parseInt($(".max_price").html());
            $("#search_form #minPrice").val(min_price);
            $("#search_form #maxPrice").val(max_price);
            removePage();
            $("#search_button").click();
        });

        $(document).on("change", "#sorting", function () {
            let sorting = $(this).val();
            $("#search_form #sorting").val(sorting);
            removePage();
            $("#search_button").click();
        });

        $(document).on("click", ".widget_price_filter", function () {
            let filter_prices = $(this).val();
            if(filter_prices){
                filter_prices = filter_prices.split(",");
                $("#search_form #minPrice").val(filter_prices[0]);
                $("#search_form #maxPrice").val(filter_prices[1]);
            }else{
                $("#search_form #minPrice").val('');
                $("#search_form #maxPrice").val('');
            }
            removePage();
            $("#search_button").click();
        });

        

        $(document).on('click','#quick_filter li a',function(){
            $('#quick_filter li').removeClass('active');
            let filter = '';
            $(this).parent().addClass('active');
           if($(this).attr('data-href')){
             filter = $(this).attr('data-href');
           }else{
             filter = $(this).attr('data-href');
           }
           $("#search_form #quick_filter").val(filter);
           removePage();
           $("#search_button").click();
        });

        function removePage(){
            $("#search_form #page").val('');
        }

        $(document).on('click','#category_list li a.category_search',function(){
            $('#category_list li').removeClass('active');
            let category = '';
            $(this).parent().addClass('active');
           if($(this).attr('data-href')){
            category = $(this).attr('data-href');
           }else{
            category = $(this).attr('data-href');
           }
           removePage();
           $("#search_form #childcategory").val('');
           $("#search_form #subcategory").val('');
           $("#search_form #category").val(category);
           $("#search_button").click();
        });


        $(document).on('click','#subcategory_list li a.subcategory',function(){
            $('#subcategory_list li').removeClass('active');
            let category = '';
            $(this).parent().addClass('active');
           if($(this).attr('data-href')){
            category = $(this).attr('data-href');
           }else{
            category = $(this).attr('data-href');
           }
           $("#search_form #childcategory").val('');
           $("#search_form #subcategory").val(category);
           $("#search_button").click();
        });

        $(document).on('click','#childcategory_list li a.childcategory',function(){
            $('#childcategory_list li').removeClass('active');
            let childcategory = '';
            $(this).parent().addClass('active');
           if($(this).attr('data-href')){
            childcategory = $(this).attr('data-href');
           }else{
            childcategory = $(this).attr('data-href');
           }
           removePage();
           $("#search_form #childcategory").val(childcategory);
           $("#search_button").click();
        });

        $(document).on('click','#item_pagination .page-item .page-link',function(e){
            e.preventDefault();
           
            let pagination = $(this).text();
            $("#search_form #page").val(pagination);
            $("#search_button").click();
        })

     


       

        $(document).on('click','.option',function(){
            
            let option = [];
            $(this).parent().addClass('active');
            $( "input.option" ).each(function( index ) {
                if($( this ).is(':checked')){
                    option.push($( this ).val());
                }
              });
           removePage();
           $("#search_form #option").val(option);
           $("#search_button").click();
        });

        $(document).on('submit','#search_form',function(e){
            e.preventDefault();
            
            let loader  = `
            <div id="view_loader_div" class="">
            <div class="product-not-found">
              <img class="loader_image" src="${mainurl+'/assets/images/ajax_loader.gif'}" alt="">
            </div>
          </div>
            `;
            $('#list_view_ajax').html(loader);
            
             let form_url = $(this).attr('action');
             let method   =  $(this).attr('method');
             $.ajax({
              type: method,
              url: form_url,
              data: $(this).serialize(), 
              success: function(data)
              {
                window.scrollTo(0, 0);
                $('#list_view_ajax').html(data);
              }
            });
   
         })

        // catalog script end

        // rating from submit
        $(".ratingForm").on("submit", function (e) {
            e.preventDefault();
            var $this = $(this);
            var submit_btn = $this.find("button");
            submit_btn.find(".fa-spin").removeClass("d-none");
            $this.find("textarea").prop("readonly", true);
            submit_btn.prop("disabled", true);
            $.ajax({
                method: "POST",
                url: $(this).prop("action"),
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    if (data.errors) {
                        for (var error in data.errors) {
                            dangerNotification(data.errors[error]);
                        }
                    } else {
                        successNotification(data);
                        $this.find("textarea").val("");
                    }

                    $this.find("textarea").prop("readonly", false);
                    submit_btn.prop("disabled", false);
                    $(".modal_close").click();
                },
            });
        });
        // compare script start

        $(document).on("click", ".product_compare", function () {
            let compare_url = $(this).attr("data-target");
            $.get(compare_url, function (data) {
                if (data.status == 1) {
                    successNotification(data.message);
                } else {
                    dangerNotification(data.message);
                }
                $(".compare_count").text(data.compare_count);
            });
        });

        $(document).on("click", ".compare_remove", function () {
            let removeUrl = $(this).attr("data-href");
            $.get(removeUrl, function () {
                location.reload();
            });
        });
        // compare script end

        // cart script start
        $(document).on("change", ".attribute_option", function () {
            getData();
        });
        $(document).on("change", "#quantity", function () {
            getData();
        });

        $(document).on("click", "#add_to_cart", function () {
            getData(1);
        });
        $(document).on("click", "#but_to_cart", function () {
            getData(1,0,0,0,1);
        });
        $(document).on("click", ".add_to_single_cart", function () {
            getData(1, $(this).attr("data-target"));
        });

        $(document).on("change", ".update_cart_qty", function () {
            let cartQty = $(this).val();
            let item_key = $(this).attr("data-id");
            getData(1, $(this).attr("data-target"),item_key, cartQty);
        });

        function getData(status = 0, check = 0, item_key = 0, qty = 0,add_type =0) {
            let itemId;
            let type;
            if (check != 0) {
                itemId = check;
                type = 1;
            } else {
                itemId = $("#item_id").val();
                type = 0;
            }


            let options_prices = optionPrice();
            let totalOptionPrice = parseFloat(optionPriceSum(options_prices));
            let attribute_ids = $(".attribute_option :selected")
                .map(function (i, el) {
                    return $(el).attr("data-type");
                })
                .get();
            let options_ids = $(".attribute_option :selected")
                .map(function (i, el) {
                    return $(el).attr("data-href");
                })
                .get();

            let quantity;
            quantity = parseInt(getQuantity());
            if(isNaN(quantity)) {
                 quantity = 1;
            }
            if(qty != 0){
                quantity = qty;
            }
            
            let setCurrency = $("#set_currency").val();
            let currency_direction = $("#currency_direction").val();
            
            let demoPrice = parseFloat($("#demo_price").val());
            let subPrice = parseFloat(demoPrice + totalOptionPrice);
            let mainPrice = subPrice * quantity;
            if(currency_direction == 0){
                $('#main_price').html(parseFloat(mainPrice).toFixed(2)+setCurrency);
            }else{
                $('#main_price').html(setCurrency+parseFloat(mainPrice).toFixed(2));
            }
            

            if (status == 1) {
                let addToCartUrl = `${mainurl}/product/add/cart?item_id=${itemId}&options_ids=${options_ids}&attribute_ids=${attribute_ids}&quantity=${quantity}&type=${type}&item_key=${item_key}&add_type=${add_type}`;
                $.ajax({
                    type: "GET",
                    url: addToCartUrl,
                    success: function (data) {
                       console.log(data);
                        $(".cart_count").text(data.qty);
                        $(".cart_view_header").load(
                            $("#header_cart_load").attr("data-target")
                        );
                        if (qty) {
                            $("#view_cart_load").load(
                                $("#cart_view_load").attr("data-target")
                            );
                        }
                        if(add_type == 1){
                            location.href = mainurl+'/cart';
                        }else{
                            successNotification(data.message);
                        }
                        
                    },
                });
            }
        }

        function optionPrice() {
            let option_prices = $(".attribute_option :selected")
                .map(function (i, el) {
                    return $(el).attr("data-target");
                })
                .get();
            return option_prices;
        }

        function getQuantity() {
            let quantity = $("#quantity :selected")
                .map(function (i, el) {
                    return $(el).val();
                })
                .get();
            return quantity;
        }

        function optionPriceSum(options_prices) {
            var price = 0;
            $.each(options_prices, function (i, v) {
                price += parseFloat(v);
            });
            return price;
        }

        // cart script end
        $(document).on("submit", "#coupon_form", function (e) {
            e.preventDefault();

            var form = $(this);
            var url = form.attr("action");
            $.ajax({
                type: "POST",
                url: url,
                data: form.serialize(),
                success: function (data) {
                    if (data.status == true) {
                        successNotification(data.message);
                        $("#view_cart_load").load(
                            $("#cart_view_load").attr("data-target")
                        );
                    } else {
                        dangerNotification(data.message);
                    }
                },
            });
        });

        // user panel script start
        $(document).on("change", "#avater", function () {
            var file = event.target.files[0];
            var reader = new FileReader();
            reader.onload = function (e) {
                $("#avater_photo_view").attr("src", e.target.result);
            };
            reader.readAsDataURL(file);
        });


        $('#submit_number').on('click',function(e){
            var link = $(this).data('href') + '?order_number='+$('#order_number').val();
            $('#track-order').load(link);
            return false;
        });

    });

    
    $(window).on('load',function () {
        
    });
    

});



$(window).on('load', function (event) {

    // Preloader
    $('#preloader').fadeOut(500);

    // announcement
    if (mainbs.is_announcement == 1) {
        // trigger announcement banner base on sessionStorage
        let announcement = sessionStorage.getItem('announcement') != null ? false : true;
        if (announcement) {
            setTimeout(function () {
                $('.announcement-banner').trigger('click');
            }, mainbs.announcement_delay * 1000);
        }
    }

});


