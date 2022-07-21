@extends('layout')

@section('title')
{{ $configurations->metatitle }}
@stop

@section('meta-title')
{{ $configurations->metatitle }}
@stop

@section('meta-description')
{{ $configurations->metadescription }}
@stop

@section('keywords')
{{ $configurations->keywords }}
@stop




@section('contenido')

	@include('parts.slider')
 	@include('parts.offer')
{{-- 	@include('parts.toolkit')  --}}



<section class="section section-60 section-md-100 bg-accent novi-background">
	<div class="container text-center text-lg-start">
	  <div class="row row-30 align-items-md-center justify-content-lg-center">
		<div class="col-lg-8 col-xl-7">
		  <h3>Fabricamos pedidos especiales</h3>
		</div>
		<div class="col-lg-4 col-xl-3"><a class="btn btn-xl btn-black-outline" href="{{route('pagecontacs.index')}}" target="_blank">Contáctenos</a></div>
	  </div>
	</div>
  </section>



<section class="parallax-container bg-black">
	<div class="parallax-content">
	  <div class="section-60 section-md-100 section-xl-120">
		<div class="container text-center">
		  <div class="row">
			<div class="col-sm-12">
	{{-- 			<a class="link-circle link-white" data-lightgallery="item" href="https://www.youtube.com/watch?v=1UWpbtUupQQ">
					<span class="novi-icon icon icon-xl fl-36-slim-icons-play90"></span>
				</a> --}}
			  <h3>SACOS DE POLIPROPILENO</h3>
			  <p class="big fw-light"><span class="d-inline-block" style="max-width: 740px;">
				Venta y Fabricación de Sacos para la industria, agricultura, pesquería, minería, comercio, ...	
			</span></p>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </section>



@stop

