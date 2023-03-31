<?php

namespace App\Http\Livewire;

use App\Http\Controllers\UeController;
use App\Models\Etudiant;
use App\Models\Moncompte;
use App\Models\Ue;
use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class GestionCompte extends Component
{
    /**
     * @etudiants var array; Liste de tous les étudiants
     */
    public $etudiants = [];
    public $lesEId = [];
    public $roleId;
    public $uId;
    public $eId;
    /**
     * @lesEtudiants var array; Liste des étudiants à inscrire dans les UEs
     */
    public $lesEtudiants = [];

    public function mount(){
        $this->uId = Auth::user()->id;
        $this->roleId = Auth::user()->role_id;
        $this->makeData();
    }
    public function makeData()
    {
        $moi = Etudiant::with('user', 'projet', 'moncompte')->whereUserId($this->uId)->get()->toArray();
        if($this->roleId == 1):
            $this->etudiants = Arr::keyBy(Etudiant::with('moncompte', 'user')->get()->toArray(), 'id');
            $this->lesEtudiants = array_keys($this->etudiants);
        endif;



    }

    public function storeData(){

    }
    public function render()
    {
        return view('livewire.gestion-compte');
    }
}
