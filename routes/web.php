<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Dashboard\WelcomeController;
use App\Http\Controllers\Dashboard\CategoryController;

use App\Http\Controllers\Dashboard\ClientController;
use App\Http\Controllers\Dashboard\Client\OrderClientController;
use App\Http\Controllers\Dashboard\OrderController;
use App\Http\Controllers\Dashboard\ProductController;
use App\Http\Controllers\Dashboard\UserController;

Route::get('/categories/action', [CategoryController::class, 'action'])->name('categories.action');

Route::get('/', function () {
    return redirect()->route('dashboard.welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';


Route::group(['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {

        Route::prefix('dashboard')->name('dashboard.')->middleware(['auth'])->group(function () {

           
            Route::get('/', [WelcomeController::class, 'index'])->name('welcome'); 

            //category routes
            Route::resource('categories', CategoryController::class);
            Route::get('/categories/action', [CategoryController::class, 'action'])->name('categories.action');
         
            // Route::resource('categories', 'CategoryController')->except(['show']);

            //product routes
            Route::resource('products', ProductController::class);
          

            //client routes
            Route::resource('clients', ClientController::class);
            Route::resource('clients.orders', OrderClientController::class);
            

            //order routes
            Route::resource('orders', OrderController::class);
            Route::get('/orders/{order}/products', [OrderController::class, 'products'])->name('orders.products');
             

            //user routes
            Route::resource('users', UserController::class);
          

        });//end of dashboard routes
    });

