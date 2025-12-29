@extends('layouts.base')

@section('title')
    Главная
@endsection

@section('content')
    <div class="header">
        <div class="container">

            <div class="promo">
                <div class="promo-text">
                    <div class="promo-title">
                        С заботой о Вашем здоровье
                    </div>
                    <div class="promo-description">
                        «Симед» – представляет собой современный медицинский центр, оказывающий услуги по ультразвуковой диагностике и гинекологии. Оснащен самым современным высокотехнологичным медицинским оборудованием от лучших мировых производителей.
                    </div>
                    <div class="btn-record">
                        <button class="record btn">
                            Записаться на прием
                        </button>
                    </div>
                </div>
                <div class="promo-img">
                    <img src="{{ asset('assets/front/images/result.png') }}"
                                class="doctor-image" alt="doctors-main">
                </div>
            </div>
            <div class="promo-sub-title">
                Профессиональное медицинское обслуживание по самым высоким стандартам
            </div>
            <!-- <div class="flex">
                <div class="main-description">
                    <div class="title">
                        С заботой о Вашем здоровье
                    </div>
                    <div class="images images-mobile">
                        <div class="ellipse">

                        </div>
                        <img src="{{ asset('assets/front/images/result.png') }}"
                                class="doctor-image" alt="doctors-main">
                    </div>
                    <div class="description">
                        «Симед» – представляет собой современный медицинский центр, оказывающий услуги по ультразвуковой диагностике и гинекологии. Оснащен самым современным высокотехнологичным медицинским оборудованием от лучших мировых производителей.
                    </div>
                    <div class="btn-record">
                        <button class="record">
                            Записаться на прием
                        </button>
                    </div>
                </div>
                <div>
                    <div class="images images-desktop">
                        <div class="ellipse">

                        </div>
                        <img src="{{ asset('assets/front/images/result.png') }}"
                                class="doctor-image" alt="doctors-main">
                    </div>
                </div>
            </div>
            <div class="text">
                Профессиональное медицинское обслуживание по самым высоким стандартам
            </div> -->
        </div>
    </div>

    <div class="welcome">
        <div class="container">
            <div class="welcome-block">
                <div class="welcome-video">
                    <video width="320" height="560" controls>
                    <source src="{{  asset('assets/front/images/video/vid.mp4') }}" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
                </div>
                <div class="welcome-text">
                    <div class="main-title">
                        Добро пожаловать в <img src="{{ asset('assets/front/images/logo.webp') }}" alt="logo">
                    </div>
                    <div class="learn-more">
                        <a href="{{ route('about') }}">
                            Узнать о нас больше
                            <img src="{{ asset('assets/front/images/ar.svg') }}" alt="arrow"></a>
                    </div>
                </div>
            </div>
            
        </div>

    </div>

    {{--<div class="intro">
        <div class="flex container">
            <div class="inner-text mobile-text">
                Добро пожаловать в <img
                        src="{{ asset('assets/front/images/logo60.webp') }}"
                        alt="logo">
            </div>
            
            <video width="320" height="560" controls>
                <source src="{{  asset('assets/front/images/video/vid.mp4') }}" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <!-- <video src="{{  asset('assets/front/images/video/vid.mp4') }}"></video> -->
            <div class="text">
                <div class="inner-text desktop-text">
                    Добро пожаловать в <img
                            src="{{ asset('assets/front/images/logo.webp') }}"
                            alt="clinic">
                </div>
                <div class="learn-more">
                    <a href="about-us.html">
                        Узнать о нас больше
                        <img src="{{ asset('assets/front/images/ar.svg') }}" alt="arrow"></a>
                </div>
            </div>
        </div>
    </div>--}}

    <div class="services">
        <div class="container">
            <div class="main-title">
                Наши услуги
            </div>
            <div class="services-block">

                    <div class="service-item">
                        <div class="service-item-container">
                            <a href="{{ route('ultrasound') }}">
                                <div class="image">
                                    <img class="img-fluid" src="{{ asset('assets/front/images/uzi.webp') }}"
                                            alt="ultrasound">
                                </div>
                                <p>УЛЬТРАЗВУКОВАЯ ДАГНОСТИКА</p>
                            </a>
                        </div>
                    </div>

                    <div class="service-item">
                        <div class="service-item-container">
                            <a href="{{  route('ginecology')  }}">
                                <div class="image">
                                    <img class="img-fluid" src="{{ asset('assets/front/images/ginekologia-2048x1366.webp') }}"
                                            alt="ginecology">
                                </div>
                                <p>ГИНЕКОЛОГИЯ</p>
                            </a>
                        </div>
                    </div>

            </div>
            <div class="more">
                <a href="{{ route('services') }}">
                    Подробнее
                    <img src="{{ asset('assets/front/images/ar.svg') }}" alt="arrow">
                </a>
            </div>
        </div>
    </div>

    <div class="why-us">
        <div class="container">
            <div class="main-title">
                Почему выбирают нас
            </div>
            <div class="flex">
                <div class="list">
                    <ul>
                        
                        <li>
                            
                            <span>Высококвалифицированные специалисты с опытом работы от 5-ти лет.</span>
                        </li>
                        <li>
                           
                            <span>Удобное расположение в шаговой доступности от дома.</span>
                        </li>
                        <li>
                            
                            <span>Быстрая система записи по телефону, онлайн на сайте, через социальные сети.</span>
                        </li>
                        <li>
                            
                            <span>Высокий уровень сервисного обслуживая и поддержки.</span>
                        </li>
                        <li>
                            
                            <span>Индивидуальный подход к каждому пациенту.</span>
                        </li>
                    </ul>
                </div>
                <!-- <div class="benefits">
                    <div class="digit">
                        7
                    </div>
                    <div class="text">
                        Лет работы
                    </div>
                    <div class="digit">
                        15
                    </div>
                    <div class="text">
                        Ведущих специалистов
                    </div>
                    <div class="digit">
                        20 000+
                    </div>
                    <div class="text">
                        Довольных клиентов
                    </div>
                </div> -->
            </div>
        </div>
    </div>

    <div class="doctors-block">
        <div class="doctors-block-header">
            Они заботятся о Вас
        </div>
        <div class="doctor-block">
            @foreach($doctors as $doctor)
            <div class="doctor-item-container">
                <a href="{{ route('doctors_details', $doctor->slug) }}">

                    <div class="doctor-img">
                        <img src="{{ $doctor->photo }}" alt="doctor">
                    </div>
                    <div class="doctor-name">
                        <p>{{ $doctor->name }}</p>
                    </div>
                    <div class="doctor-specialization">
                        <p> {{ $doctor->specialization }}</p>
                    </div>
                    <div class="doctor-prof-category">
                        <p> {{ $doctor->professional_category }}</p>
                    </div>
                </a>
            </div>
            @endforeach
            
        </div>
        <div class="doctors-link">
            <div class="more">
                <a href="{{  route('doctors')  }}">
                    Наши специалисты
                    <img src="{{ asset('assets/front/images/ar.svg') }}"  alt="arrow">
                </a>
            </div>
        </div>
    </div>

    <div class="insurance-block">
        <div class="insurance-block-header">Медицинские услуги по страховке</div>
        <div class="owl-carousel">
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/image48.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/image49.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/image50.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/imkliva1.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/image33.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/image48.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/neftstrach1.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/image50.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/imkliva1.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/image33.png') }}"
                        alt="insurance">
            </div>
            <!-- <div class="item">
                <img src="{{  asset('assets/front/img/ingosstrah.png') }}"
                        alt="insurance">
            </div> -->
        </div>
        <div class="insurance-description">
            <p>
                Мы позаботились о Вашем удобстве и заключили договора на оказание медицинских услуг со
                страховыми компаниями
            </p>
            
        </div>

       

            <div class="doctors-link">
            <div class="more">
                <a href="{{  route('insurance')  }}">
                    Подробнее
                    <img src="{{ asset('assets/front/images/ar.svg') }}"  alt="arrow">
                </a>
            </div>
        </div>
    </div>

    <!-- <div class="main-photo">
        <img src="{{ asset('assets/front/img/uklinik-team.jpg') }}" alt="Team">
    </div> -->
    
@endsection