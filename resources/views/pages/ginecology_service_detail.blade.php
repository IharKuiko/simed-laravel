@extends('layouts.base')

@section('title')
    Гинекологические услуги :: {{ $service->title }}
@endsection

@push('styles')
<link rel="stylesheet" href="{{ asset('assets/front/css/new-styles/service-details.css') }}">
@endpush

@section('content')
<div class="service-detail-container gynecology-service">
    <!-- Хлебные крошки для навигации -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Главная</a></li>
            <li class="breadcrumb-item"><a href="/services">Услуги</a></li>
            <li class="breadcrumb-item"><a href="/ginecology">Гинекология</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{ $service->title }}</li>
        </ol>
    </nav>

    <div class="row">
        <!-- Левая колонка: изображение и основная информация -->
        <div class="col-lg-8">
            <!-- Заголовок услуги -->
            <div class="mb-4 service-header">
                <h1 class="service-title">{{ $service->title }}</h1>
            </div>

            <!-- Изображение услуги с заглушкой -->
            <div class="mb-4 service-image-container">
                @if($service->image)
                    <img src="{{ asset('assets/front/images/services/' . $service->image) }}"
                         alt="{{ $service->title }}"
                         class="service-image">
                @else
                    <div class="service-image-placeholder">
                        <div class="text-center">
                            <svg width="80" height="80" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M12 2L2 7V12C2 16.5 4.23 20.68 7.62 23.15L12 24L16.38 23.15C19.77 20.68 22 16.5 22 12V7L12 2Z" fill="#d9a7c7" fill-opacity="0.2"/>
                                <path d="M9 12L11 14L15 10" stroke="#d9a7c7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                            <p class="mt-2">Изображение услуги</p>
                        </div>
                    </div>
                @endif
            </div>

            <!-- Подробное описание услуги -->
            <section class="mb-4 service-description">
                <h2 class="mb-3 h4">Описание услуги</h2>
                <div class="service-content">
                    {!! $service->description !!}
                </div>
                
                @if($service->details)
                    <div class="mt-4 service-details-section">
                        <h3 class="mb-3 h5">Детали процедуры</h3>
                        <div class="service-details-content">
                            {!! $service->details !!}
                        </div>
                    </div>
                @endif
            </section>
        </div>

        <!-- Правая колонка: информация о цене и запись -->
        <div class="col-lg-4">
            <!-- Карточка с краткой информацией -->
            <div class="service-info">
                <h3 class="mb-3 h5">Информация об услуге</h3>
                
                <!-- Цена услуги -->
                <div class="service-details">
                    <div class="mb-3 service-price">
                        {{ $service->price }} руб.
                    </div>
                    
                    <!-- Тип услуги -->
                    @if($service->unit)
                    <div class="service-unit">
                        <svg class="icon" width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M9 11H15M21 11C21 16.5228 16.5228 21 11 21C5.47715 21 1 16.5228 1 11C1 5.47715 5.47715 1 11 1C16.5228 1 21 5.47715 21 11Z" stroke="#d9a7c7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                        Тип: {{ $service->unit }}
                    </div>
                    @endif
                    
                    <!-- Длительность услуги -->
                    @if($service->duration)
                    <div class="service-duration">
                        <svg class="icon" width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="12" cy="12" r="10" stroke="#d9a7c7" stroke-width="2"/>
                            <path d="M12 6V12L16 14" stroke="#d9a7c7" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                        Длительность: {{ $service->duration }} минут
                    </div>
                    @endif
                    
                    <!-- Категория услуги -->
                    @if($service->category)
                    <div class="service-category">
                        <svg class="icon" width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M22 19C22 19.5304 21.7893 20.0391 21.4142 20.4142C21.0391 20.7893 20.5304 21 20 21H4C3.46957 21 2.96086 20.7893 2.58579 20.4142C2.21071 20.0391 2 19.5304 2 19V5C2 4.46957 2.21071 3.96086 2.58579 3.58579C2.96086 3.21071 3.46957 3 4 3H9L11 6H20C20.5304 6 21.0391 6.21071 21.4142 6.58579C21.7893 6.96086 22 7.46957 22 8V19Z" stroke="#d9a7c7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                        Категория: {{ $service->category->title }}
                    </div>
                    @endif
                </div>
            </div>

            <!-- Блок для записи на услугу -->
            <div class="service-cta">
                <button class="btn-booking" data-bs-toggle="modal" data-bs-target="#bookingModal">
                    Записаться на прием
                </button>
                <div class="mt-3">
                    <small class="text-muted">Также можно записаться по телефону: <a href="tel:+375291030104">+375 (29) 103-01-04</a></small>
                </div>
            </div>
        </div>
    </div>

    <!-- Блок с похожими услугами из той же категории -->
    @if($service->category_id && $relatedServices = \App\Models\GinecologyService::where('category_id', $service->category_id)
            ->where('id', '!=', $service->id)
            ->where('status', 'active')
            ->take(3)
            ->get())
    <section class="mt-5 related-services">
        <h2 class="mb-4 h4">Похожие услуги</h2>
        <div class="related-services-grid">
            @foreach($relatedServices as $relatedService)
                <div class="related-service-card">
                    <h4 class="mb-2 h6">{{ $relatedService->title }}</h4>
                    <p class="mb-2 text-muted">{{ Str::limit(strip_tags($relatedService->description), 100) }}</p>
                    <div class="related-service-info">
                        <span class="service-price-small">{{ $relatedService->price }} руб.</span>
                        @if($relatedService->unit)
                        <span class="service-unit-small">{{ $relatedService->unit }}</span>
                        @endif
                    </div>
                    <a href="{{ route('ginecology_service_details', $relatedService->slug) }}" class="btn-outline-primary">Подробнее</a>
                </div>
            @endforeach
        </div>
    </section>
    @endif
</div>

<!-- Модальное окно для записи на услугу -->
<div class="modal fade booking-modal" id="bookingModal" tabindex="-1" aria-labelledby="bookingModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="bookingModalLabel">Запись на услугу</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="bookingForm">
                    <div class="form-group">
                        <label for="userName" class="form-label">Ваше имя</label>
                        <input type="text" class="form-control" id="userName" required>
                    </div>
                    <div class="form-group">
                        <label for="userPhone" class="form-label">Телефон</label>
                        <input type="tel" class="form-control" id="userPhone" required>
                    </div>
                    <div class="form-group">
                        <label for="userDate" class="form-label">Предпочтительная дата</label>
                        <input type="date" class="form-control" id="userDate" required>
                    </div>
                    <div class="form-group">
                        <label for="userTime" class="form-label">Предпочтительное время</label>
                        <input type="time" class="form-control" id="userTime" required>
                    </div>
                    <div class="form-group">
                        <label for="userComment" class="form-label">Комментарий</label>
                        <textarea class="form-control" id="userComment" rows="3"></textarea>
                    </div>
                    <!-- Скрытые поля для типа услуги -->
                    <input type="hidden" id="serviceType" value="ginecology" />
                    <input type="hidden" id="serviceId" value="{{ $service->id }}" />
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-secondary" data-bs-dismiss="modal">Отмена</button>
                <button type="button" class="btn-primary" id="submitBooking">Отправить заявку</button>
            </div>
        </div>
    </div>
</div>

<!-- Уведомление об успешной отправке -->
<div class="booking-success-notification" id="successNotification">
    Спасибо за заявку! Мы свяжемся с вами в ближайшее время.
</div>

<!-- Индикатор загрузки -->
<div class="loading-indicator" id="loadingIndicator">
    <div class="loading-spinner"></div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function() {
    const bookingForm = document.getElementById("bookingForm");
    const submitButton = document.getElementById("submitBooking");
    const successNotification = document.getElementById("successNotification");
    const loadingIndicator = document.getElementById("loadingIndicator");

    submitButton.addEventListener("click", function() {
        if (bookingForm.checkValidity()) {
            // Показываем индикатор загрузки
            loadingIndicator.classList.add('active');
            
            // Собираем данные формы
            const formData = new FormData(bookingForm);
            const formDataObj = {};
            formData.forEach((value, key) => {
                formDataObj[key] = value;
            });
            
            // Имитация отправки формы (замените на реальный AJAX-запрос)
            setTimeout(function() {
                // Скрываем индикатор загрузки
                loadingIndicator.classList.remove('active');
                
                // Показываем уведомление об успешной отправке
                successNotification.classList.add('show');
                
                // Закрываем модальное окно
                const modal = bootstrap.Modal.getInstance(document.getElementById("bookingModal"));
                modal.hide();
                
                // Очищаем форму
                bookingForm.reset();
                
                // Скрываем уведомление через 5 секунд
                setTimeout(function() {
                    successNotification.classList.remove('show');
                }, 5000);
            }, 1500);
        } else {
            bookingForm.reportValidity();
        }
    });
});
</script>
@endsection
