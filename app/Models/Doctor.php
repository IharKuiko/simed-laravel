<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Doctor extends Model
{
    use Sluggable;

    protected $fillable = ['name', 'specialization', 'status', 'photo', 'professional_category', 'education', 'experience', 'additional_education'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }

    public function sertificates()
    {
        return $this->hasMany(DoctorSertificate::class);
    }

    public function educations()
    {
        return $this->hasMany(DoctorEducation::class);
    }
}
