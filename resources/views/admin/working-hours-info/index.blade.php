@extends('admin.layouts.default')

@section('title', 'Управление информацией о времени работы')

@section('content')
<div class="py-4 container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Управление информацией о времени работы</h3>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createModal">
                        <i class="fas fa-plus"></i> Добавить информацию
                    </button>
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif

                    <div class="table-responsive">
                        <table class="table table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Позиция</th>
                                    <th>Текст</th>
                                    <th>Действует до</th>
                                    <th>Активно</th>
                                    <th>Действия</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($workingHoursInfo as $info)
                                    <tr>
                                        <td>{{ $info->position }}</td>
                                        <td>{{ $info->text }}</td>
                                        <td>{{ $info->valid_until ? $info->valid_until->format('d.m.Y H:i') : '-' }}</td>
                                        <td>
                                            @if($info->is_active)
                                                <span class="bg-success badge">Да</span>
                                            @else
                                                <span class="bg-danger badge">Нет</span>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-info" data-bs-toggle="modal" data-bs-target="#editModal{{ $info->id }}">
                                                    <i class="bi bi-pencil"></i></i>
                                                </button>
                                                <form action="{{ route('working-hours-info.toggle', $info->id) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    <button type="submit" class="btn btn-sm btn-warning" title="Переключить статус">
                                                        <i class="bi bi-eye"></i>
                                                    </button>
                                                </form>
                                                <form action="{{ route('working-hours-info.destroy', $info->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Вы уверены, что хотите удалить эту информацию?');">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-sm btn-danger" title="Удалить">
                                                        <i class="bi bi-trash"></i></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                @if($workingHoursInfo->isEmpty())
                                    <tr>
                                        <td colspan="5" class="text-muted text-center">
                                            Информация не найдена. Добавьте первую запись.
                                        </td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Модальное окно создания -->
<div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="createModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createModalLabel">Добавить информацию</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{ route('working-hours-info.store') }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="text" class="form-label">Текст информации <span class="text-danger">*</span></label>
                        <textarea class="form-control" id="text" name="text" rows="4" required placeholder="Например: 31 декабря - выходной день"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="valid_until" class="form-label">Действует до</label>
                        <input type="datetime-local" class="form-control" id="valid_until" name="valid_until" placeholder="Оставьте пустым для бессрочной информации">
                        <div class="form-text">Оставьте пустым, если информация должна отображаться постоянно</div>
                    </div>
                    <div class="mb-3">
                        <label for="is_active" class="form-label">Активно</label>
                        <select class="form-select" id="is_active" name="is_active">
                            <option value="1" selected>Да</option>
                            <option value="0">Нет</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="position" class="form-label">Позиция</label>
                        <input type="number" class="form-control" id="position" name="position" value="0" min="0" placeholder="Позиция для сортировки">
                        <div class="form-text">Меньшее число = выше в списке</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Модальные окна редактирования -->
@foreach($workingHoursInfo as $info)
    <div class="modal fade" id="editModal{{ $info->id }}" tabindex="-1" aria-labelledby="editModalLabel{{ $info->id }}" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel{{ $info->id }}">Редактировать информацию</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="{{ route('working-hours-info.update', $info->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="text{{ $info->id }}" class="form-label">Текст информации <span class="text-danger">*</span></label>
                            <textarea class="form-control" id="text{{ $info->id }}" name="text" rows="4" required>{{ $info->text }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="valid_until{{ $info->id }}" class="form-label">Действует до</label>
                            <input type="datetime-local" class="form-control" id="valid_until{{ $info->id }}" name="valid_until" value="{{ $info->valid_until ? $info->valid_until->format('Y-m-d\TH:i') : '' }}">
                            <div class="form-text">Оставьте пустым, если информация должна отображаться постоянно</div>
                        </div>
                        <div class="mb-3">
                            <label for="is_active{{ $info->id }}" class="form-label">Активно</label>
                            <select class="form-select" id="is_active{{ $info->id }}" name="is_active">
                                <option value="1" {{ $info->is_active ? 'selected' : '' }}>Да</option>
                                <option value="0" {{ !$info->is_active ? 'selected' : '' }}>Нет</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="position{{ $info->id }}" class="form-label">Позиция</label>
                            <input type="number" class="form-control" id="position{{ $info->id }}" name="position" value="{{ $info->position }}" min="0">
                            <div class="form-text">Меньшее число = выше в списке</div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                        <button type="submit" class="btn btn-primary">Обновить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endforeach
@endsection
