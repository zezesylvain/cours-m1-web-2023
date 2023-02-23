<?php

namespace App\Http\Controllers;

use App\Models\Ue;
use Illuminate\Http\Request;

class DataController extends Controller
{
    //
    //*
    public static function storeUe(){
        $data = Ue::where('nom', 'IA')->get();
        dd($data);
        return view('index');
    }
    //*/

    public static function listeUe()
    {
        $data = Ue::with('ecues')->get()->toArray();

        return view('ue', ['donnees' => $data]);
    }
}
