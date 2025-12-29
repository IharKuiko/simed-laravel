@extends('admin.layouts.default')

@section('title', 'Специалисты')

@section('content')

    <div class="app-content-header"> <!--begin::Container-->
        <div class="container-fluid"> <!--begin::Row-->
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Специалисты</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>

                        <li class="breadcrumb-item active" aria-current="page">
                            Специалисты
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
                            <a href="{{ route('doctors.create') }}" class="btn btn-primary">Добавить специалиста</a>
                        </div> <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Фото</th>
                                    <th>Ф.И.О.</th>
                                    <th>Специализация</th>
                                    <th>Активный</th>
                                    <!-- <th>Category</th>
                                    <th>Tags</th> -->
                                    <th style="width: 150px">Действия</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($doctors as $doctor)
                                    <tr class="align-middle">
                                        <td>{{ $doctor->id }}</td>
                                        <td><img src="/{{ $doctor->photo ?: 'no-image.png' }}" alt="" height="50"></td>
                                        <td>{{ $doctor->name }}</td>
                                        <td>{{ $doctor->specialization }}</td>
                                        <td>
                                            {!! $doctor->status == 'active' ? '<span class="text-success"><i class="bi-person-fill-check bi"></i></span>' : '<span class="text-danger"><i class="bi-person-fill-dash bi"></i></span>' !!}
                                        </td>
                                        {{-- <td>{{ $post->category->title }}</td>
                                        <td>{{ $post->tags->implode('title', ', ') }}</td> -->--}}
                                        <td class="d-flex gap-2">
                                            <a href="{{ route('doctors.edit', ['doctor' => $doctor->id]) }}"
                                               class="btn btn-info"><i class="bi bi-pencil"></i></a>

                                            <form action="{{ route('doctors.destroy', ['doctor' => $doctor->id]) }}" method="post">
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
                            {{ $doctors->links('vendor.pagination.bootstrap-5-admin') }}
                        </div>
                    </div>

                </div>

            </div> <!--end::Row-->
        </div> <!--end::Container-->
    </div> <!--end::App Content-->

@endsection

