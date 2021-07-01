<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home</title>
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
                    <h1 class="wow fadeInLeft" data-wow-delay="0.2s" data-wow-duration="2s">{{ $brandname->title }}</h1>
                  </div>
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


<!-- proDetPg start -->
<main class="clothingPg">
  <!-- eventSec start -->
  <div class="clothSec">
    <div class="container">
      <div class="col-md-7 col-sm-7 col-xs-12 centerCol">
        <h2>{{ $brandname->title }}</h2>
      </div>
      @php
      $brands =  DB::table('brands')->where('status', 'active')->get();
      @endphp
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="{{route('allProducts')}}">All</a></li>


  @foreach ($brands as $brand)
  <li><a href="{{route('brands',$brand->id)}}">{{ $brand->title }}</a></li>
  @endforeach
        {{-- <li><a data-toggle="tab" href="#menu1">T-shirts</a></li>
        <li><a data-toggle="tab" href="#menu2">watches</a></li>
        <li><a data-toggle="tab" href="#menu3">Polo shirt</a></li>
        <li><a data-toggle="tab" href="#menu4">Line Jacket</a></li>
        <li><a data-toggle="tab" href="#menu5">Business shirt</a></li> --}}
      </ul>
      <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
          <div class="proSec">
            <div class="row">


              @foreach ($allproducts as $allproduct)


              <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="product">
                  <a href="{{route('product-detail',$allproduct->id)}}">
                    <img src="{{url('../storage/app/'.$allproduct->photo)}}" class="img-responsive" alt="pro">
                  </a>
                </div>
              </div>


              @endforeach
            
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
  <!-- eventSec end -->
</main>
<!-- proDetPg end -->

{{-- <div class="ourProSec">

    
  <h2>

    {{ $brandname->title }}
  </h2>
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
    
  </div>
</div> --}}
<!-- ourProSec end -->

<!-- imgSec start -->
{{-- <div class="imgSec">
  <img src="{{asset('images/bgImg.jpg')}}"" class="img-responsive" alt="bgImg">
</div> --}}
<!-- imgSec end -->

<!-- footer start -->
@include('frontend.layouts.footerNew')
<!-- footer end -->

</body>
</html>
