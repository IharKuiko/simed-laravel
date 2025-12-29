<header>

    <nav class="fixed-top bg-body-tertiary second-nav purple">
        <div class="d-flex align-items-center second-nav-container container-fluid">
            <!-- Левая часть: Переключение языков -->
            

            <!-- Центральная часть: Социальные сети и телефон -->
            <!-- <div class="d-flex align-items-center gap-3 social">
                <a href="tel:+48123456789" class="nav-icon" title="{{ __('header.call_us') }}">
                    <img src="{{ asset('assets/front/images/noun-phone-2.svg') }}" alt="{{ __('Phone') }}" width="18" height="18">
                </a>
                <a href="https://www.instagram.com/klimatyzacja.wro/" target="_blank" class="nav-icon" title="{{ __('header.instagram') }}" aria-label="Instagram">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="https://www.facebook.com/klimatyzacja.wro" target="_blank" class="nav-icon" title="{{ __('header.facebook') }}" aria-label="Facebook">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="https://t.me/Najatek_Air_bot" target="_blank" class="nav-icon" title="{{ __('header.telegram') }}" aria-label="Telegram">
                    <i class="fab fa-telegram-plane"></i>
                </a>
            </div> -->
            <!-- <div class="container-right-header"> -->
            <div class="address">
                <p>г.Речица, ул. Строителей 2а, каб.47</p>
            </div>
            <div class="time">
                <p>
                Пн-Пт: 09:00-20:00
                </p>
                <div class="flex">
                    <p>Сб: 09:00-16:00</p>
                    <div class="header-question"></div>
                        <div class="pop-helper">
                            <div class="helper-header">
                            <div class="close">
                                <img src="{{  asset('assets/front/images/close.svg') }}"  alt="close"/>
                            </div>
                            </div>
                            <div class="helper-content">
                                <div class="text-header">
                                    Режим работы:
                                </div>
                                <div class="text-main">
                                    <p>Пн-Пт 09:00-20:00</p>
                                    <p>Сб 09:00-16:00</p>
            
                                </div>
                            </div>
                        </div>
                </div>
          
            </div>
            <div class="tel">
                <p>
                    <a href="tel:+375291030104"><img src="{{ asset('assets/front/images/noun-phone-21.svg') }}" alt="phone" />+375 (29) 103-01-04</a>
                </p>
                
            </div>
            <!-- </div> -->
            

            <!-- Правая часть: Авторизация -->
            {{--@if (Route::has('login'))
                <div class="d-flex align-items-center gap-2 auth-controls">
                    @auth
                        @if(auth()->user()->is_admin)
                            <a href="{{ url('/dashboard') }}" class="nav-icon" title="{{ __('header.admin_panel') }}">
                                <img src="{{ asset('assets/front/icons/admin.svg') }}" alt="{{ __('header.admin') }}" width="18" height="18">
                            </a>
                        @endif
                        <form method="POST" action="{{ route('logout') }}" class="d-inline">
                            @csrf
                            <button type="submit" class="nav-icon btn-logout" title="{{ __('header.logout') }}">
                                <img src="{{ asset('assets/front/icons/logout.svg') }}" alt="{{ __('header.logout') }}" width="18" height="18">
                            </button>
                        </form>
                    @else
                        <a href="{{ route('login') }}" class="nav-icon" title="{{ __('header.login') }}">
                            <img src="{{ asset('assets/front/icons/user.svg') }}" alt="{{ __('header.login') }}" width="18" height="18">
                        </a>
                    @endauth
                </div>
            @endif--}}
        </div>
    </nav>
    <nav class="navbar navbar-expand-xl main-nav">
        <div class="d-flex align-items-center justify-content-between container-fluid">
            <a class="navbar-brand logo" href="{{ route('home') }}">
                <img class="img-fluid" src="{{ asset('assets/front/images/logo60.webp') }}" alt="logo">

            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Симед</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="flex-grow-1 justify-content-center pe-3 navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('about') ? 'active' : '' }}" href="{{ route('about') }}"> О КЛИНИКЕ </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle {{ request()->routeIs('services') ? 'active' : '' }} {{ request()->routeIs('ginecology') ? 'active' : '' }} {{ request()->routeIs('ultrasound') ? 'active' : '' }} {{ request()->routeIs('insurance') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                УСЛУГИ
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{{ route('services') }}">Все услуги</a></li>
                                <li><a class="dropdown-item" href="{{ route('ginecology') }}">Гинекология</a></li>
                                <li><a class="dropdown-item" href="{{  route('ultrasound') }}">УЗИ</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="{{  route('insurance') }}">Медицинские услуги по страховке</a></li>
                            </ul>
                       </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('doctors') ? 'active' : '' }}" aria-current="page" href="{{ route('doctors') }}">СПЕЦИАЛИСТЫ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('prices') ? 'active' : '' }}" href="{{ route('prices') }}"> ЦЕНЫ </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('reviews') ? 'active' : '' }}" href="{{ route('reviews') }}">ОТЗЫВЫ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('patients') ? 'active' : '' }}" href="{{ route('patients') }}">ПАЦИЕНТАМ</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link {{ request()->routeIs('contacts') ? 'active' : '' }}" href="{{ route('contacts') }}">КОНТАКТЫ</a>
                        </li>

                        
                        
                    </ul>
                    <a href="#contact-form" class="btn">
                                <i class="fas fa-paper-plane"></i>
                                Записаться на прием
                            </a>
                </div>
            </div>
        </div>
    </nav>

</header>


<!-- <header id="main-header" data-height-onload="66">
    <div class="header-row1">
        <div class="header-logo">      
            <a href="{{ route('home') }}">
                <img class="logo-hd img-fluid" src="{{  asset('assets/front/images/logo60.webp') }}" alt="logo">
                <img class="logo-sm img-fluid" src="{{ asset('assets/front/images/logo6060-2.webp') }}" alt="logo">
            </a>
        </div>
        <div class="header-container">
            <div class="container-right-header">
            <div class="column-address">
                <p>г.Речица, ул. Строителей 2а, каб.47</p>
            </div>
            <div class="column-time">
                <p>
                Пн-Пт: 09:00-20:00
                </p>
                <div class="flex">
                    <p>Сб: 09:00-16:00</p>
                    <div class="header-question"></div>
                        <div class="pop-helper">
                            <div class="helper-header">
                            <div class="close">
                                <img src="{{  asset('assets/front/images/close.svg') }}"  alt="close"/>
                            </div>
                            </div>
                            <div class="helper-content">
                                <div class="text-header">
                                    Режим работы:
                                </div>
                                <div class="text-main">
                                    <p>Пн-Пт 09:00-20:00</p>
                                    <p>Сб 09:00-16:00</p>
            
                                </div>
                            </div>
                        </div>
                </div>
          
            </div>
            <div class="column-tel">
                <p>
                    <a href="tel:+375291030104">+375 (29) 103-01-04</a>
                </p>
                
            </div>
            </div>
            <nav id="top-menu-nav">
                <ul id="top-menu1" class="nav">
                    <li id="menu-item-21" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-21"><a href="{{ route('about') }}">О клинике</a></li>
                    <li id="menu-item-42" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-has-children menu-item-42"><a href="{{ route('services') }}">Услуги</a>
                        <ul class="sub-menu">
                            <li id="menu-item-46" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-46"><a href="{{ route('ginecology') }}">Гинекология</a></li>
                            <li id="menu-item-117" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-117"><a href="{{  route('ultrasound') }}">УЗИ</a></li>

                            <li id="menu-item-126" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-126"><a href="{{  route('insurance') }}">Медицинские услуги по страховке</a></li>
                        </ul>
                    </li>
                    <li id="menu-item-52" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-52"><a href="{{  route('doctors') }}">Специалисты</a></li>
                    <li id="menu-item-411" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-411"><a href="{{  route('prices') }}">Цены</a></li>
                    <li id="menu-item-139" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-139"><a href="{{ route('reviews') }}">Отзывы</a></li>
                    <li id="menu-item-544" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-544"><a href="{{ route('patients') }}">Пациентам</a></li>
                    <li id="menu-item-130" class="menu-item-object-page menu-item menu-item-type-post_type menu-item-130"><a href="{{ route('contacts') }}">Контакты</a></li>
                </ul>    
            </nav>
        </div>
        <div class="btn-header">
            <div class="btn-round">
                <p class="btn-text">Записаться на прием</p>
            </div>
            <div class="burger-menu-btn">
            <div class="burger-inner">
                <img src="{{  asset('assets/front/img/burger-btn(1).svg') }}"  alt="burger"/>
            </div>
            </div>
        </div>
        <div class="burger-menu hide-menu">
            <div class="burger-menu-header">
            <div class="mobile-logo">
                <a href="{{ route('home') }}">
                
                <img class="logo-hd" src="{{  asset('assets/front/images/logo60.webp') }}" alt="logo">
                <img class="logo-sm" src="{{ asset('assets/front/images/logo6060-2.webp') }}" alt="logo">
                </a>
            </div>
            <div class="mobile-phone">
                <p>
                <a href="tel:+375291030104">+375 (29) 103-01-04</a>
                </p>
            </div>
            <div class="close">
                <img src="{{ asset('assets/front/images/close_.svg') }}"  alt="close"/>
            </div>
            </div>
            <nav class="burger-nav">
            <ul id="top-menu" class="nav"><li class="menu-item-object-page menu-item menu-item-type-post_type menu-item-109">
                <p><a href="{{ route('about') }}">О клинике</a></p>
                </li>
                <li class="menu-item-object-page menu-item menu-item-type-post_type menu-item-has-children menu-item-107">
                <p class="burger-sub-p"><a href="{{ route('services') }}">Услуги</a>
                    <img class="burger-sub close-sub" src="{{ asset('assets/front/img/arrow-down.svg') }}" alt="close"/></p>

                <ul class="sub-menu-second">
                    <li class="menu-item-object-page menu-item menu-item-type-post_type menu-item-108">
                    <p><a href="{{ route('ginecology') }}">Гинекология</a></p>
                    </li>
                    <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-82">
                    <p><a href="{{  route('ultrasound') }}">Узи</a></p>
                    </li>
                    
                    <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-89">
                    <p><a href="{{  route('insurance') }}">Медицинские услуги по страховке</a></p>
                    </li>
                </ul>
                </li>
                <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-50">
                <p><a href="{{ route('doctors') }}">специалисты</a></p>
                </li>
                <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-52">
                <p><a href="{{ route('prices') }}">цены</a></p>
                </li>
                <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-49">
                <p><a href="{{ route('reviews') }}">Отзывы</a></p>
                </li>
                <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-53">
                <p><a href="{{  route('patients') }}">Пациентам</a></p>
                </li>
                <li class="menu-item-object-custom menu-item menu-item-type-custom menu-item-53">
                <p><a href="{{ route('contacts') }}">контакты</a></p>
                </li>
            </ul>
            </nav>
            <div class="burger-footer">
            <p class="address">
                г.Речица, ул. Строителей 2а, каб.47
            </p>
            <div class="time">
                <p>
                Пн-Пт: 09:00-20:00
                Сб: 09:00-16:00

                </p>
                <div class="header-question">
                </div>
                <div class="pop-helper">
                <div class="helper-header">
                    <div class="close">
                    <img src="{{ asset('assets/front/images/close.svg') }}" alt="close"/>
                    </div>
                </div>
                <div class="helper-content">
                    <div class="text-header">
                    Режим работы:
                    </div>
                    <div class="text-main">
                        <p>Пн-Пт 09:00-20:00</p><p>Сб 09:00-16:00</p>           </div>
                </div>
                </div>
            </div>
            <div class="social-icons">
                <div class="footer-row">
                <div class="footer-inst">
                    <a href="https://www.instagram.com/simed.by/" class="inst-svg">
                    <svg width="35" height="35" viewBox="0 0 35 35" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.33053 0.0697607C7.1841 0.201237 5.84171 0.645371 4.81536 1.23281C2.16243 2.75111 0.411927 5.40648 0.0757145 8.42217C-0.0252382 9.32801 -0.0252382 25.6614 0.0757145 26.5673C0.565783 30.963 4.03577 34.434 8.43018 34.9243C9.33575 35.0252 25.6642 35.0252 26.5698 34.9243C30.9642 34.434 34.4342 30.963 34.9243 26.5673C35.0252 25.6614 35.0252 9.32801 34.9243 8.42217C34.4342 4.02643 30.9642 0.555396 26.5698 0.0651799C25.7655 -0.0245222 9.11628 -0.0203516 8.33053 0.0697607ZM28.0942 4.65632C29.1199 4.96406 29.9027 5.86388 30.077 6.93573C30.283 8.20133 29.5114 9.51958 28.2937 9.98238C27.2532 10.3778 26.0165 10.0946 25.2624 9.28822C23.6839 7.60015 24.6663 4.87039 26.9664 4.55322C27.2375 4.51582 27.796 4.5669 28.0942 4.65632ZM27.1031 6.60591C26.8837 6.65595 26.5956 6.97121 26.5508 7.2103C26.4579 7.70571 26.9443 8.19224 27.4396 8.09932C27.7696 8.03738 28.0445 7.71611 28.0445 7.39244C28.0445 7.24715 28.0085 7.06091 27.9644 6.97859C27.8225 6.71339 27.4116 6.53555 27.1031 6.60591ZM18.757 8.02459C20.8714 8.30608 22.7002 9.21684 24.2389 10.7545C28.0004 14.5134 28.0004 20.4731 24.2389 24.2357C20.4773 27.9985 14.5227 27.9985 10.761 24.2357C6.99955 20.4731 6.99955 14.5134 10.761 10.7545C12.9121 8.60492 15.7746 7.62764 18.757 8.02459ZM16.3653 10.0735C14.7748 10.3207 13.3498 11.0468 12.2019 12.1951C9.26029 15.1376 9.26029 19.8519 12.2019 22.7944C12.5045 23.0971 13.0135 23.5188 13.3331 23.7314C16.3323 25.7277 20.2538 25.3395 22.7981 22.7944C25.7397 19.8519 25.7397 15.1376 22.7981 12.1951C21.096 10.4924 18.7176 9.70801 16.3653 10.0735Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                <div class="footer-email">
                    <a href="mailto:info@u-clinic.by" class="email-svg">
                    <svg width="47" height="29" viewBox="0 0 47 29" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M1.97686 0.582237C2.02484 0.627544 6.88674 3.81144 12.7811 7.65774L23.4982 14.6509L34.2468 7.65017C40.1586 3.79973 45.0347 0.615834 45.0826 0.574671C45.1306 0.533597 35.4317 0.5 23.5297 0.5C10.47 0.5 1.9243 0.532607 1.97686 0.582237ZM0 14.5526V26.5442L0.210529 26.38C0.689839 26.0061 15.87 13.0072 15.87 12.9705C15.87 12.9392 0.570768 2.89648 0.114667 2.62842C0.0232087 2.57465 0 4.98347 0 14.5526ZM39.0328 7.76168C34.7442 10.5597 31.2014 12.8824 31.1599 12.9231C31.1037 12.9783 45.5203 25.4166 46.757 26.38L46.9677 26.5442V14.603C46.9677 8.03533 46.9368 2.66454 46.8989 2.66806C46.8611 2.67148 43.3213 4.96366 39.0328 7.76168ZM10.0945 21.5172L1.97989 28.4677L12.7318 28.4905C18.6455 28.5032 28.3222 28.5032 34.2357 28.4905L44.9876 28.4677L36.9189 21.5726C32.4812 17.7802 28.8009 14.6479 28.7405 14.612C28.6751 14.5731 27.7388 15.1291 26.4263 15.9862C25.2139 16.7779 24.0558 17.4696 23.8529 17.5233C23.588 17.5933 23.3798 17.5933 23.1148 17.5233C22.9119 17.4696 21.7554 16.779 20.5451 15.9885C19.3347 15.1981 18.3139 14.5548 18.2768 14.559C18.2395 14.5632 14.5576 17.6944 10.0945 21.5172Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                <div class="footer-whatsapp">
                    <a href="index.html#" class="whatsapp-svg">
                    <svg width="36" height="35" viewBox="0 0 36 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M17.7676 0.0192431C17.6358 0.0345708 17.2354 0.0804854 16.8777 0.121336C14.4071 0.403325 11.8292 1.34851 9.67559 2.76201C5.50566 5.49876 2.76757 9.87317 2.12568 14.8239C1.99898 15.801 1.97912 17.8262 2.08708 18.765C2.30537 20.6645 2.81303 22.4974 3.57211 24.1273L3.87173 24.7705L2.42312 28.883C1.12619 32.5647 0.973811 33.0426 0.968335 33.4455C0.962996 33.8332 0.990925 33.9422 1.16932 34.2307C1.43827 34.6654 1.90417 34.9591 2.3856 34.9973C2.70905 35.0229 3.13148 34.8891 6.95921 33.5484L11.1764 32.0714L11.7711 32.3499C17.9537 35.246 25.3124 34.1401 30.3864 29.552C32.837 27.3362 34.6028 24.4189 35.4298 21.2196C36.638 16.5465 35.7878 11.5272 33.1136 7.54583C30.3911 3.49261 26.2678 0.896411 21.3614 0.146176C20.7087 0.0464087 18.2735 -0.0396727 17.7676 0.0192431ZM14.6187 7.98212C15.0435 8.19636 17.5572 10.6958 17.8042 11.1495C18.0519 11.6044 18.1036 12.2105 17.9374 12.7107C17.8411 13.0006 17.6907 13.2052 17.2059 13.7062L16.5954 14.3369L16.9823 14.9621C17.9816 16.5768 19.3723 17.967 20.9876 18.9658L21.6131 19.3526L22.2441 18.7424C22.7453 18.2578 22.9499 18.1074 23.2399 18.0112C23.7403 17.845 24.3467 17.8967 24.8018 18.1443C25.2566 18.3918 27.7564 20.9044 27.9697 21.3286C28.2009 21.7881 28.2257 22.4198 28.0331 22.9366C27.8961 23.3037 27.7559 23.4711 26.7085 24.5174C25.5008 25.7239 25.1469 25.9907 24.5284 26.1613C24.0853 26.2835 23.0845 26.2977 22.5012 26.1901C20.8804 25.8912 18.8529 24.8407 16.7408 23.2053C15.728 22.4211 13.5257 20.2197 12.7412 19.2073C10.018 15.6928 9.06272 12.6959 10.0483 10.7586C10.1254 10.607 10.7309 9.94023 11.3939 9.2771C12.42 8.25069 12.6553 8.04952 12.9758 7.92498C13.4709 7.7327 14.1725 7.75706 14.6187 7.98212ZM12.7905 10.8078C11.6358 11.9675 11.6005 12.0427 11.7646 12.9933C12.0931 14.8959 13.7393 17.509 16.0895 19.8583C18.4398 22.2077 21.0538 23.8532 22.9572 24.1816C23.9082 24.3456 23.9834 24.3103 25.1435 23.1561L26.1191 22.1856L25.0417 21.107C24.4491 20.5138 23.935 20.0285 23.8993 20.0285C23.8635 20.0285 23.5519 20.3053 23.2066 20.6437C22.503 21.3335 22.2215 21.4857 21.6553 21.4822C21.3214 21.4801 21.1775 21.4325 20.6628 21.1534C18.1904 19.8129 16.135 17.7582 14.794 15.2869C14.5147 14.7723 14.4671 14.6285 14.465 14.2947C14.4615 13.7288 14.6138 13.4473 15.3039 12.744C15.6424 12.3989 15.9193 12.0873 15.9193 12.0516C15.9193 12.0159 15.4338 11.502 14.8404 10.9096L13.7614 9.83266L12.7905 10.8078Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</header>   <div class="helper-content">
                    <div class="text-header">
                    Режим работы:
                    </div>
                    <div class="text-main">
                        <p>Пн-Пт 09:00-20:00</p><p>Сб 09:00-16:00</p>           </div>
                </div>
                </div>
            </div>
            <div class="social-icons">
                <div class="footer-row">
                <div class="footer-inst">
                    <a href="https://www.instagram.com/simed.by/" class="inst-svg">
                    <svg width="35" height="35" viewBox="0 0 35 35" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.33053 0.0697607C7.1841 0.201237 5.84171 0.645371 4.81536 1.23281C2.16243 2.75111 0.411927 5.40648 0.0757145 8.42217C-0.0252382 9.32801 -0.0252382 25.6614 0.0757145 26.5673C0.565783 30.963 4.03577 34.434 8.43018 34.9243C9.33575 35.0252 25.6642 35.0252 26.5698 34.9243C30.9642 34.434 34.4342 30.963 34.9243 26.5673C35.0252 25.6614 35.0252 9.32801 34.9243 8.42217C34.4342 4.02643 30.9642 0.555396 26.5698 0.0651799C25.7655 -0.0245222 9.11628 -0.0203516 8.33053 0.0697607ZM28.0942 4.65632C29.1199 4.96406 29.9027 5.86388 30.077 6.93573C30.283 8.20133 29.5114 9.51958 28.2937 9.98238C27.2532 10.3778 26.0165 10.0946 25.2624 9.28822C23.6839 7.60015 24.6663 4.87039 26.9664 4.55322C27.2375 4.51582 27.796 4.5669 28.0942 4.65632ZM27.1031 6.60591C26.8837 6.65595 26.5956 6.97121 26.5508 7.2103C26.4579 7.70571 26.9443 8.19224 27.4396 8.09932C27.7696 8.03738 28.0445 7.71611 28.0445 7.39244C28.0445 7.24715 28.0085 7.06091 27.9644 6.97859C27.8225 6.71339 27.4116 6.53555 27.1031 6.60591ZM18.757 8.02459C20.8714 8.30608 22.7002 9.21684 24.2389 10.7545C28.0004 14.5134 28.0004 20.4731 24.2389 24.2357C20.4773 27.9985 14.5227 27.9985 10.761 24.2357C6.99955 20.4731 6.99955 14.5134 10.761 10.7545C12.9121 8.60492 15.7746 7.62764 18.757 8.02459ZM16.3653 10.0735C14.7748 10.3207 13.3498 11.0468 12.2019 12.1951C9.26029 15.1376 9.26029 19.8519 12.2019 22.7944C12.5045 23.0971 13.0135 23.5188 13.3331 23.7314C16.3323 25.7277 20.2538 25.3395 22.7981 22.7944C25.7397 19.8519 25.7397 15.1376 22.7981 12.1951C21.096 10.4924 18.7176 9.70801 16.3653 10.0735Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                <div class="footer-email">
                    <a href="mailto:info@u-clinic.by" class="email-svg">
                    <svg width="47" height="29" viewBox="0 0 47 29" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M1.97686 0.582237C2.02484 0.627544 6.88674 3.81144 12.7811 7.65774L23.4982 14.6509L34.2468 7.65017C40.1586 3.79973 45.0347 0.615834 45.0826 0.574671C45.1306 0.533597 35.4317 0.5 23.5297 0.5C10.47 0.5 1.9243 0.532607 1.97686 0.582237ZM0 14.5526V26.5442L0.210529 26.38C0.689839 26.0061 15.87 13.0072 15.87 12.9705C15.87 12.9392 0.570768 2.89648 0.114667 2.62842C0.0232087 2.57465 0 4.98347 0 14.5526ZM39.0328 7.76168C34.7442 10.5597 31.2014 12.8824 31.1599 12.9231C31.1037 12.9783 45.5203 25.4166 46.757 26.38L46.9677 26.5442V14.603C46.9677 8.03533 46.9368 2.66454 46.8989 2.66806C46.8611 2.67148 43.3213 4.96366 39.0328 7.76168ZM10.0945 21.5172L1.97989 28.4677L12.7318 28.4905C18.6455 28.5032 28.3222 28.5032 34.2357 28.4905L44.9876 28.4677L36.9189 21.5726C32.4812 17.7802 28.8009 14.6479 28.7405 14.612C28.6751 14.5731 27.7388 15.1291 26.4263 15.9862C25.2139 16.7779 24.0558 17.4696 23.8529 17.5233C23.588 17.5933 23.3798 17.5933 23.1148 17.5233C22.9119 17.4696 21.7554 16.779 20.5451 15.9885C19.3347 15.1981 18.3139 14.5548 18.2768 14.559C18.2395 14.5632 14.5576 17.6944 10.0945 21.5172Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                <div class="footer-whatsapp">
                    <a href="index.html#" class="whatsapp-svg">
                    <svg width="36" height="35" viewBox="0 0 36 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M17.7676 0.0192431C17.6358 0.0345708 17.2354 0.0804854 16.8777 0.121336C14.4071 0.403325 11.8292 1.34851 9.67559 2.76201C5.50566 5.49876 2.76757 9.87317 2.12568 14.8239C1.99898 15.801 1.97912 17.8262 2.08708 18.765C2.30537 20.6645 2.81303 22.4974 3.57211 24.1273L3.87173 24.7705L2.42312 28.883C1.12619 32.5647 0.973811 33.0426 0.968335 33.4455C0.962996 33.8332 0.990925 33.9422 1.16932 34.2307C1.43827 34.6654 1.90417 34.9591 2.3856 34.9973C2.70905 35.0229 3.13148 34.8891 6.95921 33.5484L11.1764 32.0714L11.7711 32.3499C17.9537 35.246 25.3124 34.1401 30.3864 29.552C32.837 27.3362 34.6028 24.4189 35.4298 21.2196C36.638 16.5465 35.7878 11.5272 33.1136 7.54583C30.3911 3.49261 26.2678 0.896411 21.3614 0.146176C20.7087 0.0464087 18.2735 -0.0396727 17.7676 0.0192431ZM14.6187 7.98212C15.0435 8.19636 17.5572 10.6958 17.8042 11.1495C18.0519 11.6044 18.1036 12.2105 17.9374 12.7107C17.8411 13.0006 17.6907 13.2052 17.2059 13.7062L16.5954 14.3369L16.9823 14.9621C17.9816 16.5768 19.3723 17.967 20.9876 18.9658L21.6131 19.3526L22.2441 18.7424C22.7453 18.2578 22.9499 18.1074 23.2399 18.0112C23.7403 17.845 24.3467 17.8967 24.8018 18.1443C25.2566 18.3918 27.7564 20.9044 27.9697 21.3286C28.2009 21.7881 28.2257 22.4198 28.0331 22.9366C27.8961 23.3037 27.7559 23.4711 26.7085 24.5174C25.5008 25.7239 25.1469 25.9907 24.5284 26.1613C24.0853 26.2835 23.0845 26.2977 22.5012 26.1901C20.8804 25.8912 18.8529 24.8407 16.7408 23.2053C15.728 22.4211 13.5257 20.2197 12.7412 19.2073C10.018 15.6928 9.06272 12.6959 10.0483 10.7586C10.1254 10.607 10.7309 9.94023 11.3939 9.2771C12.42 8.25069 12.6553 8.04952 12.9758 7.92498C13.4709 7.7327 14.1725 7.75706 14.6187 7.98212ZM12.7905 10.8078C11.6358 11.9675 11.6005 12.0427 11.7646 12.9933C12.0931 14.8959 13.7393 17.509 16.0895 19.8583C18.4398 22.2077 21.0538 23.8532 22.9572 24.1816C23.9082 24.3456 23.9834 24.3103 25.1435 23.1561L26.1191 22.1856L25.0417 21.107C24.4491 20.5138 23.935 20.0285 23.8993 20.0285C23.8635 20.0285 23.5519 20.3053 23.2066 20.6437C22.503 21.3335 22.2215 21.4857 21.6553 21.4822C21.3214 21.4801 21.1775 21.4325 20.6628 21.1534C18.1904 19.8129 16.135 17.7582 14.794 15.2869C14.5147 14.7723 14.4671 14.6285 14.465 14.2947C14.4615 13.7288 14.6138 13.4473 15.3039 12.744C15.6424 12.3989 15.9193 12.0873 15.9193 12.0516C15.9193 12.0159 15.4338 11.502 14.8404 10.9096L13.7614 9.83266L12.7905 10.8078Z" fill="#808080"/>
                    </svg>
                    </a>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</header> -->