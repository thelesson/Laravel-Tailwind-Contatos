<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
}); 

//Route::apiResource('data','App\Http\Controllers\api\ApiController@');


Route::middleware('auth:sanctum')->get('/tokenizado/percentual', 'App\Http\Controllers\Controlador@percentual')->name('percentualToken');
Route::middleware('auth:sanctum')->get('/tokenizado/percentual2', 'App\Http\Controllers\Controlador@percentualBrasilIO')->name('percentualToken2');

Route::get('data/state={state}&dateStart={dateStart}&dateEnd={dateEnd}', 'App\Http\Controllers\api\ApiController@show'); 
Route::post('testApi', 'App\Http\Controllers\api\ApiController@apiPostInterno')->name('postInterno');
Route::get('testApi', 'App\Http\Controllers\api\ApiController@apiPostInternoShowTodos')->name('apiPostInternoShowTodos');
Route::get('testApi/{id}', 'App\Http\Controllers\api\ApiController@apiPostInternoShow')->name('postInternoShow');



