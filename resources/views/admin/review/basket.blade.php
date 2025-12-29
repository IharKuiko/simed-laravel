@extends('admin.layouts.default')

@section('title', 'Reviews Basket')

@section('content')

    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Reviews Basket</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end">
                        <li class="breadcrumb-item"><a href="{{ route('admin.main.index') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('reviews.index') }}">Reviews</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Basket</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-4">
                        <div class="card-header">
                            <a href="{{ route('reviews.index') }}" class="btn btn-primary">Back to Reviews</a>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Photo</th>
                                    <th>Client</th>
                                    <th>Company</th>
                                    <th>Rating</th>
                                    <th>Deleted At</th>
                                    <th style="width: 150px">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @forelse($reviews as $review)
                                    <tr class="align-middle">
                                        <td>{{ $review->id }}</td>
                                        <td>
                                            @if($review->client_photo)
                                                <img src="/{{ $review->client_photo }}" alt="" height="50" class="rounded-circle">
                                            @else
                                                <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center" style="width: 50px; height: 50px;">
                                                    <i class="bi bi-person text-white"></i>
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            <strong>{{ $review->client_name }}</strong>
                                            @if($review->client_position)
                                                <br><small class="text-muted">{{ $review->client_position }}</small>
                                            @endif
                                        </td>
                                        <td>{{ $review->company_name ?: '-' }}</td>
                                        <td>
                                            @for($i = 1; $i <= 5; $i++)
                                                <i class="bi bi-star{{ $i <= $review->rating ? '-fill text-warning' : '' }}"></i>
                                            @endfor
                                            <small>({{ $review->rating }}/5)</small>
                                        </td>
                                        <td>{{ $review->deleted_at->format('d.m.Y H:i') }}</td>
                                        <td class="d-flex gap-2">
                                            <form action="{{ route('admin.reviews.basket.restore', ['review' => $review->id]) }}" method="post">
                                                @csrf
                                                <button class="btn btn-success btn-sm" onclick="return confirm('Restore this review?')">
                                                    <i class="bi bi-arrow-clockwise"></i> Restore
                                                </button>
                                            </form>

                                            <form action="{{ route('admin.reviews.basket.remove', ['review' => $review->id]) }}" method="post">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger btn-sm" onclick="return confirm('Permanently delete this review?')">
                                                    <i class="bi bi-trash"></i> Delete
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="text-center">No deleted reviews found</td>
                                    </tr>
                                @endforelse
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
