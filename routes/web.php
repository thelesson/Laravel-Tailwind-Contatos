<?php

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

/* Route::get('/', function () {
    return view('welcome');
}); */
Route::get('/', 'App\Http\Controllers\Crawller@index')->name('inicio');
Route::get('data/state={state}&dateStart={dateStart}&dateEnd={dateEnd}', 'App\Http\Controllers\Controlador@data')->name('data');
Route::get('percentual', 'App\Http\Controllers\Controlador@percentual')->name('percentual');
Route::get('percentual2', 'App\Http\Controllers\Controlador@percentualBrasilIO')->name('percentualBrasilIO');

Route::middleware(['auth:sanctum', 'verified'])->get('/seguro/webapp', 'App\Http\Controllers\WebApp@index')->name('webApp');
Route::middleware(['auth:sanctum', 'verified'])->get('/seguro/perfil/{id}', 'App\Http\Controllers\WebApp@detalhes')->name('detalhes');
Route::middleware(['auth:sanctum', 'verified'])->get('/seguro/edita/{id}', 'App\Http\Controllers\WebApp@editar')->name('editar');
Route::middleware(['auth:sanctum', 'verified'])->patch('/seguro/update/{id}', 'App\Http\Controllers\WebApp@update')->name('update');
Route::middleware(['auth:sanctum', 'verified'])->get('/seguro/novo/', 'App\Http\Controllers\WebApp@criar')->name('criar');
Route::middleware(['auth:sanctum', 'verified'])->post('/seguro/novo/', 'App\Http\Controllers\WebApp@store')->name('store');
Route::middleware(['auth:sanctum', 'verified'])->delete('/seguro/delete/{id}', 'App\Http\Controllers\WebApp@delete')->name('delete');


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard','App\Http\Controllers\WebApp@dashboard')->name('dashboard');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
