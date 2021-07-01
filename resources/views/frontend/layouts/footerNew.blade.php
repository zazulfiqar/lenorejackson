<!-- footer start -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="footerImg footerCntnt">
          <a href="{{ asset('/') }}">
            <img src="{{asset('images/footerLogo.png')}}" class="img-responsive" alt="footerLogo ">
          </a>
          <div class="socialIcons">
            <ul class="list-inline">
              <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="footerCntnt quickLinks">
          <h6>QUICK LINKS</h6>
          <ul>
            <li><a href="{{ asset('/') }}" class="active">Home</a></li>
            <li><a href="{{route('about-us')}}">About Us</a></li>

      @php
            $brands =  DB::table('brands')->where('status', 'active')->get();
      @endphp
      @foreach ($brands as $brand)
      <li><a href="{{route('brands',$brand->id)}}">{{ $brand->title }}</a></li>
      @endforeach
       
            <li><a href="{{route('contact')}}">Contact Us</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="footerCntnt">
          <h6>Address</h6>
          <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type sspecimen book.</p>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- footer end -->

<!-- bottomRow start -->
<div class="bottomRow">
  <div class="container">
    <p>2021 Copyrights & Protected</p>
  </div>
</div>
<!-- bottomRow end -->

<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <a href="{{ asset('/') }}"><img src="images/logo.png" class="img-responsive" alt="logo"></a>
        <h2>Login</h2>
        <form>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Username or Email">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="password" class="form-control" placeholder="Enter Password">
              </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Remember me</label>
              </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="forgetLink pull-right">
                <a href="#">Forget password ?</a>
              </div>
            </div>
          </div>
          <button class="submit webBtn">Login</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- All JS -->
<script src="{{asset('js/all.js')}}"></script>
<!-- Custom JS -->
<script src="{{asset('js/custom.js')}}"></script>

{{-- 
<footer>
    <div class="container-fluid">
      <div class="upperRow">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="footerCntnt ">
                  <h6>About Us</h6>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="footerCntnt ">
                  <h6>24/7 Customer Support</h6>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12">
                <div class="footerCntnt bottomCntct">
                  <h6>My Account</h6>
                  <ul>
                    <li><a href="#">Shopping cart</a></li>
                    <li><a href="#">Checkout</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </div>
            </div>
          <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="footerCntnt bottomCntct">
              <h6>Contact</h6>
              <ul>
                <li>Address:6197 Sven Garden Apt. 172 United State</li>
                <li><a href="mailto:dummy@dummy.com">Email:dummy@dummy.com</a></li>
                <li><a href="tel:123456789">Phone:+123456789</a></li>
              </ul>
            </div>
            <div class="footerCntnt">
                <ul class="socialIcons list-inline">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
                <ul class="list-inline paymentList">
                  <li><a href="#"><img src="{{asset('images/icon-1.png')}}" class="img-responsive" alt="icon"></a></li>
                  <li><a href="#"><img src="{{asset('images/icon-2.png')}}" class="img-responsive" alt="icon"></a></li>
                  <li><a href="#"><img src="{{asset('images/icon-3.png')}}" class="img-responsive" alt="icon"></a></li>
                </ul>
                <div class="footerLogo">
                  <a href="{{ asset('/') }}">
                    <img src="{{asset('images/logo.png')}}" class="img-responsive" alt="logo">
                  </a>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="lowerRow">
        <div class="row">

          <div class="col-md-3 col-sm-3 col-xs-12">

          </div>
        </div>
      </div>
    </div>
  </footer>
  <div class="bottomRow">
    <div class="container-fluid">
      <p><i class="fa fa-copyright"></i>2021 American Sooq. All Rights Reserved.</p>
    </div>
  </div>
  <!-- bottomRow end -->

  </body>

  <!-- All JS -->
  <script src="{{ asset('js/all.js') }}"></script>
  <!-- jquery.slicknav JS -->
  <script src="{{ asset('js/jquery.slicknav.js') }}"></script>
  <!-- Custom JS -->
  <script src="{{ asset('js/custom.js') }}"></script> --}}
