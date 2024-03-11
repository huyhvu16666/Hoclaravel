@extends('admin.users.main')
@section('head')
    <script src="{{ asset('/ckeditor/ckeditor.js') }}"></script>
@endsection
@section('content')
    <form action="{{ route('menu.store') }}" method="POST" enctype="multipart/form-data">

        <div class="card-body">
            <div class="form-group">
                <label for="menu">Tên danh mục</label>
                <input type="text" name="name" class="form-control" placeholder="Nhập tên danh mục">
            </div>

            <div class="form-group">
                <label >Danh mục</label>
                <select class="from-control" name="paren_id">
                    <option value="0">Danh mục cha</option>
                @foreach ($menus as $menu)
                <option value="{{$menu->id}}">{{$menu->name}}</option>
                @endforeach
                </select>
            </div>
        


        <div class="form-group">
            <label>Mô tả</label>
            <textarea name="description" class="form-control"></textarea>
        </div>

        <div class="form-group">
            <label>Mô tả chi tiết</label>
            <textarea name="content" id="content" class="form-control"></textarea>
        </div>


        <div class="form-group">
            <label>Kích hoạt</label>
            <div class="custom-controll custom-radio">
                <input class="custom-controll-input" value="1" type="radio" id="active" name="active"checked="">
                <label for="active" class="custom-controll-label">Có</label>
            </div>
            <div class="custom-controll custom-radio">
                <input class="custom-controll-input" value="0" type="radio" id="no_active" name="active">
                <label for="no_active" class="custom-controll-label">Không</label>
            </div>

        </div>
        </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tạo danh mục</button>
        </div>
      </div>
        @csrf
    </form>
@endsection

@section('footer')
    <script>
        CKEDITOR.replayce('content');
    </script>
@endsection
