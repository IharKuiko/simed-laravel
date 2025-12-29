<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Service extends Model
{
    use Sluggable;
    
     public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
    protected $fillable = ['title', 'description', 'details', 'image', 'category_id', 'price', 'duration', 'unit', 'status'];

    public function category()
    {
        return $this->belongsTo(ServiceCategory::class, 'category_id');
    }
}
