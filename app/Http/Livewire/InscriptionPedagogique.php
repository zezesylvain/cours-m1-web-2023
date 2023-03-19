<?php

namespace App\Http\Livewire;

use App\Http\Controllers\UeController;
use App\Models\Etudiant;
use App\Models\Ue;
use Illuminate\Support\Arr;
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
    }
    public function makeData()
    {
        $data = $this->getStudentByUe();
        extract($data);
        $this->etudiantsDesUe = $etudiantsDesUe;
        $this->ues = $ues;
        $this->lesUes = array_keys($ues);
        $this->etudiants = Arr::keyBy(Etudiant::get()->toArray(), 'id');
        $this->lesEtudiants = array_keys($this->etudiants);

    }

    private function getStudentByUe()
    {
        $ues = Arr::keyBy(Ue::with('etudiants')->get()->toArray(), 'id');
        $etudiantsDesUe = [];
        foreach ($ues as $ueid => $ue) :
            $etudiantsDesUe[$ueid] = array_keys(Arr::keyBy($ue['etudiants'], 'id')) ?? [];
        endforeach;
        return compact('ues', 'etudiantsDesUe');
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
