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
    <meta name="twitter:image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta property="twitter:title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta property="twitter:description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title -->
    <title>{{ __('frontend.home') }} @if (isset($general_seo)) - {{ $general_seo->site_name }} @endif</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- BOOTSTRAP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/bootstrap.min.css')}}">
    <!-- FONTAWESOME STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/fontawesome/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
                                            <img src="{{asset('assets/frontend/images/logo-dark.png')}}" width="171" height="49" alt="" />
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

</head>
<body>
     <!-- CONTENT START -->
        <div class="page-content">        
            <!-- SLIDER START -->
            <div id="welcome_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="goodnews-header" data-source="gallery" style="background:#eeeeee;padding:0px;">
                <div id="welcome" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.3.1">
                    <ul>    
                    
                        <!-- SLIDE 1 -->
                        <li data-index="rs-901" 
                        data-transition="fade" 
                        data-slotamount="default" 
                        data-hideafterloop="0" 
                        data-hideslideonmobile="off"  
                        data-easein="default" 
                        data-easeout="default" 
                        data-masterspeed="default"  
                        data-thumb="images/main-slider/slider1/slide1.jpg"  
                        data-rotate="0"  
                        data-fstransition="fade" 
                        data-fsmasterspeed="300" 
                        data-fsslotamount="7" 
                        data-saveperformance="off"  
                        data-title="Slide Title" 
                        data-param1="Additional Text" 
                        data-param2="" 
                        data-param3="" 
                        data-param4="" 
                        data-param5="" 
                        data-param6="" 
                        data-param7="" 
                        data-param8="" 
                        data-param9="" 
                        data-param10="" 
                        data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="{{asset('assets/frontend/images/main-slider/slider1/slide1.jpg')}}"  alt=""  data-lazyload="images/main-slider/slider1/slide1.jpg" data-bgposition="center center" 
                            data-bgfit="cover" data-bgparallax="4" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. 1 [ for overlay ] -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                            id="slide-901-layer-0" 
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                            data-width="full"
                            data-height="full"
                            data-whitespace="nowrap"
                            data-type="shape" 
                            data-basealign="slide" 
                            data-responsive_offset="off" 
                            data-responsive="off"
                            data-frames='[
                            {"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index: 1;background-color:rgba(0, 0, 0, 0.5);border-color:rgba(0, 0, 0, 0);border-width:0px;"> 
                            </div>
                           
                            <!-- LAYER NR. 3 [ Black Box ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-901-layer-3" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['200','200','200','200']"  
                            data-fontsize="['20','20','20','20']"
                            data-lineheight="['56','56','56','50']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 600;
                            color:#fff;
                            border-width:0px;">
                            <div class="text-primary text-uppercase"><span class="light-number">01</span>We Make Sure</div>
                            </div>
                            
                            
                                                        
                            <!-- LAYER NR. 4 [ for title ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-901-layer-4" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['300','300','300','300']"  
                            data-fontsize="['56','56','38','28']"
                            data-lineheight="['66','66','48','38']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[5,5,5,5]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 400;
                            color:#fff;
                            border-width:0px;">
                            <div style="font-family: 'Oswald', sans-serif;text-transform:uppercase;">
                                <span class="text-white"> Dream our house</span>
                            </div>
                            
                            </div>
                        
                            <!-- LAYER NR. 5 [ for paragraph] -->
                            <div class="tp-caption  tp-resizeme" 
                            id="slide-901-layer-5" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['390','390','390','390']"  
                            data-fontsize="['16','16','16','14']"
                            data-lineheight="['30','30','30','22']"
                            data-width="['600','600','90%','90%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            font-weight: 500; 
                            color:#fff;
                            border-width:0px;">
                            <span style="font-family: 'Roboto', sans-serif">Lorem Ipsum is simply dummy text of the printing and type setting industry. lorem Ipsum has been end.</span>
                            </div>
                        
                            <!-- LAYER NR. 6 [ for see all service botton ] -->
                            <div class="tp-caption tp-resizeme"     
                            id="slide-901-layer-6"                      
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
    
                            data-y="['top','top','top','top']" data-voffset="['490','490','490','490']"  
                            data-lineheight="['none','none','none','none']"
                            data-width="['300','300','300','300']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                            
                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[ 
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index:13; text-transform:uppercase;">
                            <a href="javascript:;" class="site-button site-btn-effect" style="font-weight:600;font-family: 'Roboto', sans-serif">Read More</a>
                            </div>
                                                        
                            <!-- Border Part -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                                id="slide-901-layer-8" 
                                data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" 
                                data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                data-width="full"
                                data-height="full"
                                data-whitespace="nowrap"
                                data-visibility="['on','on','off','off']"
                     
                                data-type="shape" 
                                data-basealign="slide" 
                                data-responsive_offset="off" 
                                data-responsive="off"
                                data-frames='[{"delay":50,"speed":100,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"opacity:0;","ease":"Power3.easeIn"}]'
                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                data-paddingtop="[0,0,0,0]"
                                data-paddingright="[0,0,0,0]"
                                data-paddingbottom="[0,0,0,0]"
                                data-paddingleft="[0,0,0,0]"
                    
                                style="z-index: 10;background-color:rgba(0, 0, 0, 0);border-color:rgb(255,255,255);border-style:solid;border-width:0px 50px 50px 50px;"></div>
                                
                                
                            <!-- play icon -->    
                            <div class="tp-caption tp-shape tp-shapewrapper slider-play-icon" 
                                id="slide-901-layer-9" 
                                data-x="['right','right','right','right']" data-hoffset="['0','0','0','0']" 
                                data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                data-width="full"
                                data-height="full"
                                data-whitespace="nowrap"
                                data-visibility="['on','on','off','off']"
                     
                                data-type="shape" 
                                data-basealign="slide" 
                                data-responsive_offset="off" 
                                data-responsive="off"
                                data-frames='[{"delay":50,"speed":100,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"opacity:0;","ease":"Power3.easeIn"}]'
                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                data-paddingtop="[0,0,0,0]"
                                data-paddingright="[0,0,0,0]"
                                data-paddingbottom="[0,0,0,0]"
                                data-paddingleft="[0,0,0,0]"
                    
                                style="z-index: 10;">
                                    <a href="https://player.vimeo.com/video/34741214?color=ffffff&title=0&byline=0&portrait=0" class="mfp-video play-now">
                                        <i class="icon fa fa-play"></i>
                                        <span class="ripple"></span>
                                    </a>                                    
                                </div>                                
     
                        </li>
                        
                        <!-- SLIDE 2 -->
                        <li data-index="rs-902" 
                        data-transition="fade" 
                        data-slotamount="default" 
                        data-hideafterloop="0" 
                        data-hideslideonmobile="off"  
                        data-easein="default" 
                        data-easeout="default" 
                        data-masterspeed="default"  
                        data-thumb="images/main-slider/slider1/slide2.jpg"  
                        data-rotate="0"  
                        data-fstransition="fade" 
                        data-fsmasterspeed="300" 
                        data-fsslotamount="7" 
                        data-saveperformance="off"  
                        data-title="Click" 
                        data-param1="" 
                        data-param2="" 
                        data-param3="" 
                        data-param4="" 
                        data-param5="" 
                        data-param6="" 
                        data-param7="" 
                        data-param8="" 
                        data-param9="" 
                        data-param10="" 
                        data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="{{asset('assets/frontend/images/main-slider/slider1/slide2.jpg')}}"  alt=""  data-lazyload="images/main-slider/slider1/slide2.jpg" data-bgposition="center center" 
                            data-bgfit="cover" data-bgparallax="4" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. 1 [ for overlay ] -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                            id="slide-902-layer-0" 
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                            data-width="full"
                            data-height="full"
                            data-whitespace="nowrap"
                            data-type="shape" 
                            data-basealign="slide" 
                            data-responsive_offset="off" 
                            data-responsive="off"
                            data-frames='[
                            {"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index: 1;background-color:rgba(0, 0, 0, 0.5);border-color:rgba(0, 0, 0, 0);border-width:0px;"> 
                            </div>
                           
                            <!-- LAYER NR. 3 [ Black Box ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-902-layer-3" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['200','200','200','200']"  
                            data-fontsize="['20','20','20','20']"
                            data-lineheight="['56','56','56','50']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 600;
                            color:#fff;
                            border-width:0px;">
                            <div class="text-primary text-uppercase"><span class="light-number">02</span>We Make Sure</div>
                            </div>
                            
                            
                                                        
                            <!-- LAYER NR. 4 [ for title ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-902-layer-4" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['300','300','300','300']"  
                            data-fontsize="['56','56','38','28']"
                            data-lineheight="['66','66','48','38']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[5,5,5,5]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 400;
                            color:#fff;
                            border-width:0px;">
                            <div style="font-family: 'Oswald', sans-serif;text-transform:uppercase;">
                                <span class="text-white"> Dream our house</span>
                            </div>
                            
                            </div>
                        
                            <!-- LAYER NR. 5 [ for paragraph] -->
                            <div class="tp-caption  tp-resizeme" 
                            id="slide-902-layer-5" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['390','390','390','390']"  
                            data-fontsize="['16','16','16','14']"
                            data-lineheight="['30','30','30','22']"
                            data-width="['600','600','90%','90%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            font-weight: 500; 
                            color:#fff;
                            border-width:0px;">
                            <span style="font-family: 'Roboto', sans-serif">Lorem Ipsum is simply dummy text of the printing and type setting industry. lorem Ipsum has been end.</span>
                            </div>
                        
                            <!-- LAYER NR. 6 [ for see all service botton ] -->
                            <div class="tp-caption tp-resizeme"     
                            id="slide-902-layer-6"                      
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
    
                            data-y="['top','top','top','top']" data-voffset="['490','490','490','490']"  
                            data-lineheight="['none','none','none','none']"
                            data-width="['300','300','300','300']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                            
                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[ 
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index:13; text-transform:uppercase;">
                            <a href="javascript:;" class="site-button site-btn-effect" style="font-weight:600;font-family: 'Roboto', sans-serif">Read More</a>
                            </div>
                                                        
                            <!-- Border Part -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                                id="slide-902-layer-8" 
                                data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" 
                                data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                data-width="full"
                                data-height="full"
                                data-whitespace="nowrap"
                                data-visibility="['on','on','off','off']"
                     
                                data-type="shape" 
                                data-basealign="slide" 
                                data-responsive_offset="off" 
                                data-responsive="off"
                                data-frames='[{"delay":50,"speed":100,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"opacity:0;","ease":"Power3.easeIn"}]'
                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                data-paddingtop="[0,0,0,0]"
                                data-paddingright="[0,0,0,0]"
                                data-paddingbottom="[0,0,0,0]"
                                data-paddingleft="[0,0,0,0]"
                    
                                style="z-index: 10;background-color:rgba(0, 0, 0, 0);border-color:rgb(255,255,255);border-style:solid;border-width:0px 50px 50px 50px;"></div>
     
                        </li> 
                        
                        <!-- SLIDE 2 -->
                        <li data-index="rs-903" 
                        data-transition="fade" 
                        data-slotamount="default" 
                        data-hideafterloop="0" 
                        data-hideslideonmobile="off"  
                        data-easein="default" 
                        data-easeout="default" 
                        data-masterspeed="default"  
                        data-thumb="images/main-slider/slider1/slide3.jpg"  
                        data-rotate="0"  
                        data-fstransition="fade" 
                        data-fsmasterspeed="300" 
                        data-fsslotamount="7" 
                        data-saveperformance="off"  
                        data-title="Click" 
                        data-param1="" 
                        data-param2="" 
                        data-param3="" 
                        data-param4="" 
                        data-param5="" 
                        data-param6="" 
                        data-param7="" 
                        data-param8="" 
                        data-param9="" 
                        data-param10="" 
                        data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="{{asset('assets/frontend/images/main-slider/slider1/slide3.jpg')}}"  alt=""  data-lazyload="images/main-slider/slider1/slide3.jpg" data-bgposition="center center" 
                            data-bgfit="cover" data-bgparallax="4" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. 1 [ for overlay ] -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                            id="slide-903-layer-0" 
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                            data-width="full"
                            data-height="full"
                            data-whitespace="nowrap"
                            data-type="shape" 
                            data-basealign="slide" 
                            data-responsive_offset="off" 
                            data-responsive="off"
                            data-frames='[
                            {"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index: 1;background-color:rgba(0, 0, 0, 0.5);border-color:rgba(0, 0, 0, 0);border-width:0px;"> 
                            </div>
                           
                            <!-- LAYER NR. 3 [ Black Box ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-903-layer-3" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['200','200','200','200']"  
                            data-fontsize="['20','20','20','20']"
                            data-lineheight="['56','56','56','50']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 600;
                            color:#fff;
                            border-width:0px;">
                            <div class="text-primary text-uppercase"><span class="light-number">03</span>We Make Sure</div>
                            </div>
                            
                            
                                                        
                            <!-- LAYER NR. 4 [ for title ] -->
                            <div class="tp-caption   tp-resizeme" 
                            id="slide-903-layer-4" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['300','300','300','300']"  
                            data-fontsize="['56','56','38','28']"
                            data-lineheight="['66','66','48','38']"
                            data-width="['700','700','96%','96%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[5,5,5,5]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            white-space: normal; 
                            font-weight: 400;
                            color:#fff;
                            border-width:0px;">
                            <div style="font-family: 'Oswald', sans-serif;text-transform:uppercase;">
                                <span class="text-white"> Dream our house</span>
                            </div>
                            
                            </div>
                        
                            <!-- LAYER NR. 5 [ for paragraph] -->
                            <div class="tp-caption  tp-resizeme" 
                            id="slide-903-layer-5" 
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
                            data-y="['top','top','top','top']" data-voffset="['390','390','390','390']"  
                            data-fontsize="['16','16','16','14']"
                            data-lineheight="['30','30','30','22']"
                            data-width="['600','600','90%','90%']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                        

                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1500,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                        
                            style="z-index: 13; 
                            font-weight: 500; 
                            color:#fff;
                            border-width:0px;">
                            <span style="font-family: 'Roboto', sans-serif">Lorem Ipsum is simply dummy text of the printing and type setting industry. lorem Ipsum has been end.</span>
                            </div>
                        
                            <!-- LAYER NR. 6 [ for see all service botton ] -->
                            <div class="tp-caption tp-resizeme"     
                            id="slide-903-layer-6"                      
                            data-x="['left','left','left','left']" data-hoffset="['150','150','30','30']" 
    
                            data-y="['top','top','top','top']" data-voffset="['490','490','490','490']"  
                            data-lineheight="['none','none','none','none']"
                            data-width="['300','300','300','300']"
                            data-height="['none','none','none','none']"
                            data-whitespace="['normal','normal','normal','normal']"
                            
                            data-type="text" 
                            data-responsive_offset="on"
                            data-frames='[ 
                            {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power4.easeOut"},
                            {"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}
                            ]'
                            data-textAlign="['left','left','left','left']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            
                            style="z-index:13; text-transform:uppercase;">
                            <a href="javascript:;" class="site-button site-btn-effect" style="font-weight:600;font-family: 'Roboto', sans-serif">Read More</a>
                            </div>
                                                        
                            <!-- Border Part -->
                            <div class="tp-caption tp-shape tp-shapewrapper " 
                                id="slide-903-layer-8" 
                                data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" 
                                data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                data-width="full"
                                data-height="full"
                                data-whitespace="nowrap"
                                data-visibility="['on','on','off','off']"
                     
                                data-type="shape" 
                                data-basealign="slide" 
                                data-responsive_offset="off" 
                                data-responsive="off"
                                data-frames='[{"delay":50,"speed":100,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"frame":"999","to":"opacity:0;","ease":"Power3.easeIn"}]'
                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                data-paddingtop="[0,0,0,0]"
                                data-paddingright="[0,0,0,0]"
                                data-paddingbottom="[0,0,0,0]"
                                data-paddingleft="[0,0,0,0]"
                    
                                style="z-index: 10;background-color:rgba(0, 0, 0, 0);border-color:rgb(255,255,255);border-style:solid;border-width:0px 50px 50px 50px;"></div>
     
                        </li>                                                  
                         
                    </ul>
                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div> 
                </div>
            </div>
            <!-- SLIDER END -->
            
            <!-- ABOUT COMPANY -->
            <div class="section-full small-device p-t30  p-b80  bg-white">

                <div class="container">
                
                    <!-- IMAGE CAROUSEL START -->
                    <div class="section-content clearfix">
                        <div class="col-md-12">
                            <div class="row  no-col-gap bg-primary">
                            <div class="col-md-3 col-sm-6 col-xs-6 col-xs-100pc bg-white">
                                <div class="wt-icon-box-wraper center p-lr30  p-b50 p-t50 bdr-1 bdr-solid bdr-gray-light hover-border-outer hover-border">
                                    <div class="icon-lg text-primary m-b15">
                                        <span class="icon-cell text-primary"><i class="flaticon-decorating"></i></span>
                                    </div>
                                    <div class="icon-content text-black">
                                        <h4 class="wt-tilte text-uppercase font-weight-600 m-b20">Interior</h4>
                                        <p>There are many variations of pass ages of Ipsum</p>
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-3 col-sm-6 col-xs-6 col-xs-100pc bg-white">
                                <div class="wt-icon-box-wraper center p-lr30  p-b50  p-t50 bdr-1 bdr-solid bdr-gray-light hover-border-outer hover-border">
                                    <div class="icon-lg text-primary m-b15">
                                        <span class="icon-cell text-primary"><i class="flaticon-skyline"></i></span>
                                    </div>
                                    <div class="icon-content text-black">
                                        <h4 class="wt-tilte text-uppercase font-weight-600 m-b20">Architecture</h4>
                                        <p>There are many variations of pass ages of Ipsum.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6 col-xs-100pc bg-white">
                                <div class="wt-icon-box-wraper center p-lr30  p-b50  p-t50 bdr-1 bdr-solid bdr-gray-light hover-border-outer hover-border">
                                    <div class="icon-lg text-primary m-b15">
                                        <span class="icon-cell text-primary"><i class="flaticon-sketch "></i></span>
                                    </div>
                                    <div class="icon-content text-black">
                                        <h4 class="wt-tilte text-uppercase font-weight-600 m-b20">Planing</h4>
                                        <p>There are many variations of pass ages of Ipsum.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6 col-xs-100pc bg-primary">
                                <div class="wt-icon-box-wraper center p-lr30  p-b40 p-t40">
                                    <div class="icon-lg m-b15">
                                        <span class="icon-cell  text-white"><i class="flaticon-architect-with-helmet"></i></span>
                                    </div>
                                    <div class="icon-content">
                                        <h4 class="wt-tilte text-uppercase font-weight-600 m-b20 text-white">Make pro plan for your projects</h4>
                                        <a href="Javascript:;" class="site-button-secondry site-btn-effect"><span>Get a quote</span></a>
                                    </div>
                                </div>
                            </div>
                                                                              
                        </div>
                        </div>
                    </div>
                </div>
                
             </div>   
            <!-- ABOUT COMPANY END -->
            
            <!-- LATEST PRJECTS SLIDER START -->
            <div class="section-full small-device  p-tb80 bg-gray">
                <div class="container">
                
                    <!-- TITLE START -->
                    <div class="section-head text-left">
                        <h4 class="text-primary text-uppercase wt-title-small">Recently finished</h4>
                        <h2 class="text-uppercase font-45 font-weight-500 m-b5">Recent projects</h2>
                    </div>
                    <!-- TITLE END -->  
                                   
                </div>
               <div class="container">   
                    <!-- IMAGE CAROUSEL START -->
                    <div class="section-content">
                        <div class="owl-carousel owl-carousel-filter  owl-btn-vertical-center">
                            <!-- COLUMNS 1 --> 
                            <div class="item fadingcol building-col">
                                <div class="line-filter-outer">

                                     <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic1.jpg')}}" alt="">
                                    
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Construction</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                     
                                   
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- COLUMNS 2 --> 
                            <div class="item fadingcol  building-col">
                                <div class="line-filter-outer ">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic2.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Renovation</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                       
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                            
                            <!-- COLUMNS 3 --> 
                            <div class="item fadingcol building-col">
                                <div class="line-filter-outer">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic3.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Interior</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                         
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                            
                            <!-- COLUMNS 4 --> 
                            <div class="item fadingcol building-col">
                                <div class="line-filter-outer">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic4.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Construction</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                      
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- COLUMNS 5 --> 
                            <div class="item fadingcol interior-col">
                                <div class="line-filter-outer">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic5.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Renovation</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                      
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- COLUMNS 6 --> 
                            <div class="item fadingcol restaurant-col">
                                <div class="line-filter-outer">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic6.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Interior</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                      
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <!-- COLUMNS 1 --> 
                            <div class="item fadingcol building-col">
                                <div class="line-filter-outer">

                                     <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic1.jpg')}}" alt="">
                                    
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Construction</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                     
                                   
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- COLUMNS 2 --> 
                            <div class="item fadingcol  building-col">
                                <div class="line-filter-outer ">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic2.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Renovation</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                       
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20 text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                            
                            <!-- COLUMNS 3 --> 
                            <div class="item fadingcol building-col">
                                <div class="line-filter-outer">
                                    <img src="{{asset('assets/frontend/images/gallery/portrait-2/pic3.jpg')}}" alt="">
                                    <div class="hover-effect-1">
                                        <div class="hover-effect-content text-white">
                                            <h4 class="m-tb0 h-category">Interior</h4>
                                            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                    </div>                                         
                                    <div class="line-filter">
                                        <div class="filter-content  bg-white p-a30">
                                            <h4 class="m-t0 m-b20  text-uppercase">Modern minimalist house</h4>
                                            <a href="project-detail.html" class="v-button text-uppercase">Read More</a>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>                            
                            
    
                        </div>
                    </div>
                </div>
                
             </div>   
            <!-- LATEST PRJECTS SLIDER END --> 
                                    
            <!-- WELCOME SECTION START -->
            <div class="section-full small-device  p-tb80 bg-white  bg-no-repeat bg-bottom-right" style="background-image:url({{asset('assets/frontend/images/background/bg-4.jpg')}});">
                <div class="container">
                
                    <div class="section-content">

                        <div class="row">
                            <div class="col-md-5 col-sm-12">
                                <div class="why-choose-half-section">
                                    <div class="wt-media">
                                        <img src="{{asset('assets/frontend/images/people-1.png')}}" alt="">
                                    </div>
                                    
                               </div>
                            </div>                        
                            <div class="col-md-7 col-sm-12">
                                <!-- TITLE START -->
                                <div class="section-head text-left">
                                    <h4 class="text-primary text-uppercase wt-title-small">Our specialization</h4>
                                    <h2 class="text-uppercase font-45 font-weight-500 m-b5">Why choose us</h2>
                                </div>
                                <!-- TITLE END -->                              
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="wt-icon-box-wraper bg-white m-b30">
                                            <div class="icon-lg inline-icon  m-b50 text-left">
                                                <span class="icon-cell text-primary"><i class="fa flaticon-trophy"></i></span>
                                            </div>
                                            <div class="icon-content bold-title">
                                                <h4 data-title="01" class="wt-tilte text-uppercase font-weight-600 m-b20" >Consecutive Award winning</h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and type setting.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="wt-icon-box-wraper bg-white m-b30">
                                            <div class="icon-lg inline-icon m-b50 text-left">
                                                <span class="icon-cell text-primary"><i class="fa flaticon-sketching"></i></span>
                                            </div>
                                            <div class="icon-content bold-title">
                                                <h4  data-title="02" class="wt-tilte text-uppercase font-weight-600 m-b20">we are creative designers</h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and type setting.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="wt-icon-box-wraper bg-white m-b30">
                                            <div class="icon-lg inline-icon m-b50 text-left">
                                                <span class="icon-cell text-primary"><i class="fa flaticon-diamond"></i></span>
                                            </div>
                                            <div class="icon-content bold-title">
                                                <h4 data-title="03" class="wt-tilte text-uppercase font-weight-600 m-b20">heigh quality products</h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and type setting.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="wt-icon-box-wraper  bg-white m-b30">
                                            <div class="icon-lg inline-icon m-b50 text-left">
                                                <span class="icon-cell text-primary"><i class="fa flaticon-support"></i></span>
                                            </div>
                                            <div class="icon-content bold-title">
                                                <h4 data-title="04" class="wt-tilte text-uppercase font-weight-600 m-b20">24/7 customer support</h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and type setting.</p>
                                            </div>
                                        </div>
                                    </div>                                                                                                            
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>   
            <!-- WELCOME  SECTION END -->  

            <!-- OUR TEAM START -->
            <div class="section-full small-device  p-t80 bg-gray">
                <div class="container">
                

                    <!-- TITLE START -->
                    <div class="section-head text-left">
                        <h4 class="text-primary text-uppercase wt-title-small">Our best team</h4>
                        <h2 class="text-uppercase font-45 font-weight-500 m-b5">Our team</h2>
                    </div>
                    <!-- TITLE END --> 
                   
     
                    <!-- IMAGE CAROUSEL START -->
                    <div class="row">
                        
                            <!-- COLUMNS 1 -->
                            <div class="col-md-4 col-sm-6  col-xs-6 col-xs-100pc m-t15 m-b90">
                                <div class="wt-team-one">
                                    <div class="wt-team-media">
                                        <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/our-team5/pic1.jpg')}}" alt=""></a>
                                   
                                        <div class="social-overlay">
                                            <div class="team-social-center">
                                                <ul class="team-social-icon">
                                                    <li><a href="javascript:void(0);" class="fa fa-facebook"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-twitter"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-linkedin"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-youtube"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-instagram"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                                                              
                                    </div>
                                    <div class="wt-team-info text-center p-tb20 p-lr50">
                                        <h4 class="wt-team-title text-uppercase font-weight-600"><a href="javascript:void(0);">Richard Wagner</a></h4>
                                        <p class="m-b10">Contractor</p>
                                    </div>
                                </div>
                            </div>
                            <!-- COLUMNS 2 -->
                            <div class="col-md-4 col-sm-6 col-xs-6 col-xs-100pc m-t15 m-b90">
                                <div class="wt-team-one">
                                    <div class="wt-team-media ">
                                        <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/our-team5/pic2.jpg')}}" alt=""></a>
                                        
                                        <div class="social-overlay">
                                            <div class="team-social-center">
                                                <ul class="team-social-icon">
                                                    <li><a href="javascript:void(0);" class="fa fa-facebook"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-twitter"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-linkedin"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-youtube"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-instagram"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                                                                
                                    </div>
                                    <div class="wt-team-info text-center  p-tb20 p-lr50">
                                        <h4 class="wt-team-title text-uppercase font-weight-600"><a href="javascript:void(0);">Lisa Anderson</a></h4>
                                        <p class="m-b10">Contractor</p>
                                    </div>
                                </div>
                            </div>
                            <!-- COLUMNS 3 -->
                            <div class="col-md-4 col-sm-12 col-xs-12 m-t15 m-b90">
                                <div class="wt-team-one">
                                    <div class="wt-team-media">
                                        <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/our-team5/pic3.jpg')}}" alt=""></a>
                                        
                                        <div class="social-overlay">
                                            <div class="team-social-center">
                                                <ul class="team-social-icon">
                                                    <li><a href="javascript:void(0);" class="fa fa-facebook"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-twitter"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-linkedin"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-youtube"></a></li>
                                                    <li><a href="javascript:void(0);" class="fa fa-instagram"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                                                                
                                    </div>
                                    <div class="wt-team-info text-center p-tb20 p-lr50">
                                        <h4 class="wt-team-title text-uppercase font-weight-600"><a href="javascript:void(0);">Tommy Atkins</a></h4>
                                        <p  class="m-b10">Contractor</p>
                                    </div>
                                </div>
                            </div>
                
                            
                        </div>
                </div>
                
             </div>   
            <!-- OUR TEAM END -->
            
            <!-- CLIENT LOGO SECTION START -->
            <div class="section-full small-device  p-tb50">
                <div class="container">
                    <div class="section-content">
                    
                        <!-- TESTIMONIAL 4 START ON BACKGROUND -->   
                        <div class="section-content">
                             <div class="section-content p-tb10 owl-btn-vertical-center">
                                <div class="owl-carousel home-client-carousel-2">
                                
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w1.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w2.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w3.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w4.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w5.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="ow-client-logo">
                                            <div class="client-logo client-logo-media">
                                            <a href="javascript:void(0);"><img src="{{asset('assets/frontend/images/client-logo/w6.png')}}" alt=""></a></div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CLIENT LOGO  SECTION End -->
             
            <!-- TESTIMONIALS SECTION START -->
            <div class="section-full small-device  p-t80 p-b80 bg-gray">
                <div class="container">
                    <div class="section-content">
                    
                    <!-- TITLE START -->
                    <div class="section-head text-left">
                        <h4 class="text-primary text-uppercase wt-title-small">Client Says</h4>
                        <h2 class="text-uppercase font-45 font-weight-500 m-b5">Testimonials</h2>
                    </div>
                    <!-- TITLE END -->  
                    
                        <!-- TESTIMONIAL 4 START ON BACKGROUND -->   
                        <div class="section-content">
                            <div class="owl-carousel testimonial-home">
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic1.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Contractor</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic2.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Founder</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic1.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Founder</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic1.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Contractor</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic2.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Founder</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-5 bg-white">
                                        <div class="testimonial-pic-block radius-bx"> 
                                            <div class="testimonial-pic radius">
                                                <img src="{{asset('assets/frontend/images/testimonials/pic1.jpg')}}" width="132" height="132" alt="">
                                            </div>
                                        </div>
                                        <div class="testimonial-text clearfix">
                                        <div class="testimonial-paragraph">
                                            <span class="fa fa-quote-right text-primary"></span>
                                            <p>Nulla metus metus ullamcorper vel tincidunt sed euismod nibh Quisque volutpat condimentum velit class aptent taciti sociosqu ad litora torquent per conubia nostra.
                                            </p>
                                        </div>
                                        <div class="testimonial-detail clearfix">
                                            <strong class="testimonial-name text-black">RINDA SMITH</strong>
                                            <span class="testimonial-position p-t20">Founder</span>
                                        </div>
                                    </div>
                                        
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
            <!-- TESTIMONIALS SECTION END --> 
                                                 
            <!-- OUR BLOG START -->
            <div class="section-full small-device  p-t80 p-b80 bg-white">
                <div class="container">
                
                    <!-- TITLE START -->
                    <div class="section-head text-left">
                        <h4 class="text-primary text-uppercase wt-title-small">Recent blog</h4>
                        <h2 class="text-uppercase font-45 font-weight-500 m-b5">Latest News</h2>
                    </div>
                    <!-- TITLE END -->  
     
                    <!-- IMAGE CAROUSEL START -->
                    <div class="section-content">
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="blog-post latest-blog-1 date-style-1">
                                    <div class="wt-post-media wt-img-effect zoom-slow">
                                        <a href="javascript:;"><img src="{{asset('assets/frontend/images/blog/latest-blog/pic1.jpg')}}" alt=""></a>
                                    </div>
                                    <div class="wt-post-info  bg-white">
                                    
                                            <div class="wt-post-meta ">
                                                <ul>
                                                    <li class="post-author"><i class="fa fa-user"></i><strong>By Admin</strong></li>                                                
                                                    <li class="post-date"><i class="fa fa-calendar"></i><strong>20 Sep 2018 </strong></li>
                                                </ul>
                                            </div>                                    
                                            <div class="wt-post-title ">
                                                <h4 class="post-title"><a href="javascript:;">Your first source for architecture, dsign and art news</a></h4>
                                            </div>
                                            <div class="wt-post-readmore">
                                                <a href="Javascript:;" class="text-primary">Read More</a>
                                            </div>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4 col-sm-6">
                                <div class="blog-post latest-blog-1 date-style-1">
                                    <div class="wt-post-media wt-img-effect zoom-slow">
                                        <a href="javascript:;"><img src="{{asset('assets/frontend/images/blog/latest-blog/pic2.jpg')}}" alt=""></a>
                                    </div>
                                    <div class="wt-post-info bg-white">
                                        
                                            <div class="wt-post-meta ">
                                                <ul>
                                                    <li class="post-author"><i class="fa fa-user"></i><strong>By Admin</strong></li>                                                
                                                    <li class="post-date"><i class="fa fa-calendar"></i><strong>20 Sep 2018 </strong></li>
                                                </ul>
                                            </div>                                    
                                            <div class="wt-post-title ">
                                                <h4 class="post-title"><a href="javascript:;">Your first source for architecture, dsign and art news</a></h4>
                                            </div>
                                            <div class="wt-post-readmore">
                                                <a href="Javascript:;" class="text-primary">Read More</a>
                                            </div>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4 col-sm-12">
                                <div class="blog-post latest-blog-1 date-style-1">
                                    <div class="wt-post-media wt-img-effect zoom-slow">
                                        <a href="javascript:;"><img src="{{asset('assets/frontend/images/blog/latest-blog/pic3.jpg')}}" alt=""></a>
                                    </div>
                                    <div class="wt-post-info  bg-white">
                                        
                                            <div class="wt-post-meta ">
                                                <ul>
                                                    <li class="post-date"><i class="fa fa-calendar"></i><strong>20 Sep 2018 </strong></li>
                                                    <li class="post-author"><i class="fa fa-user"></i><strong>By Admin</strong></li>
                                                </ul>
                                            </div>                                    
                                            <div class="wt-post-title ">
                                                <h4 class="post-title"><a href="javascript:;">Your first source for architecture, dsign and art news</a></h4>
                                            </div>
                                            <div class="wt-post-readmore">
                                                <a href="Javascript:;" class="text-primary">Read More</a>
                                            </div>
                                     
                                    </div>
                                </div>
                            </div>                            
                                                                                                          
                        </div>
                    </div>
                </div>
                
             </div>   
            <!-- OUR BLOG END -->   

        </div>
        
        <!-- CONTENT END -->
        
    





<!-- FOOTER START -->
    <footer class="site-footer footer-large  footer-light   footer-wide text-black">
            
            <!-- FOOTER BLOCKES START -->  
            <div class="footer-top overlay-wraper">
                <div class="overlay-main"></div>
                
                
               
                
                <div class="container">
                    <div class="row">
                        <!-- ABOUT COMPANY -->
                        <div class="col-lg-5 col-md-5 col-sm-4">  
                            <div class="widget widget_about">
                                <!--<h4 class="widget-title">About Company</h4>-->
                                <div class="logo-footer clearfix p-b15">
                                    <a href="index.html"><img src="{{asset('assets/frontend/images/logo-dark.png')}}" alt=""></a>
                                </div>
                                <p>Today we can tell you, thanks to your passion, hard work creativity, and expertise, you delivered us the most beautiful house great looks. lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <ul class="social-icons f-social-link">
                                    <li><a href="javascript:void(0);" class="fa fa-google"></a></li>
                                    <li><a href="javascript:void(0);" class="fa fa-rss"></a></li>
                                    <li><a href="javascript:void(0);" class="fa fa-facebook"></a></li>
                                    <li><a href="javascript:void(0);" class="fa fa-twitter"></a></li>
                                    <li><a href="javascript:void(0);" class="fa fa-linkedin"></a></li>
                                </ul>                                    
                            </div>
                     
                        </div> 

                        <!-- TAGS -->
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="widget widget_address_outer m-b20">
                                <h4 class="widget-title">Contact Us</h4>
                                <ul class="widget_address">
                                    <li>92 Princess Road, parkvenue,Greater London, NW18JR, United Kingdom</li>
                                    <li>construxdemo@gmail.com</li>
                                    <li>(+0091) 912-3456-073</li>
                                    <li>(+0091) 912-3456-084</li>
                                </ul>
                           
                            </div>
                        </div>
                                                
                        <!-- USEFUL LINKS -->
                        <div class="col-lg-3 col-md-3 col-sm-4">
                            <div class="widget widget_services inline-links">
                                <h4 class="widget-title">Useful links</h4>
                                <ul>
                                    <li><a href="about-1.html">About</a></li>
                                    <li><a href="post-gallery.html">Gallery</a></li>
                                    <li><a href="news-grid.html">Blog</a></li>
                                    <li><a href="work-masonry.html">Portfolio</a></li>
                                    <li><a href="contact-1.html">Contact Us</a></li>
                                </ul>
                            </div>                           
                        </div>      

                        <!-- NEWSLETTER -->

                    </div>
                    <div class="m-b10">
                        <div class="wt-divider bg-gray-dark"><i class="icon-dot c-square"></i></div>
                    </div>
                    <div class="news-letter-footer">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="newsletter-f-left">
                                    <h4 class="text-uppercase m-t0 m-b10">Subscribe to our newsletter!</h4>
                                    <p>Never Miss Anything From Construx By Signing Up To Our Newsletter. </p>
                                </div>
                            </div>    
                            <div class="col-md-6 col-sm-6">
                                <div class="newsletter-f-right text-center">
                                    <form role="search" method="post">
                                        <div class="input-group">
                                            <input name="news-letter" class="form-control" placeholder="ENTER YOUR EMAIL" type="text">
                                            <span class="input-group-btn">
                                                <button type="submit" class="site-button site-btn-effect"><span>Submit</span></button>
                                            </span>
                                        </div>
                                     </form>
                                </div>
                            </div>
                        </div>                           
                    </div>
                </div>
            </div>
            <!-- FOOTER COPYRIGHT -->
            <div class="footer-bottom overlay-wraper">
                <div class="overlay-main"></div>
                <div class="container">
                    <div class="row">
                        <div class="wt-footer-bot-center">
                            <span class="copyrights-text">© 2018 Your Company. Designed By Thewebmax</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- FOOTER END -->

        <!-- BUTTON TOP START -->
        <button class="scroltop"><span class="fa fa-angle-up  relative" id="btn-vibrate"></span></button>
        
     
    </div>
 
<!-- LOADING AREA START ===== -->
<div class="loading-area">
    <div class="loading-box"></div>
    <div class="loading-pic">
        <div class="cssload-thecube">
            <div class="cssload-cube cssload-c1"></div>
            <div class="cssload-cube cssload-c2"></div>
            <div class="cssload-cube cssload-c4"></div>
            <div class="cssload-cube cssload-c3"></div>
        </div>
    </div>
</div>
<!-- LOADING AREA  END ====== -->

<!-- Footer Area End -->
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