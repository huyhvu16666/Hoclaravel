<?php

namespace App\Http\Controllers\Admin\Users;
use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFromRquest;
use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuServices;
class MenuController extends Controller
{
    protected $menuService;
    public function __construct(MenuServices $menuService){
        $this->menuService=$menuService;
    }
    
        
    
    public function create() {
        
         return view('admin.menu.add', [
             'title' => 'Thêm danh mục mới'
         ]);
    }

    public function store(CreateFromRquest $request){
        //dd($request->input());
     $this->menuService->create($request);
        // dd($result);
        return redirect()->back();
    }
}
