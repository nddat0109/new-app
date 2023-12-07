@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Thêm sản phẩm') }}
                    <a href="{{url('/home')}}">Quay lại</a>
                </div>
                    
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('product.store')}}" enctype="multipart/form-data">
                    @csrf
                        <div class="mb-3">
                            <label for="" class="form-label">Tên sản phẩm</label>
                            <input type="text" class="form-control" name="product_name">
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Ảnh</label>
                            <input type="file" class="form-control" name="product_img">
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Giá</label>
                            <input type="number" class="form-control" name="product_price">
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Mô tả</label>
                            <input type="text" class="form-control" name="product_des">
                        </div>
                
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </form>
    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
