<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable = [
        'client_name',
        'review_text',
        'client_photo',
        'rating',
        'status',
        'review_date',
    ];

    protected $casts = [
        'review_date' => 'date',
        'rating' => 'integer',
    ];
}
