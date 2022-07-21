@extends('layout')

@section('title')
{{ $abouts->title }}
@stop

@section('meta-title')
{{ $abouts->title }}
@stop

@section('meta-description')
{{ $abouts->description }}
@stop

@section('keywords')
{{ $abouts->keywords }}
@stop

@section('contenido')




<section class="section section-30 section-xxl-40 section-xxl-66 section-xxl-bottom-90 novi-background bg-gray-dark page-title-wrap" style="background-image: url({{ Storage::url($abouts->imagen1) }});">
  <div class="container">
    <div class="page-title">
      <h2>Nosotros</h2>
    </div>
  </div>
</section>



<section class="section section-66 section-md-90 section-xl-bottom-120 novi-background">
  <div class="container">
    <h3>SACOS DE POLIPROPILENO</h3>
    <div class="row row-40 justify-content-lg-between">
      <div class="col-md-6 col-xl-5 text-secondary">
        <div class="inset-md-right-15 inset-xl-right-0">
          <p>{!! $abouts->our !!}</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="shift-sm-top-1">
          <!--Linear progress bar-->
          <div class="progress-linear progress-linear-red">
            <div class="progress-linear-header">
              <p class="progress-linear-title">SACOS DE POLIPROPILENO</p><span class="progress-linear-counter">100</span>
            </div>
            <div class="progress-linear-body">
              <div class="progress-linear-bar"></div>
            </div>
          </div>
          <!--Linear progress bar-->
          <div class="progress-linear progress-linear-blue">
            <div class="progress-linear-header">
              <p class="progress-linear-title">MAXIBIGBAG</p><span class="progress-linear-counter">100</span>
            </div>
            <div class="progress-linear-body">
              <div class="progress-linear-bar"></div>
            </div>
          </div>
          <!--Linear progress bar-->
          <div class="progress-linear progress-linear-yellow">
            <div class="progress-linear-header">
              <p class="progress-linear-title">MALLAS RASCHELL</p><span class="progress-linear-counter">100</span>
            </div>
            <div class="progress-linear-body">
              <div class="progress-linear-bar"></div>
            </div>
          </div>
          <!--Linear progress bar-->
          <div class="progress-linear progress-linear-green">
            <div class="progress-linear-header">
              <p class="progress-linear-title">SERVICIO DE IMPRESIÓN</p><span class="progress-linear-counter">100</span>
            </div>
            <div class="progress-linear-body">
              <div class="progress-linear-bar"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>









      <!-- General Info-->
    






@stop
