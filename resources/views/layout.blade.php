<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>@yield('title')</title>
  
  <META name="title" content="@yield('meta-title','Diseño de Páginas web, Desarrollo de páginas web') ">
	<META charset="utf-8" name="description" content="@yield('meta-description','Este es el Blog de TICOM')">
  <META name="keywords" content="@yield('keywords','Diseño de Páginas web, Desarrollo de páginas web')">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="/cdn-cgi/apps/head/3ts2ksMwXvKRuG480KNifJ2_JNM.js"></script><link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:400,700%7CLato:300,300italic,400,400italic,700,900%7CPlayfair+Display:700italic,900">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/style2.css">
    @stack('styles')
  </head>
  <body>

    <div class="div_btn_pal">
      <div class="palpitar"></div>
      <a class="btn_wht_escr" href="https://api.whatsapp.com/send?phone=51{{ $configurations->movil }}&text=Hola,%20tengo%20una%20consulta" target="_blank">
          <img class="img_wht_avz" src="/images/whatsapp.png">  
          <div class="info_num">                            
              <p class="txt_num_hover">{{ $configurations->movil }}</p>                            
          </div>                      
      </a>
    </div>

    <div class="preloader">
      <div><a class="brand brand-md" href="/"><img src="{{ Storage::url($configurations->logo) }}" alt="Saco de Polipropileno" width="386" height="114"/></a>
        <div class="page-loader-body">
          <div id="spinningSquaresG">
            <div class="spinningSquaresG" id="spinningSquaresG_1"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_2"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_3"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_4"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_5"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_6"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_7"></div>
            <div class="spinningSquaresG" id="spinningSquaresG_8"></div>
          </div>
        </div>
      </div>
    </div>


    <div class="page">
      <header class="page-head">
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-default" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true" data-lg-stick-up-offset="60px" data-xl-stick-up-offset="60px" data-xxl-stick-up-offset="60px">
            <div class="rd-navbar-inner">
              <div class="rd-navbar-panel">
                <button class="rd-navbar-toggle" data-custom-toggle=".rd-navbar-nav-wrap" data-custom-toggle-disable-on-blur="true">
                  <span></span>
                </button>
                <a class="rd-navbar-brand brand" href="/">
                  <img src="{{ Storage::url($configurations->logo) }}" alt="Sacos de polipropileno" width="183" height="57"/>
                </a>
              </div>
              <div class="rd-navbar-group rd-navbar-search-wrap">
                <div class="rd-navbar-nav-wrap">
                  <div class="rd-navbar-nav-inner">

                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item {{ request()->is('/') ? 'active' : ''}}"><a class="rd-nav-link" href="/">Inicio</a>
                      </li>
                      <li class="rd-nav-item {{ request()->is('nosotros') ? 'active' : ''}}"><a class="rd-nav-link" href="{{route('about.index')}}">Nosotros</a>
                      </li>
                      <li class="rd-nav-item {{ !Route::is('categoriaproductos.show')?: 'active' }}"><a class="rd-nav-link" href="#">Productos</a>
                        <ul class="rd-menu rd-navbar-dropdown">
                          @foreach ( $categorias as $categoria)
               
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="{{ route('categoriaproductos.show', $categoria)}}">{{ $categoria->nombre}}</a></li>
                          @endforeach
  
                        </ul>
                      </li>

                      <li class="rd-nav-item {{ !Route::is('sucategoryservices.show')?: 'active' }}"><a class="rd-nav-link" href="#">Servicios</a>
                        <ul class="rd-menu rd-navbar-dropdown">
                          @foreach ( $subcategories as $subcategory)
                          <li><a href="{{ route('sucategoryservices.show', $subcategory)}}">{{ $subcategory->name}}</a></li>
                          @endforeach
                        </ul>
                      </li>

                      <li class="rd-nav-item"><a class="rd-nav-link" href="{{ route('pages.blog')}}">Blog</a>
                        
                      </li>

                      <li class="rd-nav-item {{ request()->is('contactenos') ? 'active' : ''}}"><a class="rd-nav-link" href="{{route('pagecontacs.index')}}">Contáctenos</a>
                        
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-shop"><a class="novi-icon link-shop  fa-arrow-circle-o-down"  href="/images/descargar.pdf" target="_blank">Brochure</a></div>
              </div>
            </div>
          </nav>
        </div>
      </header>


      @yield('contenido')





      <section class="overflow-hidden">

        
        <div class="image-group-extended">
          <figure style="width: 13.125%;"><img src="images/landing-5-252x135.jpg" alt="" width="252" height="135"/>
          </figure>
          <figure style="width: 21.145%; margin-left: -5.73%; z-index: 3;"><img class="img-shadow" src="/images/landing-6-406x200.jpg" alt="" width="406" height="200"/>
          </figure>
          <figure style="width: 20.365%; margin-left: -7.83%; z-index: 1;"><img class="img-shadow" src="/images/landing-7-391x275.jpg" alt="" width="391" height="275"/>
          </figure>
          <figure style="width: 18.75%; margin-left: -3.28%; z-index: 0;"><img src="/images/landing-8-360x348.jpg" alt="" width="360" height="348"/>
          </figure>
          <figure style="width: 15.9375%; margin-left: -5.99%; z-index: 3;"><img class="img-shadow" src="/images/landing-9-306x200.jpg" alt="" width="306" height="200"/>
          </figure>
          <figure style="width: 20%; margin-left: -2.76%;"><img src="/images/landing-10-384x256.jpg" alt="" width="384" height="256"/>
          </figure>
          <figure style="width: 21.042%; margin-left: -3.33%; z-index: 3;"><img class="img-shadow" src="/images/landing-11-404x200.jpg" alt="" width="404" height="200"/>
          </figure>
        </div>
      </section>

{{--       <section class="parallax-container bg-black">
        <div class="parallax-content">
          <div class="section-60 section-md-75 section-xl-120">
            <div class="container text-center">
              <h3><span>Dedicated</span><em>24/7</em><span>Support</span></h3>
              <p class="text-black"><span class="d-inline-block" style="max-width: 380px;">Our Support Service is always available 24 hours a day, 7 days a week to help you create your own business solution.</span></p><a class="btn btn-xl btn-primary" href="https://www.templatemonster.com/website-templates/starbis.html" target="_blank">Get template</a>
            </div>
          </div>
        </div>
      </section> --}}

      <section class="section section-40 section-md-top-75 section-md-bottom-60 bg-cod-gray novi-background">
        <div class="container text-center text-md-start">
          <div class="row row-30 align-items-md-center justify-content-lg-center justify-content-xl-start">
            <div class="col-lg-11 col-xl-3"><a class="brand" href="/"><img src="{{ Storage::url($configurations->logo) }}" alt="" width="139" height="22"/></a></div>
            <div class="col-md-7 col-lg-6 col-xl-5">
              <div class="wrap-justify">
                <address class="contact-info text-start">
                  <div class="unit unit-horizontal unit-spacing-xs align-items-center justify-content-center unit-sm-left">
                    <div class="unit-left"><span class="novi-icon icon icon-md-custom icon-gunsmoke material-icons-place"></span></div>
                    <div class="unit-body fw-light"><a class="link-light-03 d-inline" href="#">{{ $configurations->address }}</a></div>
                  </div>
                </address>
                <address class="contact-info text-start">
                  <div class="unit unit-horizontal unit-spacing-xs align-items-center justify-content-center unit-sm-left">
                    <div class="unit-left"><span class="novi-icon icon icon-md-custom icon-gunsmoke material-icons-phone"></span></div>
                    <div class="unit-body fw-light">
                      <div class="link-wrap"><a class="link-light-03" href="tel:#">{{ $configurations->movil }}</a></div>
                      <div class="link-wrap"><a class="link-light-03" href="mailto:#">{{ $configurations->email }}</a></div>
                    </div>
                  </div>
                </address>
              </div>
            </div>
            <div class="col-md-5 col-xl-4 text-lg-center">
              <ul class="list-inline list-inline-xs">
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-facebook" href="{{ $configurations->facebook }}"></a></li>
               {{--  <li><a class="novi-icon icon icon-sm-custom link-tundora fa-twitter" href="#"></a></li>
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-google-plus" href="#"></a></li>
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-linkedin" href="#"></a></li>
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-skype" href="#"></a></li>
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-vine" href="#"></a></li> --}}
                <li><a class="novi-icon icon icon-sm-custom link-tundora fa-youtube" href="{{ $configurations->youtube }}"></a></li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      <footer class="page-foot page-foot-default section-35 bg-black novi-background text-center">
        <div class="container">
          <p class="rights small"><span>Sacos de Polipropileno</span><span>&nbsp;&#169;&nbsp;</span><span class="copyright-year"></span><span>Derechos Reservados</span><br class="d-md-none"><a class="link-primary" href="#">Lima - Perú</a></p>
        </div>
      </footer>
    </div>

    <div class="snackbars" id="form-output-global"></div>
    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
	
	<!--LIVEDEMO_00 -->


	
  <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-P9FT69');</script><!-- End Google Tag Manager --></body>
</html>
