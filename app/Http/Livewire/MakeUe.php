<?php

namespace App\Http\Livewire;

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
        dd($this->nomUe, $this->codeUe, $this->lesEcues);
    }
    public function render()
    {
        return view('livewire.make-ue');
    }
}
