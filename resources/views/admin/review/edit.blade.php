@extends('admin.layouts.default')

@section('title', 'Редактировать отзыв')

@section('content')
    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Редактировать отзыв</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="float-sm-end breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Админ панель</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('reviews.index') }}">Отзывы</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Редактировать отзыв</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <form method="post" action="{{ route('reviews.update', ['review' => $review->id]) }}">
                @csrf
                @method('PUT')

                <div class="row">
                    <div class="col-md-8">
                        <div class="mb-4 card-outline card card-warning">
                            <div class="card-body">
                                <div class="mb-3">
                                    <label for="client_name" class="form-label required">Имя клиента</label>
                                    <input type="text" name="client_name" class="form-control" id="client_name"
                                           value="{{ $review->client_name }}">
                                </div>

                                <div class="mb-3">
                                    <label for="review_text" class="form-label">Текст отзыва</label>

                                    <textarea class="form-control ckeditor" name="review_text" id="review_text_ru" cols="30"
                                              rows="6">{{ $review->review_text }}</textarea>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="mb-4 card-outline card card-warning">
                            <div class="card-body">
                                <div class="mb-3">
                                    <label for="rating" class="form-label required">Рейтинг</label>
                                    <select name="rating" id="rating" class="form-select" required>
                                        <option value="">Выбери рейтинг</option>
                                        <option value="5" {{ $review->rating == 5 ? 'selected' : '' }}>⭐⭐⭐⭐⭐ (5/5)</option>
                                        <option value="4" {{ $review->rating == 4 ? 'selected' : '' }}>⭐⭐⭐⭐ (4/5)</option>
                                        <option value="3" {{ $review->rating == 3 ? 'selected' : '' }}>⭐⭐⭐ (3/5)</option>
                                        <option value="2" {{ $review->rating == 2 ? 'selected' : '' }}>⭐⭐ (2/5)</option>
                                        <option value="1" {{ $review->rating == 1 ? 'selected' : '' }}>⭐ (1/5)</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="review_date" class="form-label required">Дата отзыва</label>
                                    <input type="date" name="review_date" class="form-control" id="review_date"
                                           value="{{ $review->review_date->format('Y-m-d') }}">
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" id="client_photo" name="client_photo" value="{{ $review->client_photo }}">
                                    <button type="button" class="btn-outline-primary btn popup_selector" data-inputid="client_photo">Фото клиента</button>
                                    <div class="mt-3 client-photo">
                                        @if($review->client_photo)
                                            <img src="/{{ $review->client_photo }}" alt="" width="200" class="rounded">
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="status">Статус</label>
                                    <select name="status" id="status" class="form-control" required>
                                        <option value="active" {{ $review->status == 'active' ? 'selected' : '' }}>Активный</option>
                                        <option value="inactive" {{ $review->status == 'inactive' ? 'selected' : '' }}>Неактивный</option>
                                    </select>
                                </div>
                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-warning">Сохранить</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
