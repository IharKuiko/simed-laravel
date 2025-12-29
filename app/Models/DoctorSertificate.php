<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DoctorSertificate extends Model
{
    protected $fillable = ['doctor_id', 'title', 'image', 'description'];

    public function doctor()
    {
        return $this->belongsTo(Doctor::class);
    }
}
