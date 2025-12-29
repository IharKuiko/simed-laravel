@extends('admin.layouts.default')

@section('title', 'Редактирование специалиста')

@section('content')
    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Редактирование специалиста</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>

                        <li class="breadcrumb-item"><a href="{{ route('doctors.index') }}">Специалисты</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Редактирование специалиста
                        </li>
                    </ol>
                </div>
            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content Header--> <!--begin::App Content-->
    <div class="app-content"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->

            <form method="post" action="{{ route('doctors.update', ['doctor' => $doctor->id]) }}">
                @csrf
                @method('PUT')

                <div class="row"> <!--begin::Col-->

                    <div class="col-md-8">

                        <div class="mb-4 card-outline card card-warning">

                            <div class="card-body">

                                <div class="mb-3">
                                    <label for="name" class="form-label required">Ф.И.О.</label>
                                    <input type="text" name="name" class="form-control" id="name"
                                           value="{{ $doctor->name }}">
                                </div>


                                <div class="mb-3">
                                    <label for="specialization" class="form-label">Специализация</label>
                                    <input type="text" name="specialization" class="form-control" id="specialization" 
                                    class="form-control" value="{{ $doctor->specialization }}">
                                </div>

                               

                                <div class="mb-3">
                                    <label for="professional_category" class="form-label">Категория</label>
                                    <input type="text" name="professional_category" class="form-control" id="professional_category" 
                                    class="form-control" value="{{ $doctor->professional_category }}">
                                </div>

                                 <div class="mb-3">
                                    <label for="education" class="form-label">Образование</label>
                                    <input type="text" name="education" class="form-control" id="education" 
                                    class="form-control" value="{{ $doctor->education }}">
                                </div>

                                <!-- <div class="mb-3">
                                    <label for="education" class="form-label required">Образование</label>
                                           
                                    <textarea class="form-control ckeditor" name="education" id="education" cols="30"

                                              rows="10">{{ $doctor->education }}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="additional_education" class="form-label required">Дополнительное образование</label>
                                           
                                    <textarea class="form-control ckeditor" name="additional_education" id="additional_education" cols="30"

                                              rows="10">{{ $doctor->additional_education }}</textarea>
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
                                            <option
                                                value="{{ $category_id }}"
                                                @selected($post->category_id == $category_id)
                                            >{{ $category_title }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="tags"
                                           class="form-label">Tags</label>
                                    <select name="tags[]" id="tags" class="form-select select2" multiple>
                                        @php $tag_ids = $post->tags->pluck('id')->all() @endphp
                                        @foreach($tags as $tag_id => $tag_title)
                                            <option value="{{ $tag_id }}" {{ in_array($tag_id, $tag_ids) ? 'selected' : '' }}>{{ $tag_title }}</option>
                                        @endforeach
                                    </select>
                                </div>--}}

                                 <div class="mb-3">
                                    <label for="experience" class="form-label">Опыт работы</label>
                                    <input type="text" name="experience" class="form-control" id="experience"
                                           value="{{ $doctor->experience }}">
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" id="photo" name="photo" value="{{ $doctor->photo }}">

                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="photo">Фото</button>
                                    <div class="mt-3 post-thumb">
                                        @if($doctor->photo)
                                            <img src="/{{ $doctor->photo }}" class="img-fluid" alt="" width="200">

                                        @endif
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="status">Статус</label>
                                    <select name="status" id="status" class="form-control" required>
                                        <option value="active" {{ $doctor->status == 'active' ? 'selected' : '' }}>Активный</option>
                                        <option value="inactive" {{ $doctor->status == 'inactive' ? 'selected' : '' }}>Не активный</option>
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

            <div class="accordion" id="accordionPanelsStayOpenExample">

                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false" aria-controls="panelsStayOpen-collapseOne">
                            Сертификаты
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
                        <div class="accordion-body">
                            <div class="col-md-12">

                                <div class="mb-4 card-outline card card-warning"> <!--begin::Header-->
                                    <div class="card-header">
                                        <div class="card-title">Сертификаты</div>
                                    </div> <!--end::Header-->

                                    <div class="card-body">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th style="width: 10px">ID</th>
                                                <th>Изображение</th>
                                                <th>Заголовок</th>
                                                <th style="width: 150px">Действия</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($sertificates as $sert)
                                                <tr class="align-middle">
                                                    <td>{{ $sert->id }}</td>
                                                    <td><img src="/{{ $sert->image ?: 'no-image.png' }}" alt="" height="50"></td>
                                                    <td>{{ $sert->title }}</td>
                                                    <td class="d-flex gap-2">
                                                        <a href="{{ route('doctor-sertificates.edit', ['doctor_sertificate' => $sert->id, ]) }}"
                                                           class="btn btn-info"><i class="bi bi-pencil"></i></a>

                                                        <form action="{{ route('doctor-sertificates.destroy', ['doctor_sertificate' => $sert->id, ]) }}" method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger" onclick="return confirm('Confirm action')"><i class="bi bi-trash"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div> <!-- /.card-body -->

                                    <form action="{{ route('doctor-sertificates.store') }}" method="post">
                                        @csrf

                                        <div class="card-body">

                                            <div class="mb-3 row">
                                                <div class="col-sm-10">
                                                    <input type="hidden" name="doctor_id" class="form-control" id="doctor_id" value="{{ $doctor->id }}" required>
                                                </div>
                                            </div>


                                            <div class="mb-3 row">
                                                <label for="title" class="col-sm-2 col-form-label">Заголовок</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="title" class="form-control" id="title" value="{{ old('title') }}">
                                                </div>
                                            </div>

                                            <div class="mb-3 row">
                                                <label for="title" class="col-sm-2 col-form-label">Описание</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="description" class="form-control" id="description" value="{{ old('description') }}">
                                                </div>
                                            </div>




                                            <div class="mb-3">
                                                <input type="hidden" id="prod-image" name="image" value="">
                                                <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="prod-image">Изображение</button>

                                                <div class="mt-3 post-thumb"></div>
                                            </div>

                                            <input type="hidden" name="redirect" value="{{ request()->get('redirect') }}">

                                        </div> <!--end::Body-->

                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-warning">Сохранить</button>
                                        </div> <!--end::Footer-->

                                    </form> <!--end::Form-->
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                            Дополнительное образование
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                        <div class="accordion-body">
                            <div class="col-md-12">

                                <div class="mb-4 card-outline card card-warning"> <!--begin::Header-->
                                    <div class="card-header">
                                        <div class="card-title">Дополнительное образование</div>
                                    </div> <!--end::Header-->

                                    <div class="card-body">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th style="width: 10px">ID</th>
                                                <th>Название</th>


                                                <th style="width: 150px">Действия</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($educations as $edu)
                                                <tr class="align-middle">
                                                    <td>{{ $edu->id }}</td>
                                                    
                                                    <td>{{ $edu->title }}</td>
                                                    <td class="d-flex gap-2">
                                                        <a href="{{ route('doctor-education.edit', ['doctor_education' => $edu->id, ]) }}"
                                                           class="btn btn-info"><i class="bi bi-pencil"></i></a>

                                                        <form action="{{ route('doctor-education.destroy', ['doctor_education' => $edu->id, ]) }}" method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger" onclick="return confirm('Confirm action')"><i class="bi bi-trash"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div> <!-- /.card-body -->

                                    <form action="{{ route('doctor-education.store') }}" method="post">
                                        @csrf

                                        <div class="card-body">

                                            <div class="mb-3 row">
                                                <div class="col-sm-10">
                                                    <input type="hidden" name="doctor_id" class="form-control" id="doctor_id" value="{{ $doctor->id }}" required>
                                                </div>
                                            </div>


                                            <div class="mb-3 row">
                                                <label for="title" class="col-sm-2 col-form-label">Название</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="title" class="form-control" id="title" value="{{ old('title') }}">
                                                </div>
                                            </div>

                                            

                                            <input type="hidden" name="redirect" value="{{ request()->get('redirect') }}">

                                        </div> <!--end::Body-->

                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-warning">Сохранить</button>
                                        </div> <!--end::Footer-->

                                    </form> <!--end::Form-->
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div> <!--end::Container-->
    </div> <!--end::App Content-->
@endsection
