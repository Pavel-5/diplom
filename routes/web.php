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

Route::get('/webgl', function () {
    return view('webgl');
})->name('webgl');

Route::get('/graph', function () {
    return view('graph');
})->name('graph');

Route::get('/assembly', function () {
    return view('assembly');
})->name('assembly');

Route::get('/', function () {
    return view('welcome');
});
