<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seance extends Model
{
    use HasFactory;

    public function ecue(){
        return $this->belongsTo(Ecue::class);
    }
    public function retards(){
        return $this->hasMany(Retard::class);
    }
}
