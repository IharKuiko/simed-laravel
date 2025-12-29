@extends('layouts.base')


@section('title')
    Специалисты
@endsection

@section('content')

<div class="specialist-page">
    <div class="doctors-block">
      <div class="doctors-block-header">
        Наши специалисты позаботятся о Вас
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

    </div>
</div>

@endsection