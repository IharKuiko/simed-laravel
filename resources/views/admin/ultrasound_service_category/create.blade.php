@extends('admin.layouts.default')

@section('title', 'Новая категория УЗИ')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Новая категория УЗИ</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('ultrasound-service-categories.index') }}">Категории УЗИ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Новая категория УЗИ
                        </li>
                    </ol>
                </div>
            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content Header--> <!--begin::App Content-->
    <div class="app-content"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row"> <!--begin::Col-->

                <div class="col-md-12">

                    <div class="mb-4 card-outline card card-warning"> <!--begin::Header-->
                        <div class="card-header">
                            <div class="card-title">Новая категория УЗИ</div>
                        </div> <!--end::Header-->

                        <form action="{{ route('ultrasound-service-categories.store') }}" method="post">
                            @csrf

                            <div class="card-body">

                                <div class="mb-3 row">
                                    <label for="title" class="col-sm-2 col-form-label required">Название категории</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="title" class="form-control" id="title" value="{{ old('title') }}" required>
                                    </div>
                                </div>

                                <!-- <div class="mb-3 row">
                                    <label for="description" class="col-sm-2 col-form-label">Описание</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="description" class="form-control" id="description" value="{{ old('description') }}">
                                    </div>
                                </div> -->

                                <div class="mb-3">
                                    <label for="description"
                                           class="form-label required">Описание</label>
                                    <textarea class="form-control ckeditor" name="description" id="description" cols="30"
                                              rows="10">{{ old('description') }}</textarea>
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" id="image" name="image" value="{{ old('image') }}">
                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="image">Картинка категории УЗИ</button>
                                    <div class="mt-3 post-thumb"></div>
                                </div>


                                <div class="mb-3">
                                    <label for="status" class="form-label required">Статус</label>
                                    <select class="form-select" name="status" id="status">
                                        <option value="active">Активный</option>
                                        <option value="inactive">Неактивный</option>
                                    </select>
                                </div>

                            </div> <!--end::Body-->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-warning">Добавить</button>
                            </div> <!--end::Footer-->

                        </form> <!--end::Form-->
                    </div>

                </div>

            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content-->

@endsection

