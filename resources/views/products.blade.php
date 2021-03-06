@extends('layouts.app')
@section('styles')
    @parent
    <link href="{{asset('css/model.css')}}" rel="stylesheet"/>
@endsection
@section('scripts')
    @parent
    <script src="{{asset('js/model.js')}}">
    </script>
@endsection

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
                                            <a href="#" class="clickme" data_id="{{$one->id}}">
                                                @if($one->picture != null)
                                                    <img src="{{asset('public/uploads/s_'.$one->picture)}}"/>
                                                @else
                                                    <img src="{{asset('public/uploads/no_photo.png')}}" width="200px"/>
                                                @endif
                                            </a>
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
