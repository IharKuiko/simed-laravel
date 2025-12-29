<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class GinecologyService extends Model
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
        return $this->belongsTo(GinecologyServiceCategory::class, 'category_id');
    }
}
