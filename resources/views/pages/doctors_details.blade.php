@extends('layouts.base')

@section('title')
    {{ $doctor->name }} - {{ $doctor->specialization }}
@endsection

@section('content')


<article class="doctor-details-article">



  <div class="doctor-main-container">
    <div class="doctor-main-left">
      <div class="doctor-main-name">
        <h1>
          {{ $doctor->name }}       
        </h1>
      </div>
      <div class="doctor-main-specialization">
        <p>
          {{ $doctor->specialization }}       
        </p>
      </div>
      <div class="doctor-main-experience">
        <p>
          Стаж – {{ $doctor->experience }}        
        </p>
      </div>
      <div class="doctor-main-education">
        <h3 class="doctor-main-education-title">
            Образование:        
        </h3>
        <div class="education-p">
          <!-- <img src="{{ asset('assets/front/images/line-circle.svg') }}" alt="line-circle" /> -->
          <p class="education-p-text">
              {{ $doctor->education }}         
            </p>
        </div>
                
      </div>
    </div>
    <div class="doctor-main-right">
      <img src="/{{ $doctor->photo }}" alt="{{ $doctor->name }}" />
    </div>
  </div>

  <div class="doctor-main-container-second">
    <div class="doctor-professional-courses">
      <h3 class="doctor-professional-courses-title">
          Курсы повышения квалификации:      
      </h3>
      <ul class="doctor-professional-courses-ul">
          @forelse ($doctor->educations as $edu)
              <li class="doctor-professional-courses-text">
                {{ $edu->title }}          
              </li>
              
          @empty
              <div class="doctor-professional-courses-text">
                Нет доступных курсов повышения квалификации.
              </div>
          @endforelse

                  
      </ul>
    </div>
  </div>
  
    <div class="doctor-certificates">
        <h3 class="doctor-certificates-title">
            Сертификаты и дипломы:
        </h3>
        <section class="icones" style="height: 500px;">
            <div class="container">
                <div class="d-flex icones-carousel">

                @forelse ($sertificates as $sert)
                    <div class="item">
                        <img src="/{{ $sert->image }}" alt="{{ $sert->title }}">
                    </div>
                @empty
                    <div class="item">
                        <p>No sertificates available.</p>
                    </div>
                @endforelse
                    <!-- <div class="item">
                        <img src="wp-content/uploads/2022/08/image-38.jpg" alt="diploma">
                    </div> -->

                </div>
            </div>
        </section>
        <!-- <style>
        .slick-list {
            width: 100%;
        }
        </style> -->

    </div>
    

</article><!-- #post-54 -->
@endsection