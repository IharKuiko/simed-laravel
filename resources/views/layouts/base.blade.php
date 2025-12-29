<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    @if(isset($ogData))
    <meta name="description" content="{{ $ogData['og:description'] }}">
    <meta name="keywords" content="медицинский центр, симед, {{ $ogData['og:title'] }}">
    @else
    <meta name="description" content="Медицинский центр Симед - качественная медицинская помощь">
    <meta name="keywords" content="медицинский центр, симед, медицина, врачи">
    @endif

    

    @if(isset($ogData))
    <!-- Open Graph meta tags -->
    <meta property="og:title" content="{{ $ogData['og:title'] }}">
    <meta property="og:description" content="{{ $ogData['og:description'] }}">
    <meta property="og:type" content="{{ $ogData['og:type'] }}">
    <meta property="og:url" content="{{ $ogData['og:url'] }}">
    <meta property="og:image" content="{{ $ogData['og:image'] }}">
    <meta property="og:site_name" content="{{ $ogData['og:site_name'] }}">
    <meta property="og:locale" content="{{ $ogData['og:locale'] }}">
    
    <!-- Дополнительные OG-теги для профилей и статей -->
    @if(isset($ogData['profile:first_name']))
    <meta property="profile:first_name" content="{{ $ogData['profile:first_name'] }}">
    @endif
    @if(isset($ogData['profile:last_name']))
    <meta property="profile:last_name" content="{{ $ogData['profile:last_name'] }}">
    @endif
    @if(isset($ogData['article:section']))
    <meta property="article:section" content="{{ $ogData['article:section'] }}">
    @endif
    
    <!-- Twitter Card meta tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $ogData['og:title'] }}">
    <meta name="twitter:description" content="{{ $ogData['og:description'] }}">
    <meta name="twitter:image" content="{{ $ogData['og:image'] }}">
    @endif

    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

  <link rel="icon" href="{{ asset('assets/front/images/favicon1.ico') }}" type="image/x-icon" />
  <link rel="shortcut icon" href="{{ asset('assets/front/img/logo_hd.ico') }}" type="image/x-icon" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/g/jquery.owlcarousel@1.31(owl.carousel.css+owl.theme.css)">
  <script src="https://cdn.jsdelivr.net/g/jquery@2.2.4,jquery.owlcarousel@1.31"></script>

  <script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
  <link href="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick-theme.css" rel="stylesheet"/>

  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    
    <!-- <style id='classic-theme-styles-inline-css' type='text/css'>

      .wp-block-button__link{color:#fff;background-color:#32373c;border-radius:9999px;box-shadow:none;text-decoration:none;padding:calc(.667em + 2px) calc(1.333em + 2px);font-size:1.125em}.wp-block-file__button{background:#32373c;color:#fff;text-decoration:none}

    </style> -->
<script src="{{ asset('assets/front/js/main.js') }}" id="main-js"></script>

    <link rel="stylesheet" href="{{ asset('assets/front/css/style.css') }}">
    @stack('styles')
    <title>Simed :: @yield('title')</title>
</head>
<body>
    @include('layouts.parts.header')

<div class="mobile-block">
</div>
<div class="pop-it-record">
  <div class="record-header">
    <div class="close">
      <img src="{{  asset('assets/front/images/close.svg') }}" alt="close" />
    </div>
  </div>
  <div class="record-content">
    <p class="record-h1">
      Записаться на прием можно по номеру:
    </p>
    <div class="phone-numbers">
      
      <div class="flex">
        <a href="tel:+375291030104">
          <img src="{{ asset('assets/front/images/noun-phone-2.svg') }}" alt="phone" />
          <p>+375 (29) 103-01-04</p>
        </a>
      </div>
    </div>
    <div class="record-text">
      <p>Мы находимся по адресу:</p>
      <p>г.Речица, ул. Строителей, 2а, каб.47</p>
    </div>
    <p class="record-h1">
      Ждем Вас!
    </p>
  </div>
</div>

    @yield('content')

    @include('layouts.parts.footer')

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->
    <!-- <script src="{{ asset('assets/front/swiper/package/swiper-bundle.min.js') }}"></script> -->
</body>
</html>