@extends('admin.main')
@section('head')
    <script src="{{ asset('/public/ckeditor/ckeditor.js') }}"></script>
@endsection
@section('content')
    <form action="{{ route('menu.store') }}" method="POST" enctype="multipart/form-data">

        <div class="card-body">
            <div class="form-group">
                <label for="menu">Tên danh mục</label>
                <input type="text" name="name" value="{{$menu->name}}" class="form-control" placeholder="Nhập tên danh mục">
            </div>

            <div class="form-group">
                <label >Danh mục</label>
                <select class="from-control" name="paren_id">
                    <option value="0" {{ $menu->paren_id == 0 ? 'selected' : '' }}>Danh mục cha</option>
                    @foreach ($menus as $menuParent)
                        <option value="{{ $menuParent->id }}"
                             {{ $menu->paren_id == $menuParent->id ? 'selected' : '' }}>
                            {{ $menuParent->name }}
                        </option>
                  
                @endforeach
                </select>
            </div>
        


        <div class="form-group">
            <label>Mô tả</label>
            <textarea name="description" class="form-control">{{$menu->description}}</textarea>
        </div>

        <div class="form-group">
            <label>Mô tả chi tiết</label>
            <textarea name="content" id="content" class="form-control">{{$menu->content}}</textarea>
        </div>


        <div class="form-group">
            <label>Kích hoạt</label>
            <div class="custom-controll custom-radio">
                <input class="custom-controll-input" value="1" type="radio" id="active"
                 name="active" {{$menu->active==1 ? 'checked="' : ''}}>
                <label for="active" class="custom-controll-label">Có</label>
            </div>
            <div class="custom-controll custom-radio">
                <input class="custom-controll-input" value="0" type="radio" id="no_active" 
                name="active" {{$menu->active==0 ? 'checked="' : ''}}>
                <label for="no_active" class="custom-controll-label">Không</label>
            </div>

        </div>
        </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập nhật danh mục</button>
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
