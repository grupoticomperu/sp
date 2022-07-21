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



<section class="section section-50 section-md-bottom-75 section-xl-bottom-100 bg-whisper movi-background">
    <div class="container">
      <div class="row row-30">
        @foreach ($products as $product)
          <div class="col-md-6 col-lg-4 col-xl-3">

              
              <div class="product product-item-default">
                  <div class="product-slider">
                    <div class="product-slider-inner">
                        <div class="owl-carousel owl-style-minimal" data-autoplay="true" data-items="1" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="true" data-dots="true" data-animation-in="fadeIn" data-animation-out="fadeOut">
                          @foreach ($product->images as $image)
                          <div class="item">
                                <figure><img src="{{ url($image->url) }}" alt="Sacos de polipropileno" width="270" height="360"/>
                                </figure>
                          </div>
                          @endforeach

                        </div>
                    </div>
                  </div>
      
                  <div class="product-main">
                    <h6 class="product-header"><a href="{{ route('product.show', $product)}}">{{$product->titulo}}</a></h6>
                  </div>

                  <div class="product-footer">
                    <div class="product-footer-front pricing-wrap">
                      <p class="price-irrelevant"></p>
                      <p class="pricing-object pricing-object-sm price-current"><span class="small small-middle"></span><span class="price"></span><span class="small small-bottom"></span></p>
                    </div>
                    <div class="product-footer-behind"><a class="btn btn-icon btn-icon-left btn-primary product-control" href="{{ route('product.show', $product)}}"><span class="novi-icon icon icon-sm fa-shopping-cart"></span><span>Ver Más</span></a></div>
                  </div>


              </div>
              
          </div>
        @endforeach

      </div>

    </div>
</section>



	
@stop