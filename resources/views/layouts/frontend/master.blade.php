<!DOCTYPE html>
<html dir="@if (session()->has('language_direction_from_dropdown')) @if(session()->get('language_direction_from_dropdown') == 1) {{ __('rtl') }} @else {{ __('ltr') }} @endif @else {{ __('ltr') }} @endif" lang="@if (session()->has('language_code_from_dropdown')){{ str_replace('_', '-', session()->get('language_code_from_dropdown')) }}@else{{ str_replace('_', '-',   $language->language_code) }}@endif">
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta name="description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">
    <meta name="keywords" content="@if (isset($general_seo)){{ $general_seo->site_keywords }} @endif">
    <meta name="author" content="simsiyeka">
    <meta property="fb:app_id" content="@if (isset($general_seo)){{ $general_seo->fb_app_id }} @endif">
    <meta property="og:title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta property="og:url" content="@if (isset($general_seo)){{ url()->current() }} @endif">
    <meta property="og:description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">
    <meta property="og:image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta itemprop="image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta property="og:type" content="website">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:image" content="@if (!empty($general_site_image->favicon_image))){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta property="twitter:title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta property="twitter:description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title -->
    <title>{{ __('frontend.home') }} @if (isset($general_seo)) - {{ $general_seo->site_name }} @endif</title>


 <!-- BOOTSTRAP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/bootstrap.min.css')}}">
    <!-- FONTAWESOME STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/fontawesome/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')">

    <!-- OWL CAROUSEL STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/owl.carousel.min.css')}}">

    <!-- MAGNIFIC POPUP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/magnific-popup.min.css')}}">
    <!-- LOADER STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/loader.min.css')}}">    
    <!-- MAIN STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/style.css')}}">
    <!-- FLATICON STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/flaticon.min.css')}}">
    <!-- THEME COLOR CHANGE STYLE SHEET -->
    <link rel="stylesheet" class="skin" type="text/css" href="{{asset('assets/frontend/css/skin/skin-1.css')}}">
    <!-- SIDE SWITCHER STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/switcher.css')}}">     

    <!-- REVOLUTION SLIDER CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/plugins/revolution/revolution/css/settings.css')}}">
    <!-- REVOLUTION NAVIGATION STYLE -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/plugins/revolution/revolution/css/navigation.css')}}">
    
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,800,800i,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700" rel="stylesheet">    
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    
  <!-- HEADER START -->
        <header class="site-header header-style-1  nav-wide">
            
            <div class="sticky-header main-bar-wraper">
                <div class="main-bar bg-white p-t5">
                    <div class="container clearfix">
                        <div class="header-center">
                            <div class="wt-header-left">
                                <!-- Header left -->
                                    <ul class="list-unstyled e-p-bx">
                                        <li><i class="fa fa-envelope m-r10 text-primary"></i>111@gmail.com</li>
                                        <li><i class="fa fa-phone m-r10 text-primary"></i>(0123) 321 654 1234</li>
                                    </ul>
                                </div>
                            <div class="wt-header-center">
                                <div class="logo-header">
                                    <div class="logo-header-inner logo-header-one">
                                        <a href="index.html">
                                            <img src="images/logo-dark.png" width="171" height="49" alt="" />
                                        </a>
                                    </div>
                                </div>
                            </div>                                          
                            <div class="wt-header-right">

                                <!-- ETRA Nav -->
                                <div class="extra-nav">
                                    <div class="extra-cell">
                                        <a href="#search" class="site-search-btn">Seach<i class="fa fa-search text-primary m-l10"></i></a>
                                    </div>
                                 </div>
                                <!-- ETRA Nav -->
                                <div class="extra-nav">
                                    <div class="extra-cell">
                                        <a href="#social-top-icon" class="site-menu-share">Share<i class="fa fa-share-alt text-primary m-l10"></i></a>
                                    </div>
                                 </div>
                                 
                                <!-- ETRA Nav -->
                                <div class="extra-nav">
                                    <div class="extra-cell">
                                        <div class="menu-btn">
                                            <button type="button" class="btn-open"></button>
                                        </div>
                                    </div>
                                 </div>                         
                                 <!-- ETRA Nav -->                                  
                                                                                         
                            </div>
                        </div>
                         <!-- Search popup -->
                        <div id="search"> 
                            <span class="close"></span>
                            <form role="search" id="searchform" action="/search" method="get" class="radius-xl">
                                <div class="input-group">
                                    <input value="" name="q" type="search" placeholder="Type to search"/>
                                    <span class="input-group-btn"><button type="button" class="search-btn"><i class="fa fa-search"></i></button></span>
                                </div>   
                            </form>
                        </div>
                    
                         <!-- Social popup -->
                        <div id="social-top-icon"> 
                            <span class="close"></span>
                            <div class="full-social-bg">
                                  <ul>
                                        <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="google"><i class="fa fa-google"></i></a></li>
                                        <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                        <li><a href="#" class="tumblr"><i class="fa fa-tumblr"></i></a></li>
                                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="youtube"><i class="fa fa-youtube"></i></a></li>
                                  </ul>
                            </div>
                        </div>                          
                        
                        <div class="full-menu">
                            <button type="button" class="full-menu-close"></button>
                            <!-- ETRA Nav   ======= --> 
                                <div class="vertical-content-wrap">
                                    <div class="vertical-centered">
                                        <!-- MAIN Vav -->
                                        <div class="vertical-nav">
                                            <ul class=" nav navbar-nav">
                                                <li class="active">
                                                    <a href="javascript:;">Home</a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="index.html">Home-1</a>
                                                        </li>
                                                        <li>
                                                            <a href="index-2.html">Home-2</a>
                                                        </li>
                                                        <li>
                                                            <a href="index-3.html">Home-3</a>
                                                        </li> 
                                                        <li>
                                                            <a href="index-4.html">Home-4</a>
                                                        </li>                                                                                                                    
                
                                                    </ul>                                                    
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Pages</a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="about-1.html">About us</a>
                                                        </li>
                                                        <li>
                                                            <a href="contact-1.html">Contact us</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Blog</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="news-grid.html">Grid</a></li>
                                                        <li><a href="news-listing.html">Listing</a></li>
                                                        <li><a href="news-masonry.html">Masonry</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Works</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="work-grid.html">Grid</a></li>
                                                        <li><a href="work-masonry.html">Masonry</a></li>
                
                                                        <li><a href="project-detail.html">Project Detail</a></li>                                        
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">Blog detail</a>
                                                    <ul class="sub-menu">
                
                                                        <li><a href="post-gallery.html">Gallery</a></li>
                
                                                        <li><a href="post-right-sidebar.html">Right Sidebar</a></li>                                        
                                                    </ul>                                    
                                                </li>
                                                <li class="submenu-direction">
                                                    <a href="all-elements.html">All Elements</a>
                                                </li>                                      
                                            </ul>
                                        </div>
                                    </div> 
                                </div>
                            <!-- ETRA Nav  END ==== -->                               
                        </div> 
        
                    </div>
                </div>
            </div>


</header>
<!-- header End -->







@yield('content')


<!-- Footer Area Start -->
@if ($section_arr['footer_section'] == 1)
    @if (isset($site_info) || count($socials) > 0 || count($pages) > 0 || count($contacts) > 0)
        <footer class="footer">
            <div class="footer-main-area" data-background="{{ asset('assets/frontend/images/footer-bg.png') }}">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                @if (!empty($general_site_image->site_white_logo_image)) <img src="{{ asset('uploads/img/general/'.$general_site_image->site_colored_logo_image) }}" class="mrb-20" alt="footer image"> @endif
                                <address class="mrb-25">
                                    @if (!empty($site_info->short_desc)) <p class="text-light-gray">{{ $site_info->short_desc }}</p> @endif
                                </address>
                                <ul class="social-list">
                                    @foreach ($socials as $social)
                                        <li><a href="@if (!empty($social->link)) {{ $social->link }} @else # @endif"><i class="{{ $social->social_media }}"></i></a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">Useful Links</h5>
                                <ul class="footer-widget-list">
                                    <li><a href="{{ url('/') }}">{{ __('frontend.home') }}</a></li>
                                    @if ($section_arr['about_section'] == 1) <li><a href="{{ url('/'.'#about') }}">{{ __('frontend.about') }}</a></li> @endif
                                    @if ($section_arr['service_section'] == 1) <li><a href="{{ url('/'.'#service') }}">{{ __('frontend.services') }}</a></li> @endif
                                    @if ($section_arr['team_section'] == 1) <li><a href="{{ url('/'.'#team') }}">{{ __('frontend.teams') }}</a></li> @endif
                                    @if ($section_arr['project_section'] == 1) <li><a href="{{ url('/'.'#case-study') }}">{{ __('frontend.projects') }}</a></li> @endif
                                    @if ($section_arr['blog_section'] == 1) <li><a href="{{ url('/'.'#news') }}">{{ __('frontend.news') }}</a></li> @endif
                                    @if ($section_arr['contact_section'] == 1) <li><a href="{{ url('/'.'#contact') }}">{{ __('frontend.contact') }}</a></li> @endif
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">{{ __('frontend.help') }}</h5>
                                <ul class="footer-widget-list">
                                    @foreach ($pages as $page)
                                        @if ($page->display_footer_menu == 1)
                                            <li>
                                                <a href="{{ url('page/'.$page->page_slug) }}">{{ $page->page_title }}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">{{ __('frontend.contact_info') }}</h5>
                                @foreach ($contacts as $contact)
                                    <div class="mrb-10"><a href="#" class="text-light-gray">@if (!empty($contact->icon)) <i class="{{ $contact->icon }} mrr-10"></i> @endif {{ $contact->desc }}</a></div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom-area">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="text-center">
                                <span class="text-light-gray">@if (!empty($site_info->copyright)) {{ $site_info->copyright }} @endif</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    @else
        <footer class="footer">
            <div class="footer-main-area" data-background="{{ asset('assets/frontend/images/footer-bg.png') }}">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <img src="{{ asset('uploads/common_dummy/logo-white.png') }}" alt="footer image" class="mrb-20">
                                <address class="mrb-25">
                                    <p class="text-light-gray">32 Dora Creek, tuntable creek, New South Wales 2480, Australia</p>
                                    <div class="mrb-10"><a href="#" class="text-light-gray"><i class="fas fa-phone-alt mrr-10"></i>+088 234 432 15565</a></div>
                                    <div class="mrb-10"><a href="#" class="text-light-gray"><i class="fas fa-envelope mrr-10"></i>sample@yourdomain.com</a></div>
                                    <div class="mrb-0"><a href="#" class="text-light-gray"><i class="fas fa-globe mrr-10"></i>www.domainname.com</a></div>
                                </address>
                                <ul class="social-list">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">Useful Links</h5>
                                <ul class="footer-widget-list">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Team</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Policy</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">Help</h5>
                                <ul class="footer-widget-list">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Team</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Policy</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="widget footer-widget">
                                <h5 class="widget-title text-white mrb-30">Contact Info</h5>
                                <div class="mrb-10"><a href="#" class="text-light-gray"><i class="fas fa-phone-alt mrr-10"></i>+088 234 432 15565</a></div>
                                <div class="mrb-10"><a href="#" class="text-light-gray"><i class="fas fa-envelope mrr-10"></i>sample@yourdomain.com</a></div>
                                <div class="mrb-0"><a href="#" class="text-light-gray"><i class="fas fa-globe mrr-10"></i>www.domainname.com</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom-area">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="text-center">
                                <span class="text-light-gray">Copyright © 2021 by <a class="text-primary-color" target="_blank" href="https://codecanyon.net/user/simsiyeka"> Simsiyeka</a> | All rights reserved </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
   
<!-- Footer Area End -->
<!-- Gallery Js -->
@if ($section_arr['gallery_section'] == 1)
    <!--// Required JS Files //-->
    <script src="{{ asset('assets/frontend/vendor/vendor/js/waypoints.min.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/vendor/js/isotope.min.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/vendor/js/images.loaded.min.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/vendor/js/tilt.jquery.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/vendor/js/fancybox.min.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/vendor/js/wow.min.js') }}" defer></script>
    <script src="{{ asset('assets/frontend/vendor/js/main.js') }}" defer></script>
@endif
<!-- JAVASCRIPT  FILES ========================================= --> 
<script  src="{{asset('assets/frontend/js/jquery-1.12.4.min.js')}}"></script><!-- JQUERY.MIN JS -->
<script  src="{{asset('assets/frontend/js/bootstrap.min.js')}}"></script><!-- BOOTSTRAP.MIN JS -->

<script  src="{{asset('assets/frontend/js/magnific-popup.min.js')}}"></script><!-- MAGNIFIC-POPUP JS -->

<script  src="{{asset('assets/frontend/js/waypoints.min.js')}}"></script><!-- WAYPOINTS JS -->
<script  src="{{asset('assets/frontend/js/counterup.min.js')}}"></script><!-- COUNTERUP JS -->
<script  src="{{asset('assets/frontend/js/waypoints-sticky.min.js')}}"></script><!-- COUNTERUP JS -->

<script  src="{{asset('assets/frontend/js/isotope.pkgd.min.js')}}"></script><!-- MASONRY  -->

<script  src="{{asset('assets/frontend/js/owl.carousel.min.js')}}"></script><!-- OWL  SLIDER  -->
<script src="{{asset('assets/frontend/js/jquery.owl-filter.js')}}"></script>

<script  src="{{asset('assets/frontend/js/stellar.min.js')}}"></script><!-- PARALLAX BG IMAGE   --> 




<script  src="{{asset('assets/frontend/js/custom.js')}}"></script><!-- CUSTOM FUCTIONS  -->
<script  src="{{asset('assets/frontend/js/shortcode.js')}}"></script><!-- SHORTCODE FUCTIONS  -->
<script  src="{{asset('assets/frontend/js/switcher.js')}}"></script><!-- SHORTCODE FUCTIONS  -->
<!-- REVOLUTION JS FILES -->

<script  src="{{asset('assets/frontend/plugins/revolution/revolution/js/jquery.themepunch.tools.min.js')}}"></script>
<script  src="{{asset('assets/frontend/plugins/revolution/revolution/js/jquery.themepunch.revolution.min.js')}}"></script>

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->    
<script  src="{{asset('assets/frontend/plugins/revolution/revolution/js/extensions/revolution-plugin.js')}}"></script>

<!-- REVOLUTION SLIDER SCRIPT FILES -->
<script  src="{{asset('assets/frontend/js/rev-script-1.js')}}"></script>



</body>
</html>