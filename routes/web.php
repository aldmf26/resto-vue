<?php

use App\Http\Controllers\MenuController;
use App\Models\User;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/menu', [MenuController::class, 'index'])->name('menu');

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::get('/d', function () {
    return Inertia::render('Dashboard/Index');
})->name('d');

Route::get('/tes', function (Request $r) {
    // $paginate = $r->showMore ?? 10;
    // $karyawan = User::query()
    //                 ->when($r->search, function($q, $search){
    //                     $q->where('name', 'LIKE', '%' . $search . '%');
    //                 })
    //                 ->paginate($paginate);
    $karyawan = User::all();
    $data = [
        'karyawan' => $karyawan
    ];
    return Inertia::render('Dashboard/Tes', $data);
})->name('tes');



Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/auth.php';
