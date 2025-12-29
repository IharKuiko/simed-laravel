@extends('layouts.base')

@section('title')
    Отзывы
@endsection

@section('content')
<div class="reviews-page">
    <div class="container">
        <h1 class="page-title">Отзывы наших пациентов</h1>
        <p class="page-subtitle">Реальные истории людей, которые доверили нам свое здоровье</p>
        
        <!-- Основной контейнер слайдера -->
        <section class="reviews-slider-container">
            <div class="reviews-header">
                <h2>Что говорят о нас</h2>
                <p>Более 500 довольных пациентов уже оценили нашу работу</p>
            </div>
            
            <!-- Слайдер с отзывами -->
            <div class="reviews-slider">
                <div class="swiper-wrapper">
                    @if($reviews->count() > 0)
                        @foreach($reviews as $index => $review)
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="{{ $review->id }}">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                @if($review->client_photo)
                                                    <img src="{{ asset($review->client_photo) }}" alt="{{ $review->client_name }}" onerror="this.src='https://picsum.photos/seed/reviewer{{ $index }}/100/100.jpg'">
                                                @else
                                                    <img src="{{ asset('assets/front/images/reviewers/icon-woman.png') }}" alt="{{ $review->client_name }}" onerror="this.src='https://picsum.photos/seed/reviewer{{ $index }}/100/100.jpg'">
                                                @endif
                                            </div>
                                            <div class="reviewer-details">
                                                <div class="review-rating">
                                            <div class="stars">
                                                @for($i = 1; $i <= 5; $i++)
                                                    @if($i <= $review->rating)
                                                        <span class="star filled">★</span>
                                                    @else
                                                        <span class="star">★</span>
                                                    @endif
                                                @endfor
                                            </div>
                                        </div>
                                                <h3 class="reviewer-name">{{ $review->client_name }}</h3>
                                                <p class="review-date">{{ $review->review_date ? $review->review_date->translatedFormat('d F Y') : 'Недавно' }}</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text {!! (mb_strlen($review->review_text) > 200) ? 'long-review' : '' !!}"
                                               data-full-text="{{ $review->review_text }}"
                                               data-reviewer-name="{{ $review->client_name }}"
                                               data-review-date="{{ $review->review_date ? $review->review_date->translatedFormat('d F Y') : 'Недавно' }}"
                                               data-review-rating="{{ $review->rating }}"
                                               data-review-service="{{ $review->service_name ?? '' }}">
                                                {!! mb_strlen($review->review_text) > 200 ? mb_substr($review->review_text, 0, 200) . '...' : $review->review_text !!}
                                            </p>
                                            @if(mb_strlen($review->review_text) > 200)
                                                <button class="read-more-btn" data-review-id="{{ $review->id }}">Читать далее</button>
                                            @endif
                                        </div>
                                    </div>
                                    @if(isset($review->service_name) && $review->service_name)
                                        <div class="review-service">
                                            <span class="service-tag">{{ $review->service_name }}</span>
                                        </div>
                                    @endif
                                </article>
                            </div>
                        @endforeach
                    @else
                        <!-- Если в базе нет отзывов, показываем статические примеры -->
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-1">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-1.jpg') }}" alt="Александра Петрова" onerror="this.src='https://picsum.photos/seed/reviewer1/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Александра Петрова</h3>
                                                <p class="review-date">15 декабря 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text long-review"
                                               data-full-text="Хочу выразить огромную благодарность доктору за профессионализм и чуткое отношение. Консультация была очень подробной, все объяснил доступно, ответил на все вопросы. Клиника чистая, персонал дружелюбный. Рекомендую!"
                                               data-reviewer-name="Александра Петрова"
                                               data-review-date="15 декабря 2023"
                                               data-review-rating="5"
                                               data-review-service="Гинекология">
                                                Хочу выразить огромную благодарность доктору за профессионализм и чуткое отношение. Консультация была очень подробной, все объяснил доступно, ответил на все вопросы. Клиника чистая, персонал дружелюбный. Рекомендую...
                                            </p>
                                            <button class="read-more-btn" data-review-id="static-1">Читать далее</button>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">Гинекология</span>
                                    </div>
                                </article>
                            </div>
                            
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-2">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-2.jpg') }}" alt="Мария Сидорова" onerror="this.src='https://picsum.photos/seed/reviewer2/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Мария Сидорова</h3>
                                                <p class="review-date">10 декабря 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text long-review"
                                               data-full-text="Проходила УЗИ диагностику в этой клинике. Очень современное оборудование, врач-диагност очень внимательно осмотрел и подробно все объяснил. Результаты получила сразу же. Администраторы очень вежливые, запись была удобная. Спасибо за качественный сервис!"
                                               data-reviewer-name="Мария Сидорова"
                                               data-review-date="10 декабря 2023"
                                               data-review-rating="5"
                                               data-review-service="УЗИ диагностика">
                                                Проходила УЗИ диагностику в этой клинике. Очень современное оборудование, врач-диагност очень внимательно осмотрел и подробно все объяснил. Результаты получила сразу же. Администраторы очень вежливые, запись была удобная...
                                            </p>
                                            <button class="read-more-btn" data-review-id="static-2">Читать далее</button>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">УЗИ диагностика</span>
                                    </div>
                                </article>
                            </div>
                            
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-3">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-3.jpg') }}" alt="Елена Козлова" onerror="this.src='https://picsum.photos/seed/reviewer3/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Елена Козлова</h3>
                                                <p class="review-date">5 декабря 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text long-review"
                                               data-full-text="Посещала клинику впервые, осталась очень довольна. Прием прошел без очереди, все быстро и организованно. Врач провел осмотр, назначил лечение. Цены вполне приемлемые для такого уровня обслуживания. Буду рекомендовать знакомым."
                                               data-reviewer-name="Елена Козлова"
                                               data-review-date="5 декабря 2023"
                                               data-review-rating="4"
                                               data-review-service="Терапия">
                                                Посещала клинику впервые, осталась очень довольна. Прием прошел без очереди, все быстро и организованно. Врач провел осмотр, назначил лечение. Цены вполне приемлемые для такого уровня обслуживания...
                                            </p>
                                            <button class="read-more-btn" data-review-id="static-3">Читать далее</button>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">Терапия</span>
                                    </div>
                                </article>
                            </div>
                            
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-4">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-4.jpg') }}" alt="Ольга Новикова" onerror="this.src='https://picsum.photos/seed/reviewer4/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Ольга Новикова</h3>
                                                <p class="review-date">28 ноября 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text"
                                               data-full-text="Хочу поблагодарить весь коллектив клиники за профессионализм. Обращалась с проблемой, долгое время не могла найти решение. Здесь мне помогли, назначили комплексное лечение, которое дало результаты. Очень благодарна!"
                                               data-reviewer-name="Ольга Новикова"
                                               data-review-date="28 ноября 2023"
                                               data-review-rating="5"
                                               data-review-service="Гинекология">
                                                Хочу поблагодарить весь коллектив клиники за профессионализм. Обращалась с проблемой, долгое время не могла найти решение. Здесь мне помогли, назначили комплексное лечение, которое дало результаты. Очень благодарна!
                                            </p>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">Гинекология</span>
                                    </div>
                                </article>
                            </div>
                            
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-5">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-5.jpg') }}" alt="Татьяна Смирнова" onerror="this.src='https://picsum.photos/seed/reviewer5/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Татьяна Смирнова</h3>
                                                <p class="review-date">20 ноября 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text long-review"
                                               data-full-text="Отличная клиника с современным оборудованием. Делала УЗИ органов малого таза, процедура прошла безболезненно. Врач очень внимательный, все подробно показал и объяснил. Администраторы всегда на связи, удобно записываться онлайн."
                                               data-reviewer-name="Татьяна Смирнова"
                                               data-review-date="20 ноября 2023"
                                               data-review-rating="4"
                                               data-review-service="УЗИ диагностика">
                                                Отличная клиника с современным оборудованием. Делала УЗИ органов малого таза, процедура прошла безболезненно. Врач очень внимательный, все подробно показал и объяснил...
                                            </p>
                                            <button class="read-more-btn" data-review-id="static-5">Читать далее</button>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">УЗИ диагностика</span>
                                    </div>
                                </article>
                            </div>
                            
                            <div class="swiper-slide">
                                <article class="review-card" data-review-id="static-6">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <div class="reviewer-avatar">
                                                <img src="{{ asset('assets/front/images/reviewers/avatar-6.jpg') }}" alt="Наталья Волкова" onerror="this.src='https://picsum.photos/seed/reviewer6/100/100.jpg'">
                                            </div>
                                            <div class="reviewer-details">
                                                <h3 class="reviewer-name">Наталья Волкова</h3>
                                                <p class="review-date">15 ноября 2023</p>
                                            </div>
                                        </div>
                                        <div class="review-rating">
                                            <div class="stars">
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                                <span class="star filled">★</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-content">
                                        <div class="review-text-container">
                                            <p class="review-text long-review"
                                               data-full-text="Давно искала хорошую клинику для ведения беременности. Обратилась по рекомендации и не пожалела. Врач очень опытный, всегда на связи, отвечает на все вопросы. Клиника оснащена всем необходимым для комфортного ведения беременности."
                                               data-reviewer-name="Наталья Волкова"
                                               data-review-date="15 ноября 2023"
                                               data-review-rating="5"
                                               data-review-service="Ведение беременности">
                                                Давно искала хорошую клинику для ведения беременности. Обратилась по рекомендации и не пожалела. Врач очень опытный, всегда на связи, отвечает на все вопросы...
                                            </p>
                                            <button class="read-more-btn" data-review-id="static-6">Читать далее</button>
                                        </div>
                                    </div>
                                    <div class="review-service">
                                        <span class="service-tag">Ведение беременности</span>
                                    </div>
                                </article>
                            </div>
                    @endif
                </div>
                
                <!-- Кнопки навигации -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            
            <!-- Индикаторы (пагинация) -->
            <div class="swiper-pagination"></div>
        </section>
        
        <!-- Блок со статистикой -->
        <section class="reviews-stats">
            <div class="stats-container">
                <div class="stat-item">
                    <div class="stat-number">500+</div>
                    <div class="stat-label">Довольных пациентов</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">4.9</div>
                    <div class="stat-label">Средний рейтинг</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">100%</div>
                    <div class="stat-label">Конфиденциальность</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">0 очередей</div>
                    <div class="stat-label">Без спешки и давления</div>
                </div>
            </div>
        </section>
        
        <!-- Призыв к действию -->
        <section class="reviews-cta">
            <div class="cta-content">
                <h2>Оставьте свой отзыв</h2>
                <p>Ваше мнение помогает нам становиться лучше</p>
                <a href="https://www.instagram.com/simed.by/" class="btn-primary" target="_blank">Оставить отзыв в Instagram</a>
            </div>
        </section>
        
        <!-- Модальное окно для полного текста отзыва -->
        <div id="reviewModal" class="review-modal">
            <div class="modal-overlay"></div>
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-reviewer-info">
                        <div class="modal-reviewer-avatar">
                            <img src="{{  asset('assets/front/images/reviewers/icon-woman.png') }}" alt="Avatar" id="modalAvatar">
                        </div>
                        <div class="modal-reviewer-details">
                            <h3 class="modal-reviewer-name" id="modalName"></h3>
                            <p class="modal-review-date" id="modalDate"></p>
                        </div>
                    </div>
                    <div class="modal-review-rating">
                        <div class="stars" id="modalRating"></div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="modal-review-text" id="modalReviewText"></div>
                    <div class="modal-review-service" id="modalService"></div>
                </div>
                <button class="modal-close-btn" id="modalCloseBtn">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M18 6L6 18M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</div>
@endsection