<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    use HasFactory;

    public function ues(){
        return $this->belongsToMany(Ue::class);
    }

    public function moncompte()
    {
        return $this->hasOne(Moncompte::class);
    }

    public function projet()
    {
        return $this->hasOne(Projet::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
