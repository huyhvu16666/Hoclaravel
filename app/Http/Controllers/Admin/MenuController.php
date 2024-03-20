<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFromRquest;
use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuServices;
use App\Models\Menu;
use Illuminate\Http\JsonResponse;

class MenuController extends Controller
{
    
    protected $menuService;
    public function __construct(MenuServices $menuService){
        $this->menuService=$menuService;
    }
    
        
    
    public function create() {
        
         return view('admin.menu.add', [    
             'title' => 'Thêm danh mục mới',
             'menus'=>$this->menuService->getParent()
         ]);
    }

    public function store(CreateFromRquest $request){
        //dd($request->input());
     $this->menuService->create($request);
        // dd($result);
        return redirect()->back();
    }
    public function index(){
        return view('admin.menu.list', [    
            'title' => 'Danh sách thư  mục mới',
            'menus'=>$this->menuService->getAll()
        ]);
    }
    public function show(Menu $menu){
      
        return view('admin.menu.edit', [
            'title' => 'Chỉnh sửa danh mục ' . $menu->name,
            'menu' => $menu,
            'menus' => $this->menuService->getParent()
        ]);
    
    }
    public function update(Menu $menu,CreateFromRquest $request){
        $this->menuService->update($request, $menu);
        return redirect('/admin/menus/list');
    }
    public function destroy(Request $request): JsonResponse
    {
        $result=$this->menuService->destroy($request);
        if($result){
            return response()->json([
                'error'=>false,
                'message'=>'Xóa thành công danh mục'
            ]);

        }
        return response()->json([
            'error'=>true
        ]);
}
}