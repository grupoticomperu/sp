@extends('layout')


@section('meta-title')
{{ $pagescontacts->title }}
@stop


@section('contenido')

      <!-- Breadcrumbs-->

      <section class="section section-30 section-xxl-40 section-xxl-66 section-xxl-bottom-90 novi-background bg-gray-dark page-title-wrap" style="background-image: url({{ Storage::url($pagescontacts->imagen) }});">
        <div class="container">
          <div class="page-title">
            <h2>Contact us</h2>
          </div>
        </div>
      </section>



      <section class="section section-60 section-md-top-90 section-md-bottom-100">
        <div class="container">
          <div class="row row-50 justify-content-md-between">
            <div class="col-lg-5 col-xl-4">
              <div class="inset-lg-right-15 inset-xl-right-0">
                <div class="row row-30 row-md-40">
                  <div class="col-md-10 col-lg-12">
                    <h3>Contactenos</h3>
                    <p class="offset-sm-top-40 text-secondary">
                      If you have any questions, just fill in the contact form, and we will answer you shortly. If you are living nearby, come visit Starbis in one of our comfortable offices.
                      
                    </p>
                  </div>
                  <div class="col-sm-12">
                    <div class="row row-30">
                      <div class="col-md-6 col-lg-12">
                        <h5>Dirección</h5>
                        <address class="contact-info">
                          <p class="text-uppercase">9863 - 9867 MILL ROAD, CAMBRIDGE, MG09 99HT.</p>
                          <dl class="list-terms-inline">
                            <dt>Teléfono</dt>
                            <dd><a class="link-secondary" href="tel:#">+1 800 603 6035</a></dd>
                          </dl>
                          <dl class="list-terms-inline">
                            <dt>E-mail</dt>
                            <dd><a class="link-primary" href="mailto:#">mail@demolink.org</a></dd>
                          </dl>
                        </address>
                      </div>
                      <div class="col-md-6 col-lg-12">
                        <h5>Centro de Soporte</h5>
                        <address class="contact-info">
                          <p class="text-uppercase">9870 ST VINCENT PLACE, GLASGOW, DC 45 FR 45</p>
                          <dl class="list-terms-inline">
                            <dt>Telephone</dt>
                            <dd><a class="link-secondary" href="tel:#">+1 800 603 6035</a></dd>
                          </dl>
                          <dl class="list-terms-inline">
                            <dt>E-mail</dt>
                            <dd><a class="link-primary" href="mailto:#">mail@demolink.org</a></dd>
                          </dl>
                        </address>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-7 col-xl-6">
              <h3>Escribenos</h3>

              @if(session()->has('flash'))
              <div class="alert alert-success "><mark>{{ session('flash') }}</mark></div>
              @endif

              {{-- <form class="rd-mailform form-modern" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php"> --}}
                
                <form method="post" action="{{ route('contacts.store') }}">
                  {{ csrf_field() }}
                  <div class="row align-items-md-end row-20 row-md-30">
                    <div class="col-md-12">
                      <div class="form-wrap">
                          <label >Nombres y Apellidos</label>
                        <input class="form-control" id="contact-name" type="text" name="nombres" value="{{old('nombres')}}" required data-constraints="@Required">
                        
                        {!! $errors->first('nombres', '<span class=error>:message</span>')!!}
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-wrap">
                          <label> Celular o Telefono </label>
                        <input class="form-control" id="contact-phone" type="text" name="celular" value="{{old('celular')}}" required data-constraints="@PhoneNumber @Required">
                        {!! $errors->first('celular', '<span class=error>:message</span>')!!}
                      </div>
                    </div>

                    <div class="col-md-12">
                      <div class="form-wrap">
                          <label for="contact-email">E-mail</label>
                        <input class="form-control" id="contact-email" type="email" name="email" value="{{old('email')}}" required data-constraints="@Email @Required">
                        
                        {!! $errors->first('email', '<span class=error>:message</span>')!!}
                      </div>
                    </div>

                    <div class="col-sm-12">
                      <div class="form-wrap">
                        <label>Mensaje</label>
                        <textarea class="form-control" rows= "5" id="contact-message" name="mensaje" required data-constraints="@Required"> {{old('mensaje')}} </textarea>
                        
                        @error('mensaje')
                        <mark> {{$message}} </mark>
                       @enderror
                        
                      </div>
                    </div>
      
                    <div class="col-md-12 mt-4">
                      <button class="btn btn-primary btn-block" type="submit">Enviar mensaje</button>
                    </div>
                  </div>
                </form>


            </div>
          </div>
        </div>
      </section>







@stop      