<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class ServiceCategory extends Model
{
    use Sluggable;

    protected $fillable = ['title', 'image', 'description'];

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
        return $this->hasMany(Service::class, 'category_id');
    }
}
