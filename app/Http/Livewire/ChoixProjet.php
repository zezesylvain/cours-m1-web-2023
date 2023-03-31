<?php

namespace App\Http\Livewire;

use App\Models\Etudiant;
use App\Models\Projet;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ChoixProjet extends Component
{
    public $lesProjets = [];
    public $projets = [];
    public $lesEtudiants = [];
    public $etudiants = [];
    public $monProjet;
    public $eid;
    public $roleId ;
    public $currentProject;
    public $newProject = [];
    public function mount(){
        $this->makeData();
    }
    private function makeData(){
        $this->lesProjets = Arr::keyBy(Projet::with('etudiant')->get()->toArray(), 'id');
        $this->projets = array_keys($this->lesProjets);
        $this->lesEtudiants = Arr::keyBy(Etudiant::get()->toArray(), 'id');
        $this->roleId = Auth::user()->role_id;
        $this->etudiants = array_keys($this->lesEtudiants);
        $moi = Etudiant::with('projet')->where('user_id', Auth::user()->id)->get()->toArray()[0] ?? [];
        $this->monProjet = $moi['projet']['id'] ?? 0;
        $this->eid = $moi['id'] ?? 0 ;
        $this->initProject();
    }
    private function initProject(){
        $this->newProject = [
            'nom' => '', 'title' => '',
            'description' => '', 'commentaire' => ''
        ];
    }
    public function validerMonProjet(){
        Projet::whereId($this->monProjet)->update([
                        'etudiant_id' => $this->lesProjets[$this->monProjet]['description'],
                        'commentaire' => $this->lesProjets[$this->monProjet]['commentaire']
                ]);
        $data = ['response' => 1, 'message' => 'Données Mises à jour'];
        return json_encode($data);
    }
    public function choisirProjet(){
        Projet::whereId($this->currentProject)->update([
            'etudiant_id' => $this->eid
        ]);
        $this->makeData();
        $data = ['response' => 1, 'message' => 'Données Mises à jour'];
        return json_encode($data);
    }
    public function addNewProject(){
        extract($this->newProject);
        $var = $nom . $title . $description ;
        if($var):
            $neP = new Projet;
            $neP->nom = $nom;
            $neP->title = $title;
            $neP->description = $description;
            $neP->commentaire = $commentaire;
            $neP->etudiant_id = $this->eid;
            Projet::whereEtudiantId($this->eid)->update(['etudiant_id' => 0]);
            $neP->save();
            $this->makeData();
            $data = ['response' => 1, 'message' => 'Données Mises à jour'];
            return json_encode($data);

        endif;
    }
    public function changerDeProjet(){
        Projet::whereId($this->monProjet)->update([
            'etudiant_id' => 0
        ]);
        Projet::whereId($this->currentProject)->update([
            'etudiant_id' => $this->eid
        ]);
        $this->makeData();
        $data = ['response' => 1, 'message' => 'Données Mises à jour'];
        return json_encode($data);
    }
    public function render()
    {
        return view('livewire.choix-projet');
    }
}
