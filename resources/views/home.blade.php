@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Danh mục sản phẩm') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                 
                    <a class="btn btn-primary mb-2" href="{{route('product.create')}}" role="button">Thêm sản phẩm</a>
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Ngày tạo</th>
                            <th scope="col">Ngày cập nhật</th>
                            <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product as $p)
                                <tr>
                                    <th scope="row">{{$p->product_id}}</th>
                                    <td>{{$p->product_name}}</td>
                                    <td>
                                        <img width="100px" src="{{asset('uploads/'.$p->product_img)}}">
                                    </td>

                                    @auth
                                    <td>{{$p->product_price}}</td>
                                    @else
                                    <td>Liên hệ</td>
                                    @endauth

                                    
                                    <td>{{$p->product_des}}</td>
                                    <td>{{$p->created_at}}</td>
                                    <td>{{$p->updated_at}}</td>
                                    <td>
                                        <a class="btn btn-success mb-2" href="{{route('product.show', [$p->product_id])}}">Sửa</a>
                                        
                                        <form action="{{route('product.destroy', [$p->product_id])}}" method="POST">
                                            @method('DELETE')
                                            @csrf
                                            <input class="btn btn-danger" type="submit" value="Xóa">
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                           
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
