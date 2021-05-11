<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BahanbakuController;
use App\Http\Controllers\IngredientsController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\UserController;
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

// Deafault
// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/users', [UserController::class, 'index']);
Route::get('/', [AdminController::class, 'dashboard']);
Route::get('/ingredients', [IngredientsController::class, 'index']);
Route::get('/ingredients/create', [IngredientsController::class, 'create']);
Route::post('/ingredients', [IngredientsController::class, 'store']);
Route::delete('/ingredients/{ingredient}', [IngredientsController::class, 'destroy']);
Route::get('/ingredients/{ingredient}/edit', [IngredientsController::class, 'edit']);
Route::patch('/ingredients/{ingredient}', [IngredientsController::class, 'update']);

Route::get('/reports', [ReportsController::class, 'index']);
Route::post('/reports', [ReportsController::class, 'store']);

// Route::resource('ingredients', IngredientsController::class);
