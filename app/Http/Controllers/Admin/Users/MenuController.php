<?php

namespace App\Http\Controllers\Admin\Users;
use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFromRquest;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function create() {
        
         return view('admin.menu.add', [
             'title' => 'Thêm danh mục mới'
         ]);
    }
    public function store(CreateFromRquest $request){
        dd($request->input());
    }
}
