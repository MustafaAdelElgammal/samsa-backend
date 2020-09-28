<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/military', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'api_auth'], function () {
    Route::get('/', 'DashboardController@index')->name('dashboard');
    //start military-areas
    Route::get('military-areas', 'MilitaryAreasController@index');
    Route::get('military-areas/{id}', 'MilitaryAreasController@show');
    Route::post('military-areas', 'MilitaryAreasController@store');
    Route::delete('military-areas/{id}', 'MilitaryAreasController@destroy');
    Route::put('military-areas/{id}', 'MilitaryAreasController@update');
    //end military-areas

    //military-status
    Route::get('military-status', 'MilitaryStatusController@index');
    Route::get('military-status/{id}', 'MilitaryStatusController@show');
    Route::post('military-status', 'MilitaryStatusController@store');
    Route::delete('military-status/{id}', 'MilitaryStatusController@destroy');
    Route::put('military-status/{id}', 'MilitaryStatusController@update');
     //end military-status


    //  
    // Route::resource('military-area-submission', 'MilitaryAreaSubmisionController');
    Route::get('military-area-submission', 'MilitaryAreaSubmisionController@index');
    Route::get('military-area-submission/{id}', 'MilitaryAreaSubmisionController@show');
    Route::post('military-area-submission', 'MilitaryAreaSubmisionController@store');
    Route::delete('military-area-submission/{id}', 'MilitaryAreaSubmisionController@destroy');
    Route::put('military-area-submission/{id}', 'MilitaryAreaSubmisionController@update');
    // 
});
