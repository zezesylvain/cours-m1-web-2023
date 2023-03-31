<?php

namespace App\Http\Livewire;

use App\Models\Etudiant;
use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class InscrptionEtudiant extends Component
{
    public $nom;
    public $prenoms;
    public $nce;
    public $lesEtudiants = [];
    public $inscription_ok = false;
    public $email;
    public $mot2pass;
    public $mot2pass2;
    public $nceOK = true;
    public $lesNces = [];




    public function mount(){
        $this->makeData();
    }
    private function makeData()
    {
        $et = Etudiant::get()->toArray();
        $this->lesEtudiants = Arr::keyBy($et, 'nce');
        $this->lesNces = array_keys($this->lesEtudiants);
        //dd($et, $this->lesEtudiants);
    }
    private function verifNCE(){
        $this->nceOK = !in_array($this->nce, $this->lesNces);
    }
    public function storeData(){
        $this->verifNCE();
        if($this->nceOK):
            $et = new Etudiant();
            $et->nce = $this->nce;
            $et->user_id = $this->createUser();
            $et->nom = $this->nom;
            $et->prenoms = $this->prenoms;
            $et->save();
            $this->inscription_ok = true;
        else:
            $this->nceOK = false;
        endif;
    }
    private function createUser(){
        $us = new User();
        $us->name = $this->prenoms . " " . $this->nom;
        $us->email = $this->email;
        $us->role_id = 3;
        $us->password = Hash::make($this->mot2pass);
        $us->save();
        return $us->id;
    }
    public function render()
    {
        return view('livewire.inscrption-etudiant');
    }
}
