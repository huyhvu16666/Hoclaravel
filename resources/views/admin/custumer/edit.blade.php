@extends('admin.main')
@section('head')
    
@endsection
@section('content')
    
<form action="" method="POST">
        <div class="card-body">
            <label for="menu">Tên Khách hàng</label>
            <input type="text" name="name" value="{{ $customer->name }}" class="form-control"
                   placeholder="">
       
        <div class="form-group">
            <label for="menu">Số Điện thoại</label>
            <input type="text" name="phone" value="{{ $customer->phone }}" class="form-control"
                   placeholder="">
        </div>
        <div class="form-group">
            <label for="menu">Địa chỉ</label>
            <input type="text" name="address" value="{{ $customer->address }}" class="form-control"
                   placeholder="">
        </div>
        <div class="form-group">
            <label for="menu">Email</label>
            <input type="text" name="email" value="{{ $customer->email }}" class="form-control"
                   placeholder="">
        </div>
        <div class="form-group">
            <label for="menu">Ngày đặt hàng</label>
            <input type="text" name="created_at" value="{{ $customer->created_at }}" class="form-control"
                   placeholder="">
        </div>
       
     </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật danh mục</button>
        </div>
  
        @csrf
</form>
@endsection

@section('footer')
    
@endsection


