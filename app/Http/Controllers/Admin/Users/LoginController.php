<?php

namespace App\Http\Controllers\Admin\Users;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
  public function login()
  {
    return view('admin.users.login', [
      'title' => 'Đăng nhập hệ thống'
    ]);
  }

  // Xử lý yêu cầu đăng nhập
  public function store(Request $request)
  {
    $data = $request->only(['email', 'password']);
    if (auth()->attempt($data)) {
        // Đăng nhập thành công
        return redirect()->route('route.admin');
    }
     else {
        // Đăng nhập không thành công
        return back()->withErrors(['login' => 'Đăng nhập không thành công. Vui lòng kiểm tra lại thông tin đăng nhập.']);
    }
  }
}
