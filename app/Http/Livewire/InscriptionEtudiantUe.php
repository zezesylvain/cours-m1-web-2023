<?php

namespace App\Http\Livewire;

use App\Models\Etudiant;
use App\Models\Ue;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class InscriptionEtudiantUe extends Component
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
    public $lesUeIdInGroup = [];
    public $etudiantsDesUe = [];
    /**
     * @lesUes var array; Liste des ues pour inscrire les étdiants
     */
    public $lesUes = [];
    public $etudiantsParUe = [];

    public function mount(){
        $this->getData();
    }

    public function getData()
    {
        $this->etudiants = Arr::keyBy(Etudiant::get()->toArray(), 'id');
        $this->ues = Arr::keyBy(Ue::with('etudiants')->get()->toArray(), 'id');
        $this->lesEId = array_keys($this->etudiants);
        $this->lesUeId = array_keys($this->ues);
        $this->etudiantsParUe = [];
        foreach($this->ues AS $ueid => $ue):
            $this->etudiantsParUe[$ueid] = array_keys(Arr::keyBy($ue['etudiants'], 'id')) ?? [];
        endforeach;
    }
    private function getListeEtudiantUE(array $listeUe){
        $ues = Arr::keyBy(Ue::with('etudiants')->whereIn('id', $this->lesUeIdInGroup)->get()->toArray(), 'id');
        $this->etudiantsDesUe = [];
        foreach ($ues as $ueid => $ue) :
            $this->etudiantsDesUe[$ueid] = array_keys(Arr::keyBy($ue['etudiants'], 'id')) ?? [];
        endforeach;
    }
    private function inscrireUnEtudiantDansUe($eid, $ueid){
        $lesEtudiantsDeLUe = $this->etudiantsDesUe[$ueid];
        if(!in_array($eid, $lesEtudiantsDeLUe)):
            DB::table('etudiant_ue')->insert([
                'etudiant_id' => $eid,
                'ue_id' => $ueid
            ]);
        endif;
    }

    public function inscrireEtudiantDansUe(){
        $this->getListeEtudiantUE($this->lesUeIdInGroup);
        foreach($this->lesUeIdInGroup AS $ueid):
            foreach($this->lesEIdInGroup AS $eid):
                $this->inscrireUnEtudiantDansUe($eid, $ueid);
            endforeach;
        endforeach;
        $data = ['response' => 1, 'message' => 'Données ajoutées'];
        return json_encode($data);
    }
    public function render()
    {
        return view('livewire.inscription-etudiant-ue');
    }
}
