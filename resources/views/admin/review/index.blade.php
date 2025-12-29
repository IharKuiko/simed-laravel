@extends('admin.layouts.default')

@section('title', 'Отзывы')

@section('content')

    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Отзывы</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Отзывы</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="mb-4 card">
                        <div class="card-header">
                            <a href="{{ route('reviews.create') }}" class="btn btn-primary">Добавить отзыв</a>
                            
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Фото</th>
                                    <th>Клиент</th>
                                    <th>Рейтинг</th>
                                    <th>Дата</th>
                                    <th>Статус</th>
                                    <th style="width: 150px">Действия</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($reviews as $review)
                                    <tr class="align-middle">
                                        <td>{{ $review->id }}</td>
                                        <td>
                                            @if($review->client_photo)
                                                <img src="/{{ $review->client_photo }}" alt="" height="50" class="rounded-circle">
                                            @else
                                                <div class="d-flex align-items-center justify-content-center bg-secondary rounded-circle" style="width: 50px; height: 50px;">
                                                    <i class="text-white bi bi-person"></i>
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            <strong>{{ $review->client_name }}</strong>
                                            @if($review->client_position)
                                                <br><small class="text-muted">{{ $review->client_position }}</small>
                                            @endif
                                        </td>
                                        <td>
                                            @for($i = 1; $i <= 5; $i++)
                                                <i class="bi bi-star{{ $i <= $review->rating ? '-fill text-warning' : '' }}"></i>
                                            @endfor
                                            <small>({{ $review->rating }}/5)</small>
                                        </td>
                                        <td>{{ $review->review_date->format('d.m.Y') }}</td>
                                        <td>
                                            <span class="badge {{ $review->status === 'published' ? 'bg-success' : 'bg-warning' }}">
                                                {{ ucfirst($review->status) }}
                                            </span>
                                        </td>
                                        <td class="d-flex gap-2">
                                            <a href="{{ route('reviews.edit', ['review' => $review->id]) }}"
                                               class="btn btn-info btn-sm"><i class="bi bi-pencil"></i></a>

                                            <form action="{{ route('reviews.destroy', ['review' => $review->id]) }}" method="post">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger btn-sm" onclick="return confirm('Confirm action')"><i class="bi bi-trash"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer clearfix">
                            {{ $reviews->links('vendor.pagination.bootstrap-5-admin') }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
