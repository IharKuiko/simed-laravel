@extends('layouts.base')

@section('title')
    О нас
@endsection


@section('content')
    <div class="about-us-intro container">
        <div class="about-title">
                  <h1>Добро пожаловать в медицинский центр Симед</h1>
                   
                </div>
        <div class="about-description">
            <div class="text">
                
                <div class="about-text">
                    «Симед» – представляет собой современный медицинский центр, оказывающий услуги по ультразвуковой диагностике и гинекологии. Оснащен самым современным высокотехнологичным медицинским оборудованием от лучших мировых производителей. Сотрудники центра – высококвалифицированные специалисты, обладатели врачебных категорий и многолетнего стажа работы.
                </div>
                <div class="about-text">
                    <p>В медицинском центре вам предоставят квалифицированную специализированную помощь:</p> 
                    <ul>
                        <li>Прием и консультация врача-акушера-гинеколога.</li>
                        <li>Ультразвуковая диагностика всех органов и систем.</li>
                        <li>Комплексное обследование и курс полноценного лечения.</li>
                    </ul>

                </div>
                <div class="about-text">
                    При необходимости по результатам анализов и обследований будет проведено лечение с применением современных методик в гинекологии. Помните, что своевременное обращение к врачу существенно облегчает постановку правильного диагноза, а также снижает интенсивность и длительность лечения.
                </div>
                <div class="about-text">
                    Главный акцент в работе мы делаем на безопасности и абсолютном комфорте каждого пациента.
                </div>

            </div>
        </div>
        <div class="about-img">
            <img class="about-doctor img-fluid" src="{{ asset('assets/front/images/simed-1.webp') }}" alt="about doctor">
        </div>
    </div>

    <div class="about-skills container">
        <h2 class="about-title advantages-title">
            Преимущества "Симед"
        </h2>
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
    <div class="virtual container">
        <div class="main-title">
            Приглашаем Вас в виртуальный тур по нашей клинике
        </div>
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/logo.webp') }}" alt="slide 1">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/slide-1.webp') }}" alt="slide 2">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/slide-2.webp') }}" alt="slide 3">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/slide-3.webp') }}" alt="slide 4">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/slide-4.webp') }}" alt="slide 5">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/slide-5.webp') }}" alt="slide 6">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_1.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_2.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_3.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_4.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_5.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_6.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_7.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_8.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_9.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_10.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_11.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_12.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_13.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_14.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_15.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_16.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_17.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_8.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_19.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_20.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_21.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_22.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_23.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_24.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_25.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_26.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_27.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_28.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_29.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_30.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_31.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_32.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_33.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_34.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_35.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_36.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_37.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_38.webp') }}" alt="slide 7">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_39.webp') }}" alt="slide 8">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_40.webp') }}" alt="slide 9">
                </div>
                <div class="swiper-slide">
                    <img class="img-fluid" src="{{ asset('assets/front/images/slider/IMG_41.webp') }}" alt="slide 9">
                </div>
                
            </div>
            <!-- If we need pagination -->
            <!-- <div class="swiper-pagination"></div> -->

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>

            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
    </div>

    <!-- <script>
        import Swiper from 'swiper/bundle';
        import 'swiper/css/bundle';

        const swiper = new Swiper('.swiper', {
            // Optional parameters
            direction: 'horizontal',
            loop: true,
        
            // If we need pagination
            pagination: {
              el: '.swiper-pagination',
            },
        
            // Navigation arrows
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
        
            // And if we need scrollbar
            scrollbar: {
              el: '.swiper-scrollbar',
            },
          });

          alert('swiper');
          console.log(swiper);
    </script> -->

<script src="{{ asset('assets/front/js/slider.js') }}">

</script>
@endsection