
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Product Detail</title>
<!-- All CSS -->
<link href="{{ asset('css/all.css') }}" rel="stylesheet">
<!-- slicknav CSS -->
<link href="{{ asset('css/slicknav.css') }}" rel="stylesheet">
<!-- Style CSS -->
<link href="{{ asset('css/custom.css') }}" rel="stylesheet">
<!-- responsive css -->
<link href="{{ asset('css/responsive.css') }}" rel="stylesheet">
<!-- Google Fonts CSS -->
<link href="{{ asset('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap') }}" rel="stylesheet">
<link href="{{ asset('https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap') }}" rel="stylesheet">
<link rel="preconnect" href="{{ asset('https://fonts.gstatic.com') }}">
<link href="{{ asset('https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap') }}" rel="stylesheet">

</head>

<body class="responsive">

    @include('frontend.layouts.headerNew')
    @include('frontend.layouts.notification')


    <!-- bannerSec start -->
<div class="bannerSec innerBannerSec">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="{{asset('images/bannerBg.jpg')}}" alt="bannerBg" class="img-responsive">
        <div class="carousel-caption">
          <div class="container">
            <div class="bannerCntnt">
              <div class="row flexRow">
                <div class="col-md-8 col-sm-8 col-xs-12">
                  <div class="cntnt">
                    <h1 class="wow fadeInLeft" data-wow-delay="0.2s" data-wow-duration="2s">Product Detail</h1>                  </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- bannerSec end -->

<!-- Slider Section Starts Here -->

<!-- Slider Section Ends Here -->

<!-- proDetPg start -->


<main class="proDetPg">
  <div class="proDetSec">
    <div class="container">
      <div class="row flexRow">
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="proDetImg">
            <img src="{{url('../storage/app/'.$product_details->photo)}}" class="img-responsive" alt="proDetImg">
            <a href="{{url('../storage/app/'.$product_details->photo)}}" data-fancybox>
              <i class="fa fa-expand" aria-hidden="true"></i>
           </a>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="proDetCntnt">
            <h2 class="pull-left">{{ $product_details->title }}</h2>
            <h3 class="pull-right">


            ${{number_format($product_details->price)}}
        </span>



            </h3>
            <div class="clearfix"></div>

            <p>{{ $product_details->summary }}</p>
            <form action="{{route('single-add-to-cart')}}" method="POST">
                @csrf
                    <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        {{-- <div class="qty-input quantitySec">
                        <button class="qty-count qty-count--minus" data-action="minus" type="button"><i class="fa fa-minus"></i></button>
                        <input type="hidden" name="slug" value="{{$product_details->slug}}">

                        <input class="product-qty" type="number" name="quant[1]" min="1" max="200" value="1">
                        <button class="qty-count qty-count--add" data-action="add" type="button"><i class="fa fa-plus"></i></button>
                        </div> --}}

                        <div class="qty-input quantitySec">
                          <input type="hidden" name="slug" value="{{$product_details->slug}}">

                          <button class="qty-count qty-count--minus" data-action="minus" type="button"><i class="fa fa-minus"></i></button>
                          <input class="product-qty" type="number" name="quant[1]" min="1" max="200" value="1">
                          <button class="qty-count qty-count--add" data-action="add" type="button"><i class="fa fa-plus"></i></button>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-12">
                        <div class="cartBtn">
                        <input type="submit" class="webBtn" value="Add to Cart" >
                        </div>
                    </div>
                    </div>
            </form>



          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<!-- proDetPg end -->

<!-- ourProSec end -->

<!-- imgSec start -->
{{-- <div class="imgSec">
  <img src="{{ asset('images/bgImg.jpg') }}" class="img-responsive" alt="bgImg">
</div> --}}
<!-- imgSec end -->

<!-- footer start -->
@include('frontend.layouts.footerNew')
<!-- footer end -->
<script type="text/javascript">
    $(window).on('load', function() {
        $('#myModal').modal('show');
    });
</script>
</body>
</html>
