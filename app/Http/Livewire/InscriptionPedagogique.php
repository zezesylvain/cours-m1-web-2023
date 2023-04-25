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

class InscriptionPedagogique extends Component
{
    /**
     * @etudiants var array; Liste de tous les étudiants
     */
    public $etudiants = [];
    public $lesEId = [];
    public $lesEIdInGroup = [];
    /**
     * @lesEtudiants var array; Liste des étudiants à inscrire dans les UEs
     */
    public $lesEtudiants = [];
    /**
     * @ues var array; Liste de toutes les ues
     */
    public $ues = [];
    public $lesUeId = [];
    public $etudiantsAjoutes = [];
    public $etudiantsSupprimes = [];
    /**
     * @lesUes var array; Liste des ues pour inscrire les étdiants
     */
    public $lesUes = [];
    public $etudiantsDesUe = [];

    public function mount(){
        $this->makeData();
        $seconde = time();
        $temps = $seconde / 60 / 60 / 24 / 365.25 ;
        //dd($seconde, $temps);
    }
    public function makeData()
    {
        $this->getStudentByUe();

        $this->lesUes = array_keys($this->ues);
        $this->etudiants = Arr::keyBy(Etudiant::get()->toArray(), 'id');
        $this->lesEtudiants = array_keys($this->etudiants);

    }

    private function getStudentByUe()
    {
        $this->ues = Arr::keyBy(Ue::with('etudiants')->get()->toArray(), 'id');
        $this->etudiantsDesUe = [];
        foreach ($this->ues as $ueid => $ue) :
            $this->etudiantsDesUe[$ueid] = array_keys(Arr::keyBy($ue['etudiants'], 'id')) ?? [];
        endforeach;
        //return compact('ues', 'etudiantsDesUe');
        //['ues' => $ues, 'etudiantsDesUe' => $etudiantsDesUe];
    }
    public function storeData(){
        UeController::inscrireUnEtudiantDansUe($this->etudiantsDesUe);
        $this->makeData();
        $data = ['response' => 1, 'message' => 'Données Traitées'];
        return json_encode($data);
    }
    public function render()
    {
        return view('livewire.inscription-pedagogique');
    }
}
