@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">описание</div>

                    <div class="card-body">

                        <div class="container">
                            <div class="row">


                                    <div class="col-sm">
                                        <div>
                                            @if($one->picture != null)
                                                <img src="{{asset('public/uploads/'.$one->picture)}}"/>
                                            @else
                                                <img src="{{asset('public/uploads/no_photo.png')}}"/>
                                        @endif
                                        </div>
                                        <div>
                                            <a href="{{asset('product/'.$one->id)}}">{{$one->name}}
                                            </a>
                                        </div>
                                        <div>{{$one->price}}</div>
                                        <div>{{$one->status}}</div>
                                        {!! $one->body !!}
                                    </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
