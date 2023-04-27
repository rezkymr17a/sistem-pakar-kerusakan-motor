<?php

use App\Http\Controllers\AturanController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GejalaController;
use App\Http\Controllers\KerusakanController;
use App\Http\Controllers\UserController;
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
    return view('welcome');
});

Auth::routes();

Route::get('/', function () {
    return view(
        'front.Beranda',
        ["tittle" => "Beranda"]
    );
});

Route::get('/tentang', function () {
    return view('front.Tentang', [
        "tittle" => "Tentang",
    ]);
});

// Route::get('/diagnosa', function () {
//     return view('front.diagnosa', [
//         "tittle" => "diagnosa"
//     ]);
// });

Route::get('/masuk', function () {
    return view('front.masuk', [
        "tittle" => "Masuk"
    ]);
});

Route::get('/diagnosa', [App\Http\Controllers\HomeController::class, 'diagnosa'])->name('diagnosa');
Route::get('/detail/{id}',  [App\Http\Controllers\HomeController::class, 'detail'])->name('detail');
Route::post('/hasil', [App\Http\Controllers\HomeController::class, 'hasil'])->name('hasil');


Route::middleware(['auth'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/admin/home', function () {
        return view("admin/home");
    });

    // Route::get('/admin/customer', function () {
    //     return view('admin/customer');
    // });
    Route::resource('user', UserController::class);
    Route::resource('gejala', GejalaController::class);
    Route::resource('kerusakan', KerusakanController::class);
    Route::resource('aturan', AturanController::class);
    //Route::resource('students', StudentController::class);
    //Route::resource('/customer', CustomerController::class);
});
