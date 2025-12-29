<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class GinecologyServiceCategory extends Model
{
    use Sluggable;

    protected $fillable = ['title', 'image', 'description', 'status'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function services()
    {
        return $this->hasMany(GinecologyService::class, 'category_id');
    }
}
