
  <!-- Fin del slider-->





  <section class="swiper-container swiper-slider swiper-variant-1 bg-black" data-loop="false" data-autoplay="5500" data-simulate-touch="true">
    <div class="swiper-wrapper text-center">

      @foreach ( $sliders as $slider )
      <div class="swiper-slide" data-slide-bg="{{ Storage::url($slider->image) }}">
        <div class="swiper-slide-caption">
          <div class="container">
            <div class="row justify-content-md-center">
              <div class="col-md-11 col-lg-10 col-xl-9">
                <h2 class="slider-header" data-caption-animate="fadeInUp" data-caption-delay="0s">{{$slider->title1}}</h2>
                <p class="text-bigger slider-text" data-caption-animate="fadeInUp" data-caption-delay="100">{{$slider->title2}}</p>
                <div class="group-xl-responsive">
                  <a class="btn btn-xl btn-white-outline-variant-1" data-caption-animate="fadeInUp" data-caption-delay="250" href="{{$slider->url}}" data-custom-scroll-to="section-start-journey">ver Más</a>
                  <a class="btn btn-xl btn-primary-contrast" data-caption-animate="fadeInUp" data-caption-delay="250" href="{{ route('pagecontacs.index')}}" target="_blank">Contáctenos</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endforeach

    </div>
    <div class="swiper-scrollbar"></div>
    <div class="swiper-nav-wrap">
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>
    </div>
  </section>