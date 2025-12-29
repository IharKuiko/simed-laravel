@extends('admin.layouts.default')

@section('title', 'Edit Category')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Edit Category</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('service-categories.index') }}">Categories</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Edit Category
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
                            <div class="card-title">Edit Category: <strong>{{ $category->title }}</strong></div>
                        </div> <!--end::Header-->

                        <form action="{{ route('service-categories.update', ['service_category' => $category->id]) }}" method="post">
                            @csrf
                            @method('PUT')

                            <div class="card-body">

                                <div class="mb-3 row">
                                    <label for="title" class="col-sm-2 col-form-label required">Category name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="title" class="form-control" id="title" value="{{ $category->title }}" required>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="description"
                                           class="form-label required">Описание</label>
                                    <textarea class="form-control ckeditor" name="description" id="description" cols="30"
                                              rows="10">{{ $category->description }}</textarea>
                                </div>

                               
                                <div class="mb-3">
                                    <input type="hidden" id="image" name="image" value="{{ $category->image }}">

                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="image">Post Image</button>
                                    <div class="mt-3 post-thumb">
                                        @if($category->image)
                                            <img src="/{{ $category->image }}" class="img-fluid" alt="" width="200">

                                        @endif
                                    </div>
                                </div>

                            </div> <!--end::Body-->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-warning">Обновить</button>
                            </div> <!--end::Footer-->

                        </form> <!--end::Form-->
                    </div>

                </div>

            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content-->

@endsection

