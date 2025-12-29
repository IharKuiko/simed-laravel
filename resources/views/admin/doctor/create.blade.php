@extends('admin.layouts.default')

@section('title', 'Новый специалист')

@section('content')
    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Новый специалист</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>

                        <li class="breadcrumb-item"><a href="{{ route('doctors.index') }}">Специалисты</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Новый специалист
                        </li>
                    </ol>
                </div>
            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content Header--> <!--begin::App Content-->
    <div class="app-content"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->

            <form method="post" action="{{ route('doctors.store') }}">
                @csrf
                <div class="row"> <!--begin::Col-->

                    <div class="col-md-8">

                        <div class="mb-4 card-outline card card-warning">

                            <div class="card-body">

                                <div class="mb-3">
                                    <label for="name" class="form-label required">Ф.И.О.</label>
                                    <input type="text" name="name" class="form-control" id="name"
                                           value="{{ old('name') }}">
                                </div>

                                <div class="mb-3">
                                    <label for="specialization" class="form-label">Специализация</label>
                                    <input type="text" name="specialization" class="form-control" id="specialization" 
                                    class="form-control" value="{{ old('specialization') }}">
                                </div>

                                <div class="mb-3">
                                    <label for="professional_category" class="form-label">Категория</label>
                                    <input type="text" name="professional_category" class="form-control" id="professional_category" 
                                    class="form-control" value="{{ old('professional_category') }}">
                                </div>


                               
                               
                                <div class="mb-3">
                                    <label for="education" class="form-label">Образование</label>
                                    <input type="text" name="education" class="form-control" id="education" 
                                    class="form-control" value="{{ old('education') }}">
                                </div>
                                <!-- <div class="mb-3">
                                    <label for="education" class="form-label required">Образование</label>
                                           
                                    <textarea class="form-control ckeditor" name="education" id="education" cols="30"

                                              rows="10">{{ old('education') }}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="additional_education" class="form-label required">Дополнительное образование</label>
                                           
                                    <textarea class="form-control ckeditor" name="additional_education" id="additional_education" cols="30"

                                              rows="10">{{ old('additional_education') }}</textarea>
                                </div> -->

                            </div>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="mb-4 card-outline card card-warning">

                            <div class="card-body">

                                {{--<div class="mb-3">
                                    <label for="category_id"
                                           class="form-label required">Category</label>
                                    <select name="category_id" id="category_id" class="form-select">
                                        @foreach($categories as $category_id => $category_title)
                                            <option value="{{ $category_id }}"  @selected(old('category_id') == $category_id)>{{ $category_title }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="tags"
                                           class="form-label">Tags</label>
                                    <select name="tags[]" id="tags" class="form-select select2" multiple>
                                        @foreach($tags as $tag_id => $tag_title)
                                            <option value="{{ $tag_id }}" {{ old('tags') && in_array($tag_id, old('tags')) ? 'selected' : '' }}>{{ $tag_title }}</option>
                                        @endforeach
                                    </select>
                                </div>--}}

                                <div class="mb-3">
                                    <label for="experience" class="form-label">Опыт работы</label>
                                    <input type="text" name="experience" class="form-control" id="experience"
                                           value="{{ old('experience') }}">
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" id="photo" name="photo" value="{{ old('photo') }}">
                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="photo">Post Image</button>
                                    <div class="mt-3 post-thumb"></div>
                                </div>

                                <div class="form-group">
                                    <label for="status">Статус</label>
                                    <select name="status" id="status" class="form-control" required>
                                        <option value="active">Активный</option>
                                        <option value="inactive">Не активный</option>
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
