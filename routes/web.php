<?php

use App\Http\Controllers\Admin\Users\MenuController;
use App\Http\Controllers\Admin\MainController;

use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\Slidercontroller;
use App\Http\Controllers\Admin\UploadController;
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
         Route::get ('/add',[MenuController::class,'create'])->name('menu.add');
         Route::post ('/add',[MenuController::class,'store'])->name('menu.store');
         Route::get ('/list',[MenuController::class,'index'])->name('menu.list');
         Route::get ('/edit/{menu}',[MenuController::class,'show'])->name('menu.show');
         Route::post ('/edit/{menu}',[MenuController::class,'update'])->name('menu.update');
         Route::DELETE ('/destroy',[MenuController::class,'destroy'])->name('menu.destroy');
           });
           #product
     Route::prefix('products')->group(function(){
        Route::get ('/add',[ProductController::class,'create'])->name('product.add');
        Route::post('add', [ProductController::class, 'store'])->name('product.store');
        Route::get('list', [ProductController::class, 'index'])->name('product.list');
        Route::get('edit/{product}', [ProductController::class, 'show'])->name('product.show');
        Route::post('edit/{product}', [ProductController::class, 'update'])->name('product.update');
        Route::DELETE('destroy', [ProductController::class, 'destroy'])->name('product.destroy');
          
           });
           #Slider
        Route::prefix('sliders')->group(function () {
            Route::get('add', [SliderController::class, 'create'])->name('slider.add');
            Route::post('add', [SliderController::class, 'store'])->name('slider.store');
            Route::get('list', [SliderController::class, 'index'])->name('slider.list');
            Route::get('edit/{slider}', [SliderController::class, 'show'])->name('slider.show');
            Route::post('edit/{slider}', [SliderController::class, 'update'])->name('slider.update');
            Route::DELETE('destroy', [SliderController::class, 'destroy'])->name('slider.destroy');
        });
            #upload
    
    Route::post('/upload', [UploadController::class, 'store'])->name('upload.store');
    });
 
});

