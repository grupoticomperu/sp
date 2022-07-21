
  <section class="parallax-container bg-black" data-parallax-img="images/parallax-1.jpg">
    <div class="parallax-content">
      <div class="section-50 section-md-75 section-xl-top-100 section-xl-bottom-120">
        <div class="container">
          <div class="row justify-content-md-center">
            <div class="col-md-11 col-lg-10 col-xl-9 text-center">
              <h3><span>Sacos </span><em>de</em><span>Polipropileno</span></h3>
              <p>
                Check out an incredible set ofmmon reallows you to take control of almost every element and section of the site.
                
              </p>
            </div>
          </div>
          <div class="row row-40 row-xl-60 offset-xl-top-60">
            @foreach ($offers as $offer )
              <div class="col-md-6 col-lg-4">
                <article class="icon-box-vertical"><span class="novi-icon icon icon-primary icon-md material-icons-security"></span>
                  <h5 class="icon-box-header"><a href="#">{{$offer->title}}</a></h5>
                  <p>{{ $offer->description}}</p>
                </article>
              </div>
            @endforeach             
           

          </div>
          <div class="row offset-xl-top-60">
            <div class="col-sm-12 text-center"><a class="btn btn-xl btn-primary" href="{{ route('pagecontacs.index')}}" target="_blank">Contáctenos Ahora</a></div>
          </div>
        </div>
      </div>
    </div>
  </section>