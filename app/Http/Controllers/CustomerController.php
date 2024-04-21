<?php

namespace App\Http\Controllers;

use App\Http\Services\CustomerService;
use App\Models\Cart;
use App\Models\Customer;
use GuzzleHttp\Psr7\Message;
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
            'title'=>'Danh sách đơn hàng',
            'customers'=> $customers
        ]);
    }
    
    public function update(Request $request, Customer $customer)
    {
        $customers = $this->customerService->update($request, $customer);
        if ($customers) {
            return redirect()->route('customer.cart');
        }
        return redirect()->back();
    }
   
    

    public function destroy(Request $request)
    {
        $result = $this->customerService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công đơn hàng'
            ]);
        }

        return response()->json([ 'error' => true ]);
    }
    
    public function show(Customer $customer )
    {
     
        return view('admin.custumer.edit', [
            'title' => 'Chỉnh Sửa Đơn hàng', 
            'customer' => $customer
            
        ]);
    }
    
    
    
    
}

