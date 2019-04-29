@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">мои работы</div>

                    <div class="card-body">
                        @foreach($ar as $one)
                            <a href="{{asset('/work/'.$one->id)}}">{{$one->name}}</a>
                            <img src="{{asset('work

                            '.$one->picture)}}"/>
                            @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection