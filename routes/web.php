<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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
Route::group(['middleware' => 'auth'], function () {
    Route::get('/', function () {
        return view('assembly');
    })->name('main');
});

Route::post('/getKey', function () {
    if (Auth::check()) {
        echo json_encode([
            'status' => 'ok',
            'key' => Auth::user()->encrypt_key,
        ]);
    } else {
        echo json_encode([
            'status' => 'error',
            'error' => 'not authorized',
        ]);
    }
});

Auth::routes();

//Route::get('/webgl', function () {
//    return view('webgl');
//})->name('webgl');
//
//Route::get('/graph', function () {
//    return view('graph');
//})->name('graph');
//
//Route::get('/assembly', function () {
//    return view('assembly');
//})->name('assembly');
//
//Route::get('/session', function () {
//    return view('session');
//})->name('session');
//
//Route::get('/three', function () {
//    return view('three');
//})->name('three');

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
