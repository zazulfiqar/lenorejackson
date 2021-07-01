<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->
<title>Contact</title>
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
<!-- contactPg start -->
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
                    <h1 class="wow fadeInLeft" data-wow-delay="0.2s" data-wow-duration="2s">Contact Us</h1>
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
<!-- contactPg end -->
<!-- contactPg start -->
<main class="contactPg">
  <!-- contactSec start -->
  <div class="contactSec ">
    <div class="container">
      <div class="secHead">
        <h2>Get in Touch with Us</h2>
      </div>
      <div class="row">
        <div class="col-md-8 col-sm-8 col-xs-12">
          <div class="formSec">
            <form>
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="form-group wow fadeinLeft" data-wow-delay="0.3s">
                    <input class="form-control" placeholder="Your First name" type="text">
                    <i aria-hidden="true" class="fa fa-user"></i>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="form-group wow fadeinRight" data-wow-delay="0.3s">
                    <input class="form-control" placeholder="Your Last name" type="text">
                    <i aria-hidden="true" class="fa fa-user"></i> 
                  </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="form-group wow fadeinUp" data-wow-delay="0.6s">
                    <input class="form-control" placeholder="Your Email Address" type="text">
                    <i aria-hidden="true" class="fa fa-phone"></i> 
                  </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="form-group wow fadeinUp" data-wow-delay="0.9s">
                    <textarea cols="" name="" placeholder="Comment" rows="7"></textarea>
                    <i aria-hidden="true" class="fa fa-envelope"></i> 
                  </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <button class="submit wow fadeinUp" data-wow-delay="1.2s">Send Messages</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
          <div class="mailingSec">
            <ul>
              <li class=" wow fadeInRight" data-wow-delay="0.4s">
                <i aria-hidden="true" class="fa fa-map-marker pull-left"></i>
                <span class="pull-right">
                    <h6>Mailing Address:</h6>
                    <p>123 Lorem Road Ipsum Dolor, AB A1B 1B6</p>
                </span> 
                <div class="clearfix"></div>
              </li>
              <li class=" wow fadeInRight" data-wow-delay="0.8s">
                <i aria-hidden="true" class="fa fa-phone pull-left"></i>
                <span class="pull-right">
                    <h6>Phone</h6>
                    <p><a href="tel:1234567890"></a>
                    123-456-7890</p>
                </span> 
                <div class="clearfix"></div>
              </li>
              <li class=" wow fadeInRight" data-wow-delay="1.2s">
                <i aria-hidden="true" class="fa fa-envelope pull-left"></i>
                <span class="pull-right">
                    <h6>Email At</h6>
                    <p><a href="mailto:info@demolink.com"></a>info@demolink.com</p>
                </span> 
                <div class="clearfix"></div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- contactSec end -->
</main>

<!-- ourProSec end -->

<!-- imgSec start -->

<!-- imgSec end -->

<!-- footer start -->
@include('frontend.layouts.footerNew')

</body>
</html>
