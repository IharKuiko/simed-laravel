@extends('layouts.base')

@section('title')
    Документы
@endsection

@push('styles')
    <link rel="stylesheet" href="{{ asset('assets/front/css/new-styles/documents.css') }}">
@endpush

@section('content')

<div class="patience-container container">
  <h1 class="price-header">Документы</h1>
  
  <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="price-container-ul">
          <div class="text">Основные документы</div>
          <div class="arrow-down">
            <img src="{{ asset('assets/front/images/price-arrow-down.svg') }}" alt="down" />
          </div>
          <div class="arrow-up">
            <img src="{{ asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
          </div>
        </div>
        <ul class="price-menu price-menu-hide">
          <li>
            <div class="li-text">
              <a href="{{ asset('assets/docs/Публичный договор на оказание платных медицинских услуг ООО СиМедКомпани.pdf') }}">Договор на оказание платных медицинских услуг</a>
              <a href="{{ asset('assets/docs/Публичный договор на оказание платных медицинских услуг ООО СиМедКомпани.pdf') }}" download>Скачать PDF</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{ asset('assets/docs/Свидетельство о государственной регистрации юридического лица  ООО СиМедКомпани.pdf') }}">Свидетельство о государственной регистрации юридического лица</a>
              <a href="{{ asset('assets/docs/Свидетельство о государственной регистрации юридического лица  ООО СиМедКомпани.pdf') }}" download>Скачать PDF</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{ asset('assets/docs/Лицензия на оказание услуг.pdf') }}">Лицензия на оказание услуг</a>
              <a href="{{ asset('assets/docs/Лицензия на оказание услуг.pdf') }}" download>Скачать PDF</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{ route('privacy-policy') }}">Политика конфиденциальности</a>
            </div>
          </li>
        </ul>
      </div>
    </div>



  <div class="patience-footer">
    Благодарим Вас за выбор<br>
    <img src="{{ asset('assets/front/images/logo.png') }}" alt="logo"/>
  </div>
</div>

@endsection
 
