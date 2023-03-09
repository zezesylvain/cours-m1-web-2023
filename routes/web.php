<?php

use App\Http\Controllers\DataController;
use Illuminate\Support\Facades\Route;

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
Route::get(
    '/etudiant/{nce?}',
    [DataController::class, 'letudiant']
)->name('etudiant');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/ue', [DataController::class, 'listeUe']);
//Route::get('/inscription.html', [DataController::class, 'inscription'])->name('inscription');
