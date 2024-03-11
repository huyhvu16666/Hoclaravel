@extends('admin.users.main')

@section('content')
  <table class="table">
    <thead>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Active</td>
            <td>Update</td>
            <td>&nbsp</td>
        </tr>
    </thead>
    <tbody>
        {!! \app\helpers\helper::menu($menus) !!}
    </tbody>
  </table>
@endsection


