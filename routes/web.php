<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\DataController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('home');

Route::get('/inscription.html', function () {
    return view('inscription');
})->name('inscription');
Route::get('/inserer-ue', [DataController::class, 'storeUe']);

Route::get('/ue.html', function () {
    return view('ue');
})->name('ue');
Route::get('/Inscription-pedagogique.html', function () {
    return view('Inscription-pedagogique');
})->name('Inscription-pedagogique');
Route::get(
    '/etudiant/{nce?}',
    [DataController::class, 'letudiant']
)->name('etudiant');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/ue', [DataController::class, 'listeUe']);
Route::get('/appel.html', [DataController::class, 'makeAppel'])->name('etudiant-ue');
Route::group(['prefix' => 'admin', 'middleware' => 'voyager.auth'], function () {
    Route::get('page-sections/order/{page_id?}', [PageSectionOrderController::class, 'order'])->name('voyager.page-sections.order');
    Route::post('delete/{slug}/{sid}', [AdminPageController::class, 'deleteData'])->name('deleteData');
    $tab = [
        'ues', 'projets', 'pedagogie',  'seances'
    ];
    foreach ($tab as $slug) :
        Route::get($slug, [AdminController::class, $slug])->name("voyager.$slug.index");
    endforeach;
});
