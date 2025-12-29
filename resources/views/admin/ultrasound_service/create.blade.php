@extends('admin.layouts.default')

@section('title', 'Новая услуга УЗИ')

@section('content')
    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Новая услуга УЗИ</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('ultrasound-services.index') }}">Услуги УЗИ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Новая услуга УЗИ
                        </li>
                    </ol>
                </div>
            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content Header--> <!--begin::App Content-->
    <div class="app-content"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->

            <form method="post" action="{{ route('ultrasound-services.store') }}">
                @csrf
                <div class="row"> <!--begin::Col-->

                    <div class="col-md-8">

                        <div class="mb-4 card-outline card card-warning">

                            <div class="card-body">

                                <div class="mb-3">
                                    <label for="title" class="form-label required">Название услуги УЗИ</label>
                                    <input type="text" name="title" class="form-control" id="title"
                                           value="{{ old('title') }}">
                                </div>

                                <div class="mb-3">
                                    <label for="description"
                                           class="form-label required">Описание</label>
                                    <textarea class="form-control ckeditor" name="description" id="description" cols="30"
                                              rows="10">{{ old('description') }}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="details"
                                           class="form-label required">Детали</label>
                                    <textarea class="form-control ckeditor" name="details" id="details" cols="30"
                                              rows="10">{{ old('details') }}</textarea>
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="mb-4 card-outline card card-warning">

                            <div class="card-body">

                                <div class="mb-3">
                                    <label for="category_id"
                                           class="form-label required">Категория</label>
                                    <select name="category_id" id="category_id" class="form-select">
                                        @foreach($categories as $category_id => $category_title)
                                            <option value="{{ $category_id }}"  @selected(old('category_id') == $category_id)>{{ $category_title }}</option>
                                        @endforeach
                                    </select>
                                </div>

     

                                <div class="mb-3">
                                    <label for="price" class="form-label">Цена</label>
                                    <input type="text" name="price" class="form-control" id="price"
                                           value="{{ old('price') }}">
                                </div>

                                <div class="mb-3">
                                    <label for="duration" class="form-label">Продолжительность</label>
                                    <input type="text" name="duration" class="form-control" id="duration"
                                           value="{{ old('duration') }}">
                                </div>

                                <div class="mb-3">
                                    <label for="unit" class="form-label">Единица измерения</label>
                                    <input type="text" name="unit" class="form-control" id="unit"
                                           value="{{ old('unit') }}">
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" id="image" name="image" value="{{ old('image') }}">
                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="image">Картинка</button>
                                    <div class="mt-3 post-thumb"></div>
                                </div>

                                <div class="form-group">
                                    <label for="status">Статус</label>
                                    <select name="status" id="status" class="form-control" required>
                                        <option value="active">Активна</option>
                                        <option value="inactive">Неактивна</option>
                                    </select>
                                </div>
                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-warning">Сохранить</button>
                            </div>

                        </div>

                    </div>

                </div><!--end::Row--> <!--begin::Row-->
            </form>

        </div> <!--end::Container-->
    </div> <!--end::App Content-->
@endsection
