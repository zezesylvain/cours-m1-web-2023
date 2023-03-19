<?php

namespace App\Http\Controllers;

use App\Models\Ue;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

class UeController extends Controller
{
    //
    public static  function inscrireUnEtudiantDansUe(array $lesEtudiantsParUe){
        $lesEtudiantsDeLUe = self::getListeEtudiantUE(array_keys($lesEtudiantsParUe));
        foreach($lesEtudiantsParUe AS $ueid => $students):
            $ancienEtudiants = $lesEtudiantsDeLUe[$ueid] ?? [];
            $newStudents = array_diff($students, $ancienEtudiants);
            $delStudents = array_diff($ancienEtudiants, $students);
            DB::table('etudiant_ue')
                ->where('ue_id', $ueid)
                ->whereIn('etudiant_id', $delStudents)
                ->delete();
            foreach($newStudents AS $eid):
                DB::table('etudiant_ue')->insert([
                    'etudiant_id' => $eid,
                    'ue_id' => $ueid
                ]);
            endforeach;
        endforeach;
        return true;
    }


    public static   function getListeEtudiantUE(array $listeUe)
    {
        $ues = Arr::keyBy(Ue::with('etudiants')->whereIn('id', $listeUe)->get()->toArray(), 'id');
        $etudiantsDesUe = [];
        foreach ($ues as $ueid => $ue) :
            $etudiantsDesUe[$ueid] = array_keys(Arr::keyBy($ue['etudiants'], 'id')) ?? [];
        endforeach;
        return $etudiantsDesUe;
    }
}
