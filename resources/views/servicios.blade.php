@extends('layout')


@section('title')
{{ $service->title }}
@stop

@section('meta-title')
{{ $service->title }}
@stop

@section('meta-description')
{{ $service->shortdescription }}
@stop

@section('keywords')
{{ $service->shortdescription }}
@stop


@section('contenido')





      <section class="section section-30 section-xxl-40 section-xxl-66 section-xxl-bottom-90 novi-background bg-gray-dark page-title-wrap" style="background-image: url({{ Storage::url($service->imagen1) }});">
        <div class="container">
          <div class="page-title">
            <h2>{{ $service->title }}</h2>
          </div>
        </div>
      </section>




       

      <section class="bg-black">
        <div class="divider-spectrum"></div>
        <div class="section-66 section-md-90">
          <div class="container">
            <h3 class="text-center">What We Do</h3>
            <p class="block-centered text-center" style="max-width: 540px;">We will take care of your web design project regardless of its level of complexity. We are not afraid of difficult tasks – hundreds of our satisfied clients can prove that.</p>

            <div class="row row-50 row-xl-60">
              @foreach ($whies as $why)
              <div class="col-sm-6 col-lg-4">
                <article class="icon-box-vertical icon-box-vertical-sm"><span class="novi-icon icon icon-primary icon-md material-icons-phonelink"></span>
                  <h5 class="icon-box-header"><a href="#">{{$why->title}}</a></h5>
                  <p>{{$why->description}}</p>
                </article>
              </div>
              @endforeach
              
             
            </div>

          </div>
        </div>
        <div class="divider-spectrum"></div>
      </section>













      <section class="section section-60 section-md-90 bg-white bg-image bg-image-1 novi-background" style="background-image: url({{ Storage::url($service->imagen2) }});">
        <div class="container">
          <div class="row justify-content-lg-start">
            <div class="offset-md-4 col-md-8 offset-lg-5 col-lg-6 offset-xl-6 col-xl-5">
              <h3>Why Choose Us</h3>
              <div class="offset-top-4">
                <p>{!! $service->shortdescription !!}</p>
                <a class="btn btn-silver-outline" href="{{route('pagecontacs.index')}}">Contactar</a>
              </div>
            </div>
          </div>
        </div>
      </section>


      <section class="section section-60 section-md-90 bg-white bg-image bg-image-1 novi-background" style="background-image: url({{ Storage::url($service->imagen3) }});">
        <div class="container">
          <div class="row justify-content-lg-start">
            <div class="offset-md-4 col-md-8 offset-lg-5 col-lg-6 offset-xl-6 col-xl-5">
              <h3>Why Choose Us</h3>
              <div class="offset-top-4">
                <p>{!! $service->shortdescription !!}</p>
                <a class="btn btn-silver-outline" href="{{route('pagecontacs.index')}}">Contactar</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="section section-60 section-md-100 bg-accent novi-background">
        <div class="container text-center text-lg-start">
          <div class="row row-30 align-items-md-center justify-content-lg-center">
            <div class="col-lg-8 col-xl-7">
              <h3>{{ $service->titlemarket }}</h3>
            </div>
            <div class="col-lg-4 col-xl-3"><a class="btn btn-xl btn-black-outline" href="{{ route('pagecontacs.index')}}" target="_blank">{{ $service->urlmarket }}</a></div>
          </div>
        </div>
      </section>



	
@stop
