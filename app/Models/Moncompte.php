<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Moncompte extends Model
{
    use HasFactory;
    public function etudiant(){
        return $this->belongsTo(Etudiant::class);
    }

    public function scopeCompte($query){
        $role_id = Auth::user()->role_id ;
        if($role_id == 2):
            $uid = Auth::user()->id;
            $d = Etudiant::where('user_id', $uid)->get()->toArray()[0] ?? [];
            $eid = $d['id'] ?? 0;
            return $query->where('etudiant_id', $eid);
        else:
            return $query;
        endif;
    }
}
