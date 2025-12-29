@extends('admin.layouts.default')

@section('title', 'Edit User')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Edit User</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Edit User
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

                    <div class="card card-warning card-outline mb-4"> <!--begin::Header-->
                        <div class="card-header">
                            <div class="card-title">Edit User</div>
                        </div> <!--end::Header-->

                        <form action="{{ route('users.update', ['user' => $user->id]) }}" method="post">
                            @csrf
                            @method('PUT')

                            <div class="card-body">

                                <div class="row mb-3">
                                    <label for="name" class="col-sm-2 col-form-label required">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="name" class="form-control" id="name" value="{{ $user->name }}" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="email" class="col-sm-2 col-form-label required">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" name="email" class="form-control" id="email" value="{{ $user->email }}" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="password" class="col-sm-2 col-form-label">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="password" class="form-control" id="password">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="password_confirmation" class="col-sm-2 col-form-label">Password Confirmation</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="password_confirmation" class="form-control" id="password_confirmation">
                                    </div>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="1" id="is_admin" name="is_admin" @checked($user->is_admin)>
                                    <label class="form-check-label" for="is_admin">
                                        Is Admin
                                    </label>
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

