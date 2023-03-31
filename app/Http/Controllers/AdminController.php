<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Projet;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;

class AdminController extends Controller
{
    //

    public function getModel($slug)
    {
        $mod = substr($slug, -1) == "s" ? substr($slug, 0, -1) : $slug;
        $mode = ucfirst(camelCase($mod));
        $model1 = "App\\Models\\$mode";
        $model = class_exists($model1) ? $model1 : false;
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        return compact('model', 'dataType');
    }
    public function getData(string $slug)
    {
        $data = self::getModel($slug);
        extract($data);
        if (!$model) :
            return '';
        endif;
        $d = $model::get()->toArray();
        return $this->makeData($d, $slug, $dataType);
    }
    private function makeData(array $data, $slug, $dataType)
    {
        $dataTypeContent = [];
        foreach ($data as $r) :
            if (array_key_exists('img', $r)) :
                $r['img'] = asset('storage/' . $r['img']);
            endif;
            $r['route-edit'] = route("voyager.$slug.edit", ['id' => $r['id']]);
            $r['route-update'] = route("voyager.$slug.update", ['id' => $r['id']]);
            $r['route-delete'] = route("deleteData", ['sid' => $r['id'], 'slug' => $slug]);
            $r['slug'] = $slug;
            $dataTypeContent[] = $r;
        endforeach;
        return view("vendor.voyager.browse", compact('slug', 'dataType', 'dataTypeContent'));
    }

    public function deleteData(Request $request, $slug, $sid)
    {
        return response()->json(compact('slug', 'sid'));
    }

    public function __call($method, $parameters)
    {
        $slug = $method;
        $data = self::getModel($slug);
        extract($data);
        return view("vendor.voyager.$slug", compact('slug', 'dataType'));
    }
}
