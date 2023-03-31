<?php

namespace App\Http\Livewire;

use App\Models\Ecue;
use App\Models\Ue;
use Livewire\Component;

class MakeUe extends Component
{
    public $nomUe;
    public $codeUe;
    public $lesEcues = [];
    public $chEcue = ['nom', 'code', 'cm', 'td', 'tp'];
    public $tabInitiale = [];

    public function mount(){
        $this->tabInitiale =
        ['nom' => '', 'code' => '',
        'cm' => 0, 'td' => 0, 'tp' => 0];
    }
    public function storeUE(){
        $nue = new Ue;
        $nue->nom = $this->nomUe;
        $nue->code = $this->codeUe;
        $nue->save();
        $ueId = $nue->id;
        foreach($this->lesEcues AS $ecue):
            $lecue = new Ecue;
            $lecue->ue_id = $ueId;
            foreach($this->tabInitiale AS $key => $v):
                $lecue->$key = $ecue[$key] ;
            endforeach;
            $lecue->save();
        endforeach;
    }
    public function render()
    {
        return view('livewire.make-ue');
    }
}
