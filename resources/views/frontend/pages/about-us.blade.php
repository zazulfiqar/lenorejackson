<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->
<title>About Us</title>
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
    
<!-- Slider Section Starts Here -->
<!-- <div class="innerBanner">
  <div class="container">
    <img src="{{asset('images/about.jpg')}}" alt="img">
  </div>
</div> -->
<!-- Slider Section Ends Here -->

<!-- aboutPg start -->
<main class="aboutPg">
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
            <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?</p>
          </div>
        </div>
      </div>
      <div class="row flexRow">
        <div class="col-md-7 col-sm-7 col-xs-12">
          <div class="aboutCntnt abtBtmCntnt">
            <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?</p>
            <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?</p>
            <p>What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type speci men book it has?</p>
          </div>
        </div>
        <div class="col-md-5 col-sm-5 col-xs-12">
          <div class="aboutImg">
            <img src="images/pro-20.png" class="img-responsive" alt="aboutImg">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- aboutSec end -->
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
</main>
<!-- aboutPg end -->

<!-- ourProSec end -->



<!-- footer start -->
@include('frontend.layouts.footerNew')
<!-- footer end -->
</body>
</html>
