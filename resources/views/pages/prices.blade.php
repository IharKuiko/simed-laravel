@extends('layouts.base')

@section('title')
    Цены на услуги
@endsection

@section('content')

<div class="price-container">
  <h1 class="price-header">Цены на наши услуги</h1>
  
  <!-- Гинекологические услуги -->
  <div class="ginecology-price-table">
    <h2 class="table-title">Гинекологические услуги</h2>
    
    @if($ginecology_services->groupBy('category_id')->count() > 0)
      @foreach($ginecology_services->groupBy('category_id') as $categoryId => $services)
        <div class="category-section">
          <h3 class="category-title">{{ $services->first()->category->title ?? 'Без категории' }}</h3>
          
          <div class="price-table-responsive">
            <table class="price-table">
              <thead>
                <tr>
                  <th class="service-name">Название услуги</th>
                  <th class="service-price">Цена</th>
                </tr>
              </thead>
              <tbody>
                @foreach($services as $service)
                  <tr>
                    <td class="service-name" data-label="Услуга">{{ $service->title }}</td>
                    <td class="service-price" data-label="Цена">{{ $service->price }} BYN</td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      @endforeach
    @else
      <p class="no-services">В настоящее время гинекологические услуги недоступны</p>
    @endif
  </div>
  
  <!-- УЗИ-услуги -->
  <div class="ultrasound-price-table">
    <h2 class="table-title">УЗИ-услуги</h2>
    
    @if($ultasound_srvices->groupBy('category_id')->count() > 0)
      @foreach($ultasound_srvices->groupBy('category_id') as $categoryId => $services)
        <div class="category-section">
          <h3 class="category-title">{{ $services->first()->category->title ?? 'Без категории' }}</h3>
          
          <div class="price-table-responsive">
            <table class="price-table">
              <thead>
                <tr>
                  <th class="service-name">Название услуги</th>
                  <th class="service-price">Цена</th>
                </tr>
              </thead>
              <tbody>
                @foreach($services as $service)
                  <tr>
                    <td class="service-name" data-label="Услуга">{{ $service->title }}</td>
                    <td class="service-price" data-label="Цена">{{ $service->price }} BYN</td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      @endforeach
    @else
      <p class="no-services">В настоящее время УЗИ-услуги недоступны</p>
    @endif
  </div>
</div>

@endsection