@extends('layout')

@section('title')
{{ $title }}
@stop

@section('meta-title')
{{ $title }}
@stop

@section('meta-description')
{{ $title }}
@stop

@section('keywords')
{{ $title }}
@stop

@section('contenido')


<section class="section section-30 section-xxl-40 section-xxl-66 section-xxl-bottom-90 novi-background bg-gray-dark page-title-wrap" style="background-image: url(images/bg-shop.jpg);">
    <div class="container">
      <div class="page-title">
        <h2>{{ $title }}</h2>
      </div>
    </div>
</section>



<section class="section section-50 section-md-75 section-xl-bottom-120">
    <div class="container">
      <div class="row justify-content-xl-center">
        <div class="col-xl-10">
          <div class="product product-single">
            <div class="product-main">
              <div class="product-slider">
                <div class="owl-carousel owl-carousel-bottom owl-style-minimal" data-autoplay="true" data-items="1" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="true" data-dots="true" data-animation-in="fadeIn" data-animation-out="fadeOut">
                    @foreach ($product->images as $image)    
                        <div class="item"><img src="{{ url($image->url) }}" alt="{{ $product->titulo }}" width="346" height="721"/>
                        </div>
                    @endforeach



                </div>
              </div>
              <div class="product-body">
                
                <h4 class="product-header">{{ $product->titulo }}</h4>
                <div class="product-rating">
                  <ul class="list-rating">
                    <li><span class="novi-icon icon icon-xxs material-icons-star"></span></li>
                    <li><span class="novi-icon icon icon-xxs material-icons-star"></span></li>
                    <li><span class="novi-icon icon icon-xxs material-icons-star"></span></li>
                    <li><span class="novi-icon icon icon-xxs material-icons-star"></span></li>
                    <li><span class="novi-icon icon icon-xxs material-icons-star"></span></li>
                  </ul><span class="fw-light">1500 clientes vieron este producto</span>
                </div>
                <div class="accordion accordion-group accordion-group-light product-accordion" id="accordionOne">
                  <!--Bootstrap accordion-->
                  <article class="accordion-item accordion-custom accordion-light">
                    <div class="accordion-header" id="accordionOne-accordion-head-tmgohypb">
                      <div class="accordion-title">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#accordionOne-accordion-body-gkdaoyqf" aria-controls="accordionOne-accordion-body-gkdaoyqf" aria-expanded="true">Descripción<span class="accordion-arrow"></span>
                        </button>
                      </div>
                    </div>
                    <div class="accordion-collapse collapse show" id="accordionOne-accordion-body-gkdaoyqf" aria-labelledby="accordionOne-accordion-head-tmgohypb" data-bs-parent="#accordionOne">
                      <div class="accordion-body">
                        <p>{!! $product->resumen !!}</p>
                      </div>
                    </div>
                  </article>
                  <!--Bootstrap accordion-->
                  <article class="accordion-item accordion-custom accordion-light">
                    <div class="accordion-header" id="accordionOne-accordion-head-wfbskniv">
                      <div class="accordion-title">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accordionOne-accordion-body-nytcmhuw" aria-controls="accordionOne-accordion-body-nytcmhuw" aria-expanded="false">Medidas<span class="accordion-arrow"></span>
                        </button>
                      </div>
                    </div>
                    <div class="accordion-collapse collapse" id="accordionOne-accordion-body-nytcmhuw" aria-labelledby="accordionOne-accordion-head-wfbskniv" data-bs-parent="#accordionOne">
                      <div class="accordion-body">
                        <p>{!! $product->descripcion !!}</p>
                      </div>
                    </div>
                  </article>
                  <!--Bootstrap accordion-->
                  <article class="accordion-item accordion-custom accordion-light">
                    <div class="accordion-header" id="accordionOne-accordion-head-etrrbxic">
                      <div class="accordion-title">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accordionOne-accordion-body-fmiwvbhh" aria-controls="accordionOne-accordion-body-fmiwvbhh" aria-expanded="false">Envíos Gratis<span class="accordion-arrow"></span>
                        </button>
                      </div>
                    </div>
                    <div class="accordion-collapse collapse" id="accordionOne-accordion-body-fmiwvbhh" aria-labelledby="accordionOne-accordion-head-etrrbxic" data-bs-parent="#accordionOne">
                      <div class="accordion-body">
                        <p>We deliver our goods worldwide. No matter where you live, your order will be shipped in time and delivered right to your door or to any other location you have stated. The packages are handled with utmost care, so the ordered products will be handed to you safe and sound, just like you expect them to be.</p>
                      </div>
                    </div>
                  </article>
                </div>
                <ul class="product-info">
                  <li>
                    <dl>
                      <dt>Variedad de Colores y Medidas</dt>
                      <dd>
                        <div class="form-wrap form-wrap-color form-wrap-modern">
       
                        </div>
                      </dd>
                    </dl>
                  </li>
                  
                  <li>
                    <dl>
                      <dt>Stock Permanente</dt>
                      <dd>
                       
                      </dd>
                    </dl>
                  </li>
                </ul>
                <div class="product-panel">
                  <div class="pricing-wrap">
                    <div class="pricing-object pricing-object-md"></div>
                  </div><a class="btn btn-icon btn-icon-left btn-primary product-control" href="shop-cart.html"><span class="novi-icon icon icon-sm fa-shopping-cart"></span><span>Add to cart</span></a>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>



	
@stop