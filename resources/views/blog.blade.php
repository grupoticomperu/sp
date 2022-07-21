@extends('layout')


@section('meta-title')
{{ $blogs->title }}
@stop


@section('contenido')

      <!-- Breadcrumbs-->



      <section class="section section-30 section-xxl-40 section-xxl-66 section-xxl-bottom-90 novi-background bg-gray-dark page-title-wrap" style="background-image: url(images/bg-blog.jpg);">
        <div class="container">
          <div class="page-title">
            <h2>Blog</h2>
          </div>
        </div>
      </section>
      <section class="section section-50 section-md-75 section-xl-100">
        <div class="container">
          <div class="row row-30 justify-content-md-center justify-content-lg-start">
            <div class="col-md-9 col-lg-6 height-fill">
              <article class="post-block">
                <div class="post-image"><img src="images/blog-grid-1-570x253.jpg" alt="" width="570" height="253"/>
                </div>
                <div class="post-body">
                  <h4 class="post-header"><a href="blog-post.html">5 Steps to Blog’s Success</a></h4>
                  <ul class="post-meta">
                    <li class="object-inline"><span class="text-style-2">by</span><span>Joan Williams</span></li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-query_builder"></span>
                      <time datetime="2021-01-01">5 days ago</time>
                    </li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-loyalty"></span>
                      <ul class="list-tags-inline">
                        <li><a href="#">Business</a></li>
                        <li><a href="#">Blog</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </article>
            </div>
            <div class="col-md-9 col-lg-6 height-fill">
              <article class="post-block">
                <div class="post-image"><img src="images/blog-grid-2-570x253.jpg" alt="" width="570" height="253"/>
                </div>
                <div class="post-body">
                  <h4 class="post-header"><a href="blog-post.html">Making Money Online with Your Computer Only</a></h4>
                  <ul class="post-meta">
                    <li class="object-inline"><span class="text-style-2">by</span><span>Tom Park</span></li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-query_builder"></span>
                      <time datetime="2021-01-01">5 days ago</time>
                    </li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-loyalty"></span>
                      <ul class="list-tags-inline">
                        <li><a href="#">Business</a></li>
                        <li><a href="#">Startup</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </article>
            </div>
            <div class="col-md-9 col-lg-6 height-fill">
              <article class="post-block">
                <div class="post-image"><img src="images/blog-grid-3-570x253.jpg" alt="" width="570" height="253"/>
                </div>
                <div class="post-body">
                  <h4 class="post-header"><a href="blog-post.html">How to Create Perfect Color Combinations</a></h4>
                  <ul class="post-meta">
                    <li class="object-inline"><span class="text-style-2">by</span><span>John Miller</span></li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-query_builder"></span>
                      <time datetime="2021-01-01">5 days ago</time>
                    </li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-loyalty"></span>
                      <ul class="list-tags-inline">
                        <li><a href="#">Design</a></li>
                        <li><a href="#">Color</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </article>
            </div>
            <div class="col-md-9 col-lg-6 height-fill">
              <article class="post-block">
                <div class="post-image"><img src="images/blog-grid-4-570x253.jpg" alt="" width="570" height="253"/>
                </div>
                <div class="post-body">
                  <h4 class="post-header"><a href="blog-post.html">10 Type Rules for an Excellent User Experience</a></h4>
                  <ul class="post-meta">
                    <li class="object-inline"><span class="text-style-2">by</span><span>Julien Miro</span></li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-query_builder"></span>
                      <time datetime="2021-01-01">5 days ago</time>
                    </li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-loyalty"></span>
                      <ul class="list-tags-inline">
                        <li><a href="#">Type</a></li>
                        <li><a href="#">Tips</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </article>
            </div>
            <div class="col-md-9 col-lg-6 height-fill">
              <article class="post-block">
                <div class="post-image"><img src="images/blog-grid-5-570x253.jpg" alt="" width="570" height="253"/>
                </div>
                <div class="post-body">
                  <h4 class="post-header"><a href="blog-post.html">What Design Thinking is</a></h4>
                  <ul class="post-meta">
                    <li class="object-inline"><span class="text-style-2">by</span><span>Amelia Anderson</span></li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-query_builder"></span>
                      <time datetime="2021-01-01">5 days ago</time>
                    </li>
                    <li class="object-inline"><span class="novi-icon icon icon-xxs icon-white material-icons-loyalty"></span>
                      <ul class="list-tags-inline">
                        <li><a href="#">Website</a></li>
                        <li><a href="#">Design</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </article>
            </div>
          </div>
          <div class="pagination-custom-wrap text-center">
            <ul class="pagination-custom">
              <li><a href="#">Prev</a></li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </div>
        </div>
      </section>




























      <section class="breadcrumbs-custom">
        <div class="breadcrumbs-custom__aside bg-image context-dark" style="background-image: url({{ Storage::url($blogs->image) }});">
          <div class="container">
            <h2 class="breadcrumbs-custom__title">Blog</h2>
          </div>
        </div>
        <div class="breadcrumbs-custom__main bg-gray-light">
          <div class="container">
            <ul class="breadcrumbs-custom__path">
              <li><a href="/">Home</a></li>
              <li class="active">Blog</li>
            </ul>
          </div>
        </div>
      </section>


            <section class="section section-lg bg-white text-center">



              <div class="container">
                
              
              @isset($title)

                <p class="custom-heading-line heading-8">{{ $title }}</p>
                 
              @endisset 
                   

                <article class="blog-layout mt-4">
                  <div class="blog-layout__main">

                    <!-- Post Classic-->


                    @foreach ($posts as $post )

                   {{--  @include( $post->viewType('home') ) --}}

                       <article class="post-classic">        
                        <h3 class="post-classic__title"><a href="{{ route('posts.show', $post) }}">{{ $post->title }} </a></h3>
                        <ul class="post-classic__meta">
                          <li><span class="icon mdi mdi-calendar-blank"></span><a href="{{ route('posts.show', $post) }}">
                              <time datetime="2022">{{ $post->published_at }}</time></a></li>
                        
                          <li><span class="icon mdi mdi-account"></span><span>por </span><a href="#">{{ $post->owner->name }}</a></li>
                        </ul>

               {{--          @include( $post->viewType('home') ) --}}


                        <div class="post-classic__media"><a class="post-classic__figure" href="{{ route('posts.show', $post) }}">
                          
                           @if ($post->photos->first())
                          <img class="post-classic__image" src="{{ $post->photos->first()->url  }}" alt="{{ $post->title }}" width="715" height="417"/></a></div>
                          @endif 
                          
                          <a href=" {{ route('posts.show', $post) }}" class="text-uppercase c-green button button-block button-secondary button-ujarak">ver más</a>
             
                          @include('posts.tags')

                          <p>{!! $post->excerpt !!}</p>

                      </article> 
                    @endforeach  

                    

                    

                    <div class="mt-4">
                      {{ $posts->links() }}
                    </div>
                
                      
   
                 
                
                                   
                  </div>
                  
                  <div class="blog-layout__aside">
     
                    <div class="blog-layout__aside-item blog-layout__aside-item_bordered">
                      <p class="custom-heading-line heading-8">Categorias</p>
                      <ul class="list-categories">
                        @foreach ($categories as $category)
                        <li><a href="{{ route('categories.showp', $category)}}">{{ $category->name }}</a><span class="count"></span></li>
                        @endforeach

                      </ul>
                    </div>
                    <div class="blog-layout__aside-item blog-layout__aside-item_bordered">
                      <p class="custom-heading-line heading-8">Latest Posts</p>
                      <ul class="list-posts">
                        <li>
                          <!-- Post Line-->
                          <article class="post-line">
                            <time class="post-line__time" datetime="2019"><span class="post-line__time-day">29</span><span class="post-line__time-month">April</span></time>
                            <div class="post-line__title"><a href="blog-post.html">5 Ways to Design Your Website for Mobile Speed</a></div>
                          </article>
                        </li>
                        <li>
                          <!-- Post Line-->
                          <article class="post-line">
                            <time class="post-line__time" datetime="2019"><span class="post-line__time-day">15</span><span class="post-line__time-month">May</span></time>
                            <div class="post-line__title"><a href="blog-post.html">Creating and Managing an Advertising Campaign</a></div>
                          </article>
                        </li>
                        <li>
                          <!-- Post Line-->
                          <article class="post-line">
                            <time class="post-line__time" datetime="2019"><span class="post-line__time-day">06</span><span class="post-line__time-month">June</span></time>
                            <div class="post-line__title"><a href="blog-post.html">Creating an Appealing Brand Identity</a></div>
                          </article>
                        </li>
                      </ul>
                    </div>
                   
                    <div class="blog-layout__aside-item"><a class="link-banner" href="#"><img src="images/banner-305x362.jpg" alt="" width="305" height="362"/></a></div>
                  </div>
                </article>
              </div>
            </section>      



@stop      