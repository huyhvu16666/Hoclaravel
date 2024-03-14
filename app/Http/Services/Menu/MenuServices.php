<?php
namespace App\Http\Services\Menu;
use App\Models\Menu;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class MenuServices
{
    // public function get($paren_id=1){
    //     return Menu::
    //     when($paren_id==0,function($query) use($paren_id){
    //         $query->where('paren_id',$paren_id);
    //     })
    //     ->get();
    // }đk if 0 lấy danh muc 1 lấy tất cả
    public function getParent(){
    
        return Menu::where('paren_id',0)->get();
        }
    public function getAll(){
        return Menu::orderbyDesc('id')->paginate(20);
    }

    public function create($request){
    try{
        Menu::create([
            'name'=>(string)$request->input('name'),
            'paren_id'=>(int)$request->input('paren_id'),
            'description'=>(string)$request->input('description'),
            'content'=>(string)$request->input('content'),
            'slug'=>Str::slug($request->input('name'), '-'),
            'active'=>(string)$request->input('active')
        ]);
        Session::flash('success','Tạo danh mục thành công');

    } catch(\Exception $err){
        // Session::flash(class:'error', $err->getMessage());
        Session::flash('error', $err->getMessage());
        return false;
    }
    return true;
}
public function update($request, $menu): bool
{
    if ($request->input('paren_id') == $menu->id) {
        $menu->parent_id = (int) $request->input('paren_id');
    }
    $menu->name = (string) $request->input('name');
    $menu->description = (string) $request->input('description');
    $menu->content = (string) $request->input('content');
    $menu->active = $request->input('active'); // Không cần ép kiểu nếu trường active là số nguyên hoặc boolean
    $menu->save();
    Session::flash('success', 'Cập nhật thành công danh mục');
    return true;
}
    
    public function destroy($request){
        $id=(int)$request->input('id');
        $menu= Menu:: where('id',$id)->first();

        if($menu){
            return Menu::where('id',$id)->orWhere('paren_id',$id)->delete();
        }
        return false;
    }
}