<?php

use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\MainController;

use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\Slidercontroller;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\CartController;
use App\Models\Customer;
use Illuminate\Support\Facades\Route;

//chỉ cần gõ nó sẽ gợi ý

Route::get('admin/users/login', [LoginController::class, 'login'])->name('route.login');
Route::post('admin/users/login/store', [LoginController::class, 'store'])->name('route.store');

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
    
    Route::post('upload/services', [UploadController::class, 'store'])->name('upload.store');
});

#cart
    // Route::get('customers', [CartController::class, 'index'])->name('customer.cart');
    // Route::get('customers/view/{customer}', [CartController::class, 'show'])->name('customer.show');
    Route::get('customers', [Customer::class, 'index'])->name('customer.cart');
    Route::get('customers/view/{customer}', [Customer::class, 'show'])->name('customer.show');
    });
#giao dien
    Route::get('home', [App\Http\Controllers\MainController::class, 'index'] );
#lodgiaodien
Route::post('/services/load-product', [App\Http\Controllers\MainController::class, 'loadProduct']);
Route::get('danh-muc/{id}-{slug}.html', [App\Http\Controllers\MenuController::class, 'index']);
Route::get('san-pham/{id}-{slug}.html', [App\Http\Controllers\ProductController::class, 'index']);
Route::post('add-cart', [App\Http\Controllers\CartController::class, 'index'])->name('route.cart');
Route::get('carts', [App\Http\Controllers\CartController::class, 'show'])->name('route.show');
Route::post('update-cart', [App\Http\Controllers\CartController::class, 'update'])->name('route.update');
Route::get('carts/delete/{id}', [App\Http\Controllers\CartController::class, 'remove'])->name('route.delete');
Route::post('carts', [App\Http\Controllers\CartController::class, 'addCart'])->name('route.add');