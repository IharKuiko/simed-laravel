@extends('admin.layouts.default')

@section('title', 'Редактирование образования врача')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Редактирование образования врача</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('categories.index') }}">Categories</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Редактирование образования врача
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
                            <div class="card-title">Редактирование образования врача: <strong>{{ $education->title }}</strong></div>
                        </div> <!--end::Header-->

                        <form action="{{ route('doctor-education.update', ['doctor_education' => $education->id]) }}" method="post">
                            @csrf
                            @method('PUT')

                            <div class="card-body">

                                <div class="mb-3 row">
                                    <label for="title" class="col-sm-2 col-form-label required">Category name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="title" class="form-control" id="title" value="{{ $education->title }}" required>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="meta_desc" class="col-sm-2 col-form-label">Meta description</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="meta_desc" class="form-control" id="meta_desc" value="{{ $education->meta_desc }}">
                                    </div>
                                </div>

                            </div> <!--end::Body-->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-warning">Save</button>
                            </div> <!--end::Footer-->

                        </form> <!--end::Form-->
                    </div>

                </div>

            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content-->

@endsection