@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px">ID</th>
          
            <th>name</th>
            <th>phone</th>
            <th>address</th>
            <th>email</th>
            <th>content</th>
            <th style="width: 100px">&nbsp;</th>
        </tr>
    </thead>
        <tbody>
            @foreach($customers as $key => $customer)
        <tr>
            <td style="width: 50px">{{$customer->id}}</td>
            <td>{{$customer->name}}</td>
            <td>{{$customer->phone}}</td>
            <td>{{$customer->address}}</td>
            <td>{{$customer->email}}</td>
            <td>{{$customer->content}}</td>
            <td style="width: 100px">&nbsp;</td>
        </tr>
        @endforeach
        </tbody>
        
    </table>
@endsection



