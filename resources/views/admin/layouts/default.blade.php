<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Админ панель :: @yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="AdminLTE v4 | Dashboard">
    <meta name="author" content="ColorlibHQ">
    <meta name="description"
          content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS.">
    <meta name="keywords"
          content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
          integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q=" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.min.css"
          integrity="sha256-Qsx5lrStHZyR9REqhUF8iQt73X06c8LGIUPzpOhwRrI=" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/styles/overlayscrollbars.min.css"
          integrity="sha256-dSokZseQNT08wYEWiz5iLI8QPlKxG+TswNRD8k35cpg=" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('assets/admin/colorbox/colorbox.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/admin/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/admin/css/adminlte.css') }}">

    <style>
        .cke_notifications_area {
            display: none;
        }

        label.required::before {
            content: "* ";
            color: #ff0000;
            font-weight: 700;
        }
    </style>
</head>

<body class="layout-fixed bg-body-tertiary sidebar-expand-lg"> <!--begin::App Wrapper-->
<div class="app-wrapper"> <!--begin::Header-->
    <nav class="bg-body app-header navbar navbar-expand"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Start Navbar Links-->
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" data-lte-toggle="sidebar" href="#" role="button"> <i
                            class="bi bi-list"></i> </a></li>
                <li class="d-md-block nav-item d-none"><a href="{{ route('home') }}" target="_blank" class="nav-link">На главную</a>
                </li>
            </ul> <!--end::Start Navbar Links--> <!--begin::End Navbar Links-->
            <ul class="ms-auto navbar-nav"> <!--begin::Navbar Search-->
                <li class="nav-item"><a class="nav-link" data-widget="navbar-search" href="#" role="button"> <i
                            class="bi bi-search"></i> </a></li> <!--end::Navbar Search-->
                <!--begin::Messages Dropdown Menu-->
                <li class="nav-item dropdown"><a class="nav-link" data-bs-toggle="dropdown" href="#"> <i
                            class="bi bi-chat-text"></i> <span class="text-bg-danger navbar-badge badge">3</span> </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end"><a href="#" class="dropdown-item">
                            <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0"><img
                                        src="{{ asset('assets/admin/assets/img/user1-128x128.jpg') }}" alt="User Avatar"
                                        class="me-3 rounded-circle img-size-50"></div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel
                                        <span class="float-end text-danger fs-7"><i class="bi bi-star-fill"></i></span>
                                    </h3>
                                    <p class="fs-7">Call me whenever you can...</p>
                                    <p class="text-secondary fs-7"><i class="me-1 bi bi-clock-fill"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0"><img
                                        src="{{ asset('assets/admin/assets/img/user8-128x128.jpg') }}" alt="User Avatar"
                                        class="me-3 rounded-circle img-size-50"></div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        John Pierce
                                        <span class="float-end text-secondary fs-7"> <i
                                                class="bi bi-star-fill"></i> </span>
                                    </h3>
                                    <p class="fs-7">I got your message bro</p>
                                    <p class="text-secondary fs-7"><i class="me-1 bi bi-clock-fill"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0"><img
                                        src="{{ asset('assets/admin/assets/img/user3-128x128.jpg') }}" alt="User Avatar"
                                        class="me-3 rounded-circle img-size-50"></div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester
                                        <span class="float-end text-warning fs-7"> <i
                                                class="bi bi-star-fill"></i> </span>
                                    </h3>
                                    <p class="fs-7">The subject goes here</p>
                                    <p class="text-secondary fs-7"><i class="me-1 bi bi-clock-fill"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                </li> <!--end::Messages Dropdown Menu--> <!--begin::Notifications Dropdown Menu-->
                <li class="nav-item dropdown"><a class="nav-link" data-bs-toggle="dropdown" href="#"> <i
                            class="bi bi-bell-fill"></i> <span class="text-bg-warning navbar-badge badge">15</span> </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end"><span
                            class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="me-2 bi bi-envelope"></i> 4 new messages
                            <span class="float-end text-secondary fs-7">3 mins</span> </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="me-2 bi bi-people-fill"></i> 8 friend requests
                            <span class="float-end text-secondary fs-7">12 hours</span> </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="me-2 bi bi-file-earmark-fill"></i> 3 new reports
                            <span class="float-end text-secondary fs-7">2 days</span> </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">
                            See All Notifications
                        </a>
                    </div>
                </li> <!--end::Notifications Dropdown Menu--> <!--begin::Fullscreen Toggle-->
                <li class="nav-item"><a class="nav-link" href="#" data-lte-toggle="fullscreen"> <i
                            data-lte-icon="maximize" class="bi bi-arrows-fullscreen"></i> <i data-lte-icon="minimize"
                                                                                             class="bi bi-fullscreen-exit"
                                                                                             style="display: none;"></i>
                    </a></li> <!--end::Fullscreen Toggle--> <!--begin::User Menu Dropdown-->
                <li class="nav-item dropdown user-menu"><a href="#" class="nav-link dropdown-toggle"
                                                           data-bs-toggle="dropdown"> <img
                            src="{{ asset('assets/front/images/reviewers/icon-woman.png') }}"
                            class="shadow rounded-circle user-image" alt="User Image"> <span class="d-md-inline d-none">{{ auth()->user()->name }}</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end"> <!--begin::User Image-->
                        <li class="text-bg-primary user-header"><img
                                src="{{ asset('assets/front/images/reviewers/icon-woman.png') }}"
                                class="shadow rounded-circle" alt="User Image">
                            <p>
                                {{ auth()->user()->name }} - Администратор
                                <small>Member since {{ auth()->user()->created_at->format('M. Y') }}</small>
                                
                            </p>
                        </li> <!--end::User Image--> <!--begin::Menu Body-->
  
                        <li class="user-footer">
                            <a href="{{ route('users.edit', ['user' => auth()->user()->id]) }}" class="btn btn-default btn-flat">Профиль</a> 
                            <form id="logout-form" action="{{ route('logout') }}" method="POST">
        @csrf
        <button class="dropdown-item" type="submit">
            Выйти
        </button>
    </form>
                            <!-- <a href="{{ route('logout') }}" class="float-end btn btn-default btn-flat">Sign out</a> -->
                        </li> <!--end::Menu Footer-->
                    </ul>
                </li> <!--end::User Menu Dropdown-->
            </ul> <!--end::End Navbar Links-->
        </div> <!--end::Container-->
    </nav> <!--end::Header--> <!--begin::Sidebar-->
    <aside class="bg-body-secondary shadow app-sidebar" data-bs-theme="dark"> <!--begin::Sidebar Brand-->
        <div class="sidebar-brand"> <!--begin::Brand Link--> <a href="{{ route('admin.main.index') }}"
                                                                class="brand-link"> <!--begin::Brand Image--> <img
                    src="{{ asset('assets/front/images/logo.webp') }}" alt="Logo"
                    class="opacity-75 shadow brand-image"> <!--end::Brand Image--> <!--begin::Brand Text--> <span
                    class="brand-text fw-light">Simed</span> <!--end::Brand Text--> </a> <!--end::Brand Link-->
        </div> <!--end::Sidebar Brand--> <!--begin::Sidebar Wrapper-->
        <div class="sidebar-wrapper">
            <nav class="mt-2"> <!--begin::Sidebar Menu-->
                <ul class="flex-column nav sidebar-menu" data-lte-toggle="treeview" role="menu" data-accordion="false">

                    <li class="nav-item">
                        <a href="{{ route('admin.main.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-speedometer"></i>
                            <p>Админ панель</p>
                        </a>
                    </li>

                    <!-- <li class="nav-item">
                        <a href="{{ route('categories.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-card-list"></i>
                            <p>Categories</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('posts.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-pencil-square"></i>
                            <p>Posts</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('tags.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-tags"></i>
                            <p>Tags</p>
                        </a>
                    </li> -->

                    <li class="nav-item">
                        <a href="{{ route('users.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-people"></i>
                            <p>Пользователи</p>
                        </a>
                    </li>


                    <li class="nav-item">
                        <a href="{{ route('doctors.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-person-lines-fill"></i>
                            <p>Специалисты</p>
                        </a>
                    </li>

                    <!-- <li class="nav-item">
                        <a href="{{ route('service-categories.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-card-list"></i>
                            <p>Категории услуг</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('services.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-pencil-square"></i>
                            <p>Услуги</p>
                        </a>
                    </li> -->

                    <li class="nav-item">
                        <a href="{{ route('ginecology-service-categories.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-card-list"></i>
                            <p>Категории гинекологически услуг</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('ginecology-services.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-pencil-square"></i>
                            <p>Услуги гинекология</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('ultrasound-service-categories.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-card-list"></i>
                            <p>Категории УЗИ услуг</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('ultrasound-services.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-pencil-square"></i>
                            <p>Услуги УЗИ</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('reviews.index') }}" class="nav-link"> <i
                                class="nav-icon bi bi-pencil-square"></i>
                            <p>Отзывы</p>
                        </a>
                    </li>

                </ul> <!--end::Sidebar Menu-->
            </nav>
        </div> <!--end::Sidebar Wrapper-->
    </aside> <!--end::Sidebar-->

    <!--begin::App Main-->
    <main class="app-main">

        @if ($errors->any())
            <div class="mt-3 app-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-danger">
                                <ul class="mb-0 list-unstyled">
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if (session()->has('error'))
            <div class="mt-3 app-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if (session()->has('success'))
            <div class="mt-3 app-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @yield('content')

    </main>


    <!--begin::Footer-->
    <footer class="app-footer"> <!--begin::To the end-->
        <div class="d-sm-inline float-end d-none">Anything you want</div> <!--end::To the end--> <!--begin::Copyright-->
        <strong>
            Copyright &copy; 2014-2024&nbsp;
            <a href="https://adminlte.io" class="text-decoration-none">AdminLTE.io</a>.
        </strong>
        All rights reserved.
        <!--end::Copyright-->
    </footer> <!--end::Footer-->
</div> <!--end::App Wrapper-->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha256-whL0tQWoY1Ku1iskqPFvmZ+CHsvmRWx/PIoEvIeWh4I=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha256-YMa+wAM6QkVyz999odX7lPRxkoYAan8suedu4k2Zur8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/browser/overlayscrollbars.browser.es6.min.js"
        integrity="sha256-H2VM7BKda+v2Z4+DRy69uknwxjyDRhszjXFhsL4gD3w=" crossorigin="anonymous"></script>
<script src="{{ asset('assets/admin/js/adminlte.js') }}"></script>
<script src="{{ asset('assets/jquery-3.7.1.min.js') }}"></script>
<script src="{{ asset('assets/admin/ckeditor/ckeditor.js') }}"></script>
<script src="{{ asset('assets/admin/colorbox/jquery.colorbox-min.js') }}"></script>
<script src="{{ asset('packages/barryvdh/elfinder/js/standalonepopup.js') }}"></script>
<script src="{{ asset('assets/admin/select2/js/select2.min.js') }}"></script>
<script src="{{ asset('assets/admin/js/main.js') }}"></script>

</body><!--end::Body-->

</html>

