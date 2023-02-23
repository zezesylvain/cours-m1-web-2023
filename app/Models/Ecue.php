<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ecue extends Model
{
    use HasFactory;
    public function ue(){
        return $this->belongsTo(Ue::class);
    }
    public function seances(){
        return $this->hasMany(Seance::class);
    }
}
