<?php

namespace App\Http\Controllers\Amin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MainController extends Controller
{
    //
    public function index()
    {
        return view('admin.users.home',[
            'title'=>'Trang đăng nhập admin'
        ]);

    }
}
