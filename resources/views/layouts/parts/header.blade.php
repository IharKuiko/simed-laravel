<header>

    <nav class="bg-body-tertiary second-nav purple">
        <div class="d-flex align-items-center second-nav-container container-fluid">
            <!-- Левая часть: Переключение языков -->
            

            <!-- Центральная часть: Социальные сети и телефон -->
           
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
                                    <div class="working-hours-info-container"></div>
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
                    <button  id="btn_toggler1" class="btn">
                                <i class="fas fa-paper-plane"></i>
                                Записаться на прием
                    </button>
                </div>
            </div>
        </div>
    </nav>

</header>


