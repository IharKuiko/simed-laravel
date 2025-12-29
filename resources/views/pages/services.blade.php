@extends('layouts.base')

@section('title')
    Услуги
@endsection

@section('content')

    <div class="services-page">
        <div class="container">
            <div class="main-title">
                Наш медицинский центр оказывает следующие виды услуг
            </div>
            <div class="services-block">
                <div class="ginecology-services">
                    <div class="ginecology-services-title">
                        Гинекологические услуги
                    </div>
                    <div class="ginecology-items">
                        @foreach($ginecology_services as $service)
                            <div class="ginecology-item">
                                <a href="{{ route('ginecology_service_details',  $service->slug) }}">
                                    <div class="ginecology-item-title">
                                        {{ $service->title }}
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
                
                <div class="ultasound-services">
                    <div class="ultasound-services-title">
                        Ультразвуковые услуги
                    </div>
                    <div class="ultasound-items">
                        @foreach($ultasound_srvices as $service)
                            <div class="ultasound-item">
                                <a href="{{ route('ultrasound_service_details',  $service->slug) }}">
                                    <div class="ultasound-item-title">
                                        {{ $service->title }}
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="insurance-block-service">
        <div class="insurance-block-header">Мы позаботились о Вашем удобстве и заключили договора на оказание медицинских услуг со страховыми компаниями:
        </div>
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
                <img src="{{  asset('assets/front/img/slider/image52.png') }}"
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
                <img src="{{ asset('assets/front/img/slider/image49.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/image50.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/slider/image52.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{ asset('assets/front/img/slider/image33.png') }}"
                        alt="insurance">
            </div>
            <div class="item">
                <img src="{{  asset('assets/front/img/ingosstrah.png') }}"
                        alt="insurance">
            </div>
        </div>
        <div class="insurance-description">
            <div class="more">
                <a href="{{ route('insurance') }}">
                Подробнее
                    <img src="{{ asset('assets/front/images/arrow.svg') }}" alt="arrow"></a>
            </div>
        </div>
    </div>

@endsection