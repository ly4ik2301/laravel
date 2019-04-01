@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">продукты</div>

                    <div class="card-body">

                        <div class="container">
                            <div class="row">

                                @foreach($products as $one)
                                    <div class="col-sm">
                                        <div>
                                            @if($one->picture != null)
                                                <img src="{{asset('public/uploads/s_'.$one->picture)}}"/>
                                            @else
                                                <img src="{{asset('public/uploads/no_photo.png')}}" width="200px"/>
                                        @endif
                                        </div>
                                        <div>
                                            <a href="{{asset('product/'.$one->id)}}">{{$one->name}}
                                            </a>
                                        </div>
                                        <div>{{$one->price}}</div>
                                        <div>{{$one->status}}</div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <p align="centre">
                            {!!$products->links()!!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
