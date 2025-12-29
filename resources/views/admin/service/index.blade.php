@extends('admin.layouts.default')

@section('title', 'Posts')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Услуги</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Услуги
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

                    <div class="mb-4 card">
                        <div class="card-header">
                            <a href="{{ route('services.create') }}" class="btn btn-primary">Добавить услугу</a>
                        </div> <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Thumb</th>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Tags</th>
                                    <th style="width: 150px">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($services as $service)
                                    <tr class="align-middle">
                                        <td>{{ $service->id }}</td>
                                        <td><img src="/{{ $service->image ?: 'no-image.png' }}" alt="" height="50"></td>
                                        <td>{{ $service->title }}</td>
                                        <td>{{ $service->category->title }}</td>
                                        <td></td>
                                        <td class="d-flex gap-2">
                                            <a href="{{ route('services.edit', ['service' => $service->id]) }}"
                                               class="btn btn-info"><i class="bi bi-pencil"></i></a>

                                            <form action="{{ route('services.destroy', ['service' => $service->id]) }}" method="post">
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
                        <div class="card-footer clearfix">
                            {{ $services->links('vendor.pagination.bootstrap-5-admin') }}
                        </div>
                    </div>

                </div>

            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content-->

@endsection

