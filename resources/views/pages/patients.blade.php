@extends('layouts.base')

@section('title')
    Для пациентов
@endsection

@section('content')

<div class="patience-container">
  <h1 class="price-header">Пациентам</h1>
  <!-- <div class="patience-intro">
    <h2 class="h1">Правила внутреннего распорядка пациентов</h2>
    <p class="desc">При посещении вам необходимо ознакомиться со следующей информацией.</p>
  </div> -->
  <div class="patience-info">
    <h2 class="h1">Запись на приём</h2>
    <p class="desc">Приём в медицинском центре «Симед» ведётся по
      предварительной записи. Вы можете записаться по телефону или
      оставить заявку на сайте.
    </p>
  </div>
  <div class="patience-info">
    <h2 class="h1">Важно</h2>
    <p class="desc">Рекомендуем приходить за 10 минут до приёма. В случае
      опоздания или необходимости переноса визита просим
      предупредить нас минимум за 1 час.
    </p>
  </div>

  <a href="{{  route('uzi-doc') }}">Подготовка к ультразвуковому исследованию</a>

  <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="price-container-ul">
          <div class="text">Документы</div>
          <div class="arrow-down">
            <img src="{{  asset('assets/front/images/price-arrow-down.svg') }}" alt="down" />
          </div>
          <div class="arrow-up">
            <img src="{{  asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
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
              <a href="{{  route('uzi-doc') }}">Подготовка к ультразвуковому исследованию</a>
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
  
  {{--<div class="">
    <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="price-container-ul">
          <div class="text">Документы</div>
          <div class="arrow-down">
            <img src="{{  asset('assets/front/images/price-arrow-down.svg') }}" alt="down" />
          </div>
          <div class="arrow-up">
            <img src="{{  asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
          </div>
        </div>
        <ul class="price-menu price-menu-hide">
          <li>
            <div class="li-text">
              <a href="{{ route('for-patients') }}">Правила внутреннего распорядка пациентов</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{  route('uzi-doc') }}">Подготовка к ультразвуковому исследованию</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{  route('av-policy') }}">Политика аудио- и видеонаблюдения</a>
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
    <div class="level-menu-first">
      <div class="level-menu-first-p">

        <div class="patience-intro">
          <p class="h1">Публичные договоры</p>
          <p class="desc">Для надлежащего оформления документов Пациенту следует прибыть в медицинский центр за 15 минут до начала приема.
            В случаях отказа от подписания договора медицинский центр вправе отказать в приеме.
          </p>
        </div>

        <div class="price-container-ul">
          <div class="text">Документы для оказания медицинских услуг</div>
          <div class="arrow-down">
            <img src="{{  asset('assets/front/images/price-arrow-down.svg') }}" alt="down"/>
          </div>
          <div class="arrow-up">
            <img src="{{  asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
          </div>
        </div>
        <ul class="price-menu price-menu-hide">
          <li>
            <div class="li-text">
              <!-- <a href="{{  route('med-agree') }}">Договор на оказание платных медицинских услуг</a> -->
              <a href="{{ asset('assets/docs/Публичный договор на оказание платных медицинских услуг ООО СиМедКомпани.pdf') }}">Договор на оказание платных медицинских услуг</a>
              <a href="{{ asset('assets/docs/Публичный договор на оказание платных медицинских услуг ООО СиМедКомпани.pdf') }}" download>Скачать PDF</a>
              <!-- <li>
                <div class="li-text">
                    <a href="{{ asset('assets/docs/Публичный договор на оказание платных медицинских услуг ООО СиМедКомпани.pdf') }}" download>Скачать PDF</a>
                </div>
            </li> -->
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{  route('offer-agree') }}">Договор оферты</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="{{ route('data-privacy') }}">Политика обработки персональных данных</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="price-container-ul">
          <div class="text">Специальные документы</div>
          <div class="arrow-down">
            <img src="{{  asset('assets/front/images/price-arrow-down.svg') }}" alt="down"/>
          </div>
          <div class="arrow-up">
            <img src="{{  asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
          </div>
        </div>
        <ul class="price-menu price-menu-hide">
          <li>
            <div class="li-text">
              <a href="index.html@p=380.html">Договор возмездного оказания услуг на проведение рентгенологических исследований</a>
            </div>
          </li>
          <li>
            <div class="li-text">
              <a href="index.html@p=450.html">Положение об оказании платных медицинских услуг несовершеннолетним пациентам</a>
            </div>
          </li>
        </ul>
      </div>

    </div>


    <!-- <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="patience-intro">
          <p class="h1">Гарантийное обслуживание</p>
          <p class="desc">
            В целях оказания стоматологических услуг высокого качества в стоматологическом центре действует положение о гарантийном обслуживании.
          </p>
        </div>
        <ul class="price-menu">
          <li class="custom">
            <div class="li-text">
              <a href="index.html@p=362.html">Положение о гарантийном обслуживании</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
	  
	  <div class="level-menu-first">
      <div class="level-menu-first-p">
        <div class="patience-intro">
          <p class="h1">Инструкции</p>
          <p class="desc">В случае возникновения вопросов, пожалуйста, ознакомьтесь с инструкциями.
          </p>
        </div>

        <div class="price-container-ul">
          <div class="text">Алгоритм действий по открытию диска с результатами рентген-диагностики</div>
          <div class="arrow-down">
            <img src="{{  asset('assets/front/images/price-arrow-down.svg') }}" alt="down"/>
          </div>
          <div class="arrow-up">
            <img src="{{  asset('assets/front/images/price-arrow-up.svg') }}" alt="up"/>
          </div>
        </div>
        <ol class="price-menu price-menu-hide instruction">
			<li>1. Мой компьютер.</li>
			<li>2. Открыть диск.</li>
			<li>3. Скопировать содержимое диска на компьютер.</li>
			<li>
				4. Открыть скопированное, нажав левой клавишей мыши на папку Viewer (приложение) дважды.<br>
				<img src="{{ asset('assets/front/img/step4.png') }}" alt="step4"/>
			</li>
			<li>
				5. Двойным нажатием левой клавиши мыши открываем необходимое вам изображение.<br>
				<img src="{{ asset('assets/front/img/step5.png') }}" alt="step5"/>
			</li>
        </ol>
      </div>
    </div> -->
	  
	  
  </div>--}}
  <div class="patience-footer">
    Благодарим Вас за выбор<br>
    <img src="{{ asset('assets/front/images/logo.png') }}" alt="logo"/>
  </div>
</div>

@endsection