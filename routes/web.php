<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('landingpage');
});

Route::view('/login', 'auth.login')->name('login');
Route::view('/forgot-password', 'auth.forgot')->name('password.request');

// (opsional) halaman dummy setelah "login"
Route::view('/dashboard', 'dashboard.index')->name('dashboard');
Route::view('/stock', 'stock.index')->name('stock');
Route::view('/stock-create', 'stock.create')->name('stock.create');

Route::get('/orders/create', function () {
    return view('orders.index');
})->name('orders.index');

// Slicing saja, tanpa DB
Route::get('/stock/{id}/edit', function ($id) {
    // kirim id ke view edit
    return view('stock.edit', ['id' => $id]);
})->name('stock.edit');

Route::get('/history/create', function () {
    return view('history.index');
})->name('history.index');




