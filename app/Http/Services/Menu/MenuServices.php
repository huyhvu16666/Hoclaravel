<?php
namespace App\Http\Services\Menu;
use App\Models\Menu;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
class MenuServices
{
    public function getParent(){
        //return Menu::where('paren_id', 0)->get();
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
}