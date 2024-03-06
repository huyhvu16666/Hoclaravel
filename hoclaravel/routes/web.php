<?php

use App\Http\Controllers\admin\MenuController;
use App\Http\Controllers\Amin\MainController;
use App\Http\Controllers\Amin\Users\LoginController;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;

//chỉ cần gõ nó sẽ gợi ý

Route::get('/login', [LoginController::class, 'login'])->name('route.login');
Route::post('/store', [LoginController::class, 'store'])->name('route.store');
// Route::get('/index', [MainController::class, 'index'])->name('route.admin');
//middleware tịnh tuyển route

Route::middleware(['auth'])->group(function(){///auth chứ ko phải admin... auth => dùng để check

    Route::prefix('admin')->group(function(){
        Route::get('/index',[MainController::class,'index'])->name('route.admin');
        Route::get ('/main',[MainController::class,'index']);
        #menu
        Route::prefix('menus')->group(function(){
             Route::get ('add',[MenuController::class,'create']);
             });
    }); 
   
    // Route::prefix('menus')->group(function(){
    //     Route::get ('add',[MenuController::class,'create']);
    //  });
 });
 

