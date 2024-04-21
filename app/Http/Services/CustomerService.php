<?php


namespace App\Http\Services;

use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use DateTime;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class CustomerService
{
  public function show(){

    $customers = DB::table('customers')->get();
   
    return $customers;
  }

public function update($request, $customers)
  {
      try {
          $customers->update($request->all());
          $customers->save();
          // dd( $customers->save());
          Session::flash('success', 'Cập nhật thành công');
      } catch (\Exception $err) {
          Session::flash('error', 'Cập nhật Lỗi');
          Log::info($err->getMessage());

          return false;
      }

      return true;
  }

    public function destroy($request)
    {
        $customers = Customer::where('id', $request->input('id'))->first();
        if ($customers) {
            
            $customers->delete();
            return true;
        }

        return false;
    }  
   
  }

 
   
   

