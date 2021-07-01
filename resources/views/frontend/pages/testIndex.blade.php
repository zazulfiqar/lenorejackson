<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home</title>
<!-- All CSS -->
<link href="css/all.css" rel="stylesheet">
<!-- slicknav CSS -->
<link href="css/slicknav.css" rel="stylesheet">
<!-- Style CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- responsive css -->
<link href="css/responsive.css" rel="stylesheet">
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
<div class="bannerSec">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/bannerBg.jpg" alt="bannerBg" class="img-responsive">
        <div class="carousel-caption">
          <div class="container">
            <div class="bannerCntnt">
              <div class="row flexRow">
                <div class="col-md-8 col-sm-8 col-xs-12">
                  <div class="cntnt">
                    <h4>PROVIDE A PROFESSIONAL & CONVENIENT ONLINE SHOPPING</h4>
                    <h1 class="wow fadeInLeft" data-wow-delay="0.2s" data-wow-duration="2s">KEY COUTURE STORE</h1>
                    <a href="#" class="webBtn wow fadeInLeft" data-wow-delay="0.6s" data-wow-duration="2s">SHOP NOW</a>
                  </div>
                  <div class="socialIcons">
                    <ul class="list-inline">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6">
                  <div class="bannerImg">
                    <img src="images/bannerImg.jpg" alt="bannerImg" class="img-responsive wow zoomIn" data-wow-delay="0.2s" data-wow-duration="2s">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="item">
        <img src="images/bannerBg.jpg" alt="bannerBg" class="img-responsive">
        <div class="carousel-caption">
          <div class="container">
            <div class="bannerCntnt">
              <div class="row flexRow">
                <div class="col-md-8 col-sm-8 col-xs-12">
                  <div class="cntnt">
                    <h4>PROVIDE A PROFESSIONAL & CONVENIENT ONLINE SHOPPING</h4>
                    <h1 class="wow fadeInLeft" data-wow-delay="0.2s" data-wow-duration="2s">KEY COUTURE STORE</h1>
                    <a href="#" class="webBtn wow fadeInLeft" data-wow-delay="0.6s" data-wow-duration="2s">SHOP NOW</a>
                  </div>
                  <div class="socialIcons">
                    <ul class="list-inline">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6">
                  <div class="bannerImg">
                    <img src="images/bannerImg.jpg" alt="bannerImg" class="img-responsive wow zoomIn" data-wow-delay="0.2s" data-wow-duration="2s">
                  </div>
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


<!-- aboutSec start -->
<div class="aboutSec">
  <div class="container">
    <div class="row flexRow">
      <div class="col-md-5 col-sm-5 col-xs-12">
        <div class="aboutImg">
          <img src="images/aboutImg.jpg" class="img-responsive" alt="aboutImg">
        </div>
      </div>
      <div class="col-md-7 col-sm-7 col-xs-12">
        <div class="aboutCntnt">
          <h2>ABOUT US</h2>
          <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?</p>
          <a href="{{route('about-us')}}" class="webBtn">SHOP NOW</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- aboutSec end -->


<!-- clothingSec start -->
<div class="clothingSec">
  <div class="container">
    <div class="head">
      <h2>Clothing</h2>
      <img src="images/h2Before.png" class="img-responsive" alt="h2Before">
    </div>
    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12 col">
        <div class="cloth tshirt">
          <img src="images/cloth-1.jpg" class="img-responsive" alt="cloth">
          <h6><a href="clothing.html">t-shirt</a></h6>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="row">

          @foreach ($category  as $cat )

          {{-- @php
              print_r($cat);
          @endphp --}}

          <div class="col-md-6 col-sm-6 col-xs-12 col">
            <div class="cloth sweater">
              <img src="{{url('../storage/app/'.$cat->photo)}}" class="img-responsive" alt="cloth">
              <h6><a href="{{route('category',$cat->id)}}">{{ $cat->title }}</a></h6>
            </div>
          </div>
      
          @endforeach
   
     
        </div>
      </div>
    </div>
    <a href="clothing.html" class="webBtn">SEE ALL</a>
  </div>
</div>
<!-- clothingSec end -->


<!-- accessoriesSec start -->
<div class="accessoriesSec">
  <div class="container">
    <div class="row">
      <div class="col-md-7 col-sm-7 col-xs-12 centerCol">
        <h2>Accessories</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12 col">
        <div class="accessories earing">
          <img src="images/access-1.jpg" class="img-responsive" alt="access">
          <h6><a href="accessories.html">earings</a></h6>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12 col">
            <div class="accessories bracelet">
              <img src="images/access-2.jpg" class="img-responsive" alt="access">
              <h6><a href="accessories.html">Bracelet</a></h6>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12 col">
            <div class="accessories watch">
              <img src="images/access-3.jpg" class="img-responsive" alt="access">
              <h6><a href="accessories.html">Watch</a></h6>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12 col">
            <div class="accessories glasses">
              <img src="images/access-4.jpg" class="img-responsive" alt="access">
              <h6><a href="accessories.html">Glasses</a></h6>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12 col">
            <div class="accessories bag">
              <img src="images/access-4.jpg" class="img-responsive" alt="access">
              <h6><a href="accessories.html">bag</a></h6>
            </div>
          </div>
        </div>
      </div>
    </div>
    <a href="accessories.html" class="webBtn">SEE ALL</a>
  </div>
</div>
<!-- clothingSec end -->


<!-- eventSec start -->
<div class="eventSec">
  <div class="container">
    <div class="head">
      <h2>Spacial Event</h2>
      <img src="images/h2Before.png" class="img-responsive" alt="h2Before">
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="eventImg">
          <a href="specialEvent.html">
            <img src="images/eventImg-1.jpg" class="img-responsive" alt="eventImg">
          </a>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="eventImg">
          <a href="specialEvent.html">
            <img src="images/eventImg-2.jpg" class="img-responsive" alt="eventImg">
          </a>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="eventImg">
          <a href="specialEvent.html">
            <img src="images/eventImg-3.jpg" class="img-responsive" alt="eventImg">
          </a>
        </div>
      </div>
    </div>  
    <a href="specialEvent.html" class="webBtn">SEE ALL</a>
  </div>
</div>
<!-- eventSec end -->


<!-- testimonialSec start -->
<div class="testimonialSec">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-sm-8 col-xs-12 centerCol">
        <h2>YOUR WORDS OUR PRIDE</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-10 col-sm-10 col-xs-12 centerCol">
        <div class="testSlider">
          <div class="test">
            <div class="row flexRow">
              <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="testImg">
                  <img src="images/testImg.jpg" class="img-responsive" alt="testImg">
                </div>
              </div>
              <div class="col-md-9 col-sm-9 col-xs-12">
                <div class="testCntnt">
                  <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="test">
            <div class="row flexRow">
              <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="testImg">
                  <img src="images/testImg.jpg" class="img-responsive" alt="testImg">
                </div>
              </div>
              <div class="col-md-9 col-sm-9 col-xs-12">
                <div class="testCntnt">
                  <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- testimonialSec end -->


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


@php
    exit();
@endphp

<!-- categoriesSec start -->
<div class="categoriesSec">
  <div class="container">
    <div class="row">
        @foreach ($category  as $cat )
        <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="category">
                <a href="{{route('category',$cat->id)}}">
                {{-- <img src="{{asset('images/catBg-4.png')}}" class="img-responsive" alt="catBg"></a> --}}
              <img src="{{url('/americansook/public/../storage/app/'.$cat->photo)}}" class="img-responsive" alt="catBg"></a>

              <!-- <div class="catOverlay">
                <h2>Current Products</h2>
                <img src="{{asset('images/mobile.png')}}" class="img-responsive" alt="cat">
              </div> -->
            </div>
            <div class="catname">{{ $cat->title }}</div>
          </div>
        @endforeach
    </div>
  </div>
</div>
<!-- categoriesSec end -->

<!-- sellerSec start -->
<div class="sellerSec">
  <h2>Brands</h2>
  <div class="container">
    <ul class="nav nav-tabs">

        @foreach ($brands as $brand)

            <li class="{{$loop->index+1 == 1 ? 'active' : '' }}"><a data-toggle="tab" href="#home{{ $brand->id }}">{{ $brand->title }}</a></li>
        @endforeach
    </ul>
    <div class="tab-content">
        @foreach ($brands as $brand)
            <div  class="tab-pane fade in {{$loop->index+1 == 1 ? 'active' : '' }}" id="home{{ $brand->id }}">
                <div class="row">
                    @php
                        $productsGet =  DB::table('products')->where('brand_id', $brand->id)->Where('is_approved', 1)
                        ->get();
                    @endphp
                    @foreach ($productsGet as $product_list)
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="product">
                                <a href="{{route('product-detail',$product_list->id)}}">
                            <div class="proImg">
                                <img src="{{url('/americansook/public/../storage/app/'.$product_list->photo)}}" class="img-responsive" alt="proImg">
                            </div>
                            </a>
                            <div class="proCntnt">
                                <h6>{{ $product_list->title }}</h6>
                                <h4>${{ $product_list->price }}</h4>
                            </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
  </div>
</div>
<!-- sellerSec end -->

<!-- ourProSec start -->
<div class="ourProSec">
  <h2>Our Products</h2>
  <div class="container">
    <div class="row">
        @foreach ($allproducts as $allproduct)
        <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="product">
                <a href="{{route('product-detail',$allproduct->id)}}">
            <div class="proImg">
                <img src="{{url('/americansook/public/../storage/app/'.$allproduct->photo)}}" class="img-responsive" alt="proImg">
            </div>
            </a>
            <div class="proCntnt">
                <h6>{{ $allproduct->title }}</h6>
                <h4>${{ $allproduct->price }}</h4>
            </div>
            </div>
        </div>
    @endforeach

    </div>
    <a href="{{ asset('allProducts') }}" class="webBtn">View More</a>
  </div>
</div>
<!-- ourProSec end -->

<!-- imgSec start -->
<div class="imgSec">
  <img src="{{asset('images/bgImg.jpg')}}"" class="img-responsive" alt="bgImg">
</div>
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
