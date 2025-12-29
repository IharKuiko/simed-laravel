@extends('layouts.base')

@section('title')
    Медицинские услуги по страховке
@endsection


@section('content')
    <div class="insurance-intro">
        <div class="description">
            <div class="text">
                <div class="inner-text">
                    Медицинские услуги по страховке
                </div>
                <div class="first-text">
                    Добровольное медицинское страхование (ДМС) – это удобный и бесплатный способ получения качественной медицинской помощи.
                </div>
                <div class="first-text">
                    Для того, чтобы воспользоваться возможностью обследования и лечения с помощью ДМС, вам необходимо связаться с вашей страховой компанией или самостоятельно записаться на прием в медицинский центр.
                </div>
                <div class="first-text">
                    До визита страховая компания направляет в медицинский центр гарантийное письмо (направление) с указанием объема медицинских услуг, которые можно оказать данному застрахованному лицу.
                </div>
                <div class="first-text">
                    Услуги оказываются строго в соответствии с гарантийными письмами (направлениями). Для внесения дополнений в объем оказываемых услуг застрахованному клиенту необходимо связаться со страховой компанией.
                </div>
            </div>
        </div>
    </div>
    <div class="insurance-treatment-date">
        <div class="title">
            Мы сотрудничаем со следующими страховыми компаниями:
        </div>
    </div>
    <div class="insurance-photo-gallery">
        <div class="container-photo">
            <div class="gallery">
                <figure class="gallery__item gallery__item--1">
                    <img src="{{  asset('assets/front/img/slider/image50.png') }}"
                         class="gallery__img belstr" alt="belstr">
                </figure>
                <figure class="gallery__item gallery__item--2">
                    <img src="{{  asset('assets/front/img/slider/neftstrach1.png') }}"
                         class="gallery__img belveb" alt="belveb">
                </figure>
                <figure class="gallery__item gallery__item--3">
                    <img src="{{   asset('assets/front/img/slider/image33.png') }}"
                         class="gallery__img prom" alt="prom">
                </figure>
                <!-- <figure class="gallery__item gallery__item--4">
                    <img src="{{  asset('assets/front/img/slider/image49.png') }}"
                         class="gallery__img task" alt="task">
                </figure> -->
                <figure class="gallery__item gallery__item--5">
                    <img src="{{  asset('assets/front/img/slider/asoba.png') }}"
                         class="gallery__img asoba" alt="asoba">
                </figure>
                <figure class="gallery__item gallery__item--6">
                    <img src="{{ asset('assets/front/img/slider/imkliva1.png') }}"
                         class="gallery__img belgtr" alt="belgtr">
                </figure>
                <figure class="gallery__item gallery__item--7">
                    <img src="{{  asset('assets/front/img/slider/image48.png') }}"
                         class="gallery__img gar" alt="gar">
                </figure>
                <!-- <figure class="gallery__item gallery__item--8">
                    <img src="{{ asset('assets/front/img/ingosstrah.png') }}"
                         class="gallery__img gar" alt="gar">
                </figure> -->
            </div>
        </div>
    </div>
<div class="last-bk">
    <div class="first-text">
        <img src="{{  asset('assets/front/img/kov.png') }}" class="img-pos" alt="kov">
        Медицинская помощь осуществляется после записи на прием и получения нами гарантийного письма от страховой компании.
    </div>
</div>

@endsection