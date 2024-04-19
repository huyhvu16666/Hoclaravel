<?php

namespace App\Http\Controllers;

use App\Http\Services\CustomerService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    protected $customerService;
    public function __construct(CustomerService $customerService)
    {
        $this->customerService = $customerService;   
    }
    public function index(){
        $customers = $this->customerService->show();
        // $customers = DB::table('customers')->get();
        // dd($customers);
        return view('admin.custumer.list',[
            'title'=>'ds san fam',
            'customers'=> $customers
        ]);
    }
}
