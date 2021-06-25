<?php

use App\Http\Controllers\AnimalController;
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

Route::get('/', [AnimalController::class,'index']);
Route::get('/animals/create', [AnimalController::class,'create'])->middleware('auth');
Route::post('/animals', [AnimalController::class,'store']);
Route::get('/animals/{id}', [AnimalController::class,'show']);
Route::get('/dashboard',[AnimalController::class,'myanimals'])->middleware('auth');
Route::delete('/animals/{id}',[AnimalController::class,'destroy'])->middleware('auth');
Route::get('/animals/edit/{id}',[AnimalController::class,'edit'])->middleware('auth');
Route::put('/animals/update/{id}',[AnimalController::class,'update'])->middleware('auth');
Route::get('/animals/encontrei/{id}',[AnimalController::class,'encontrei']);
Route::put('/animals/encontrei/{id}',[AnimalController::class,'update_encontrei']);
Route::put('/animals/encontrei_confirm/{id}',[AnimalController::class,'confirm_status']);

