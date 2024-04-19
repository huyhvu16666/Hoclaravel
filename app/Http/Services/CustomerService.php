<?php


namespace App\Http\Services;

use Illuminate\Support\Facades\DB;

class CustomerService
{
  public function show(){

    $customers = DB::table('customers')->get();
    return $customers;
  }
}
