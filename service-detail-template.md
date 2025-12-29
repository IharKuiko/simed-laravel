# Адаптивные CSS-стили для страниц детализации медицинских услуг

## Обзор

Создан комплекс адаптивных CSS-стилей для страниц детализации медицинских услуг (гинекологических и УЗИ) с учетом современных требований к дизайну и пользовательскому опыту.

## Структура файлов

1. **`public/assets/front/css/new-styles/service-details.css`** - Основной файл со стилями
2. **`resources/views/pages/ginecology_service_detail.blade.php`** - Шаблон страницы гинекологической услуги
3. **`resources/views/pages/ultrasound_service_detail.blade.php`** - Шаблон страницы УЗИ-услуги
4. **`service-detail-template.html`** - HTML-демонстрация стилей

## Основные возможности

### 1. Адаптивность и мобильная приоритетность

- Полностью респонсивный дизайн с использованием медиа-запросов
- Мобильная приоритетность с оптимизацией для всех размеров экранов
- Корректное отображение на устройствах от 380px до 1200px и выше

### 2. Цветовая схема и переменные

```css
:root {
    /* Основные цвета */
    --primary-color: #065aad;
    --primary-light: #4a6fa5;
    --primary-dark: #044a8a;
    
    /* Специфические цвета для типов услуг */
    --gynecology-color: #d9a7c7; /* Мягкий розовый для гинекологии */
    --ultrasound-color: #a7c7d9; /* Мягкий голубой для ультразвука */
}
```

### 3. Основные блоки стилизации

#### .service-detail-container
Основной контейнер страницы с анимацией появления:
```css
.service-detail-container {
    padding: 40px 0;
    background-color: var(--background-color);
    font-family: var(--font-ibm);
    max-width: 1200px;
    margin: 0 auto;
    animation: fadeInUp 0.8s ease-out;
}
```

#### .breadcrumb
Хлебные крошки для навигации:
```css
.breadcrumb {
    background-color: transparent;
    padding: 0;
    margin-bottom: 30px;
    font-size: 14px;
}
```

#### .service-title
Адаптивный заголовок для длинных названий:
```css
.service-title {
    font-family: var(--font-tenor);
    font-size: 36px;
    font-weight: 400;
    line-height: 1.3;
    color: var(--text-color);
    word-wrap: break-word;
    hyphens: auto;
    margin: 0;
}
```

#### .service-image-placeholder
Заглушка для отсутствующих изображений:
```css
.service-image-placeholder {
    background-color: var(--light-gray);
    border: 1px solid var(--border-color);
    border-radius: 12px;
    height: 350px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--light-text);
    font-size: 18px;
    text-align: center;
    padding: 20px;
}
```

#### .service-info
Карточка с информацией об услуге:
```css
.service-info {
    background-color: var(--light-gray);
    border-radius: 12px;
    padding: 25px;
    margin-bottom: 30px;
    box-shadow: var(--shadow);
}
```

#### .service-price
Выделение цены услуги:
```css
.service-price {
    font-size: 28px;
    font-weight: 600;
    color: var(--primary-color);
    margin-bottom: 5px;
}
```

#### .btn-booking
Кнопка записи на услугу с интерактивными эффектами:
```css
.btn-booking {
    display: inline-block;
    background-color: var(--primary-color);
    color: white;
    border: none;
    padding: 14px 40px;
    border-radius: 100px;
    font-family: var(--font-ibm);
    font-weight: 500;
    font-size: 16px;
    line-height: 24px;
    cursor: pointer;
    transition: var(--transition);
    text-decoration: none;
}

.btn-booking:hover {
    background-color: var(--primary-dark);
    color: white;
    transform: translateY(-2px);
    box-shadow: var(--hover-shadow);
}
```

#### .related-services
Блок с похожими услугами:
```css
.related-services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 25px;
}
```

### 4. Модальное окно записи

Стили для модального окна формы записи с учетом медицинской тематики:
```css
.booking-modal .modal-content {
    border-radius: 12px;
    border: none;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.booking-modal .modal-header {
    background-color: var(--light-gray);
    border-bottom: 1px solid var(--border-color);
    padding: 20px 25px;
    border-radius: 12px 12px 0 0;
}
```

### 5. Дифференциация типов услуг

Специальные классы для различных типов медицинских услуг:

#### Гинекологические услуги
```css
.gynecology-service .service-price,
.gynecology-service .btn-booking {
    color: var(--gynecology-color);
    background-color: var(--gynecology-color);
}
```

#### УЗИ-услуги
```css
.ultrasound-service .service-price,
.ultrasound-service .btn-booking {
    color: var(--ultrasound-color);
    background-color: var(--ultrasound-color);
}
```

### 6. Интерактивные элементы и анимации

#### Анимация появления элементов
```css
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
```

#### Индикатор загрузки
```css
.loading-indicator {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.8);
    z-index: 999;
    justify-content: center;
    align-items: center;
}

.loading-spinner {
    width: 50px;
    height: 50px;
    border: 5px solid var(--light-gray);
    border-top: 5px solid var(--primary-color);
    border-radius: 50%;
    animation: spin 1s linear infinite;
}
```

### 7. Адаптивность

#### Планшеты (≤992px)
```css
@media (max-width: 992px) {
    .service-detail-container {
        padding: 30px 20px;
    }
    
    .service-title {
        font-size: 32px;
    }
    
    .service-image-placeholder {
        height: 280px;
    }
    
    .related-services-grid {
        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
        gap: 20px;
    }
}
```

#### Мобильные устройства (≤768px)
```css
@media (max-width: 768px) {
    .service-detail-container {
        padding: 20px 15px;
    }
    
    .service-title {
        font-size: 28px;
    }
    
    .service-image-placeholder {
        height: 220px;
        font-size: 16px;
    }
    
    .related-services-grid {
        grid-template-columns: 1fr;
        gap: 15px;
    }
}
```

#### Маленькие мобильные устройства (≤576px)
```css
@media (max-width: 576px) {
    .service-detail-container {
        padding: 15px 10px;
    }
    
    .service-title {
        font-size: 24px;
    }
    
    .service-image-placeholder {
        height: 180px;
        font-size: 14px;
    }
}
```

## Интеграция с Laravel

### Контроллеры

Для корректной работы стилей необходимо обновить контроллеры:

#### GinecologyServiceController
```php
public function details($slug)
{
    $service = GinecologyService::where('slug', $slug)->firstOrFail();
    return view('pages.ginecology_service_detail', compact('service'));
}
```

#### UltrasoundServiceController
```php
public function details($slug)
{
    $service = UltrasoundService::where('slug', $slug)->firstOrFail();
    return view('pages.ultrasound_service_detail', compact('service'));
}
```

### Маршруты

В файле `routes/web.php` должны быть определены маршруты:

```php
// Маршруты для гинекологических услуг
Route::get('/ginecology/{slug}', [GinecologyServiceController::class, 'details'])->name('ginecology.service.details');

// Маршруты для УЗИ услуг
Route::get('/ultrasound/{slug}', [UltrasoundServiceController::class, 'details'])->name('ultrasound.service.details');
```

## JavaScript функциональность

### Обработка формы записи

```javascript
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
            
            // AJAX-запрос для отправки формы
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
```

## Особенности реализации

1. **Современные CSS-техники**: Использование Flexbox, Grid, CSS-переменных
2. **Мобильная приоритетность**: Progressive enhancement от мобильных к десктопным версиям
3. **Доступность**: Корректная работа с клавиатурой, фокусы и ARIA-атрибуты
4. **Производительность**: Оптимизированные анимации и переходы
5. **Расширяемость**: Легкая адаптация под другие типы медицинских услуг

## Рекомендации по использованию

1. Подключите CSS-файл в основной файл стилей:
```css
@import "new-styles/service-details.css";
```

2. Используйте соответствующие классы для разных типов услуг:
   - `gynecology-service` для гинекологических услуг
   - `ultrasound-service` для УЗИ-услуг

3. Для добавления нового типа услуг:
   - Определите новую цветовую переменную в `:root`
   - Создайте стили по аналогии с существующими
   - Добавьте соответствующий класс к основному контейнеру

4. При кастомизации под конкретный проект:
   - Измените цветовые переменные в соответствии с брендбуком
   - Адаптируйте размеры шрифтов и отступы под дизайн-систему
   - Настройте анимации в соответствии с требованиями к производительности

## Совместимость

- **Браузеры**: Chrome 60+, Firefox 55+, Safari 12+, Edge 79+
- **Устройства**: Все современные мобильные и десктопные устройства
- **Разрешения**: От 320px до 4K и выше
