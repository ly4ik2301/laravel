@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">пользователи</div>

                    <div class="card-body">

                        @foreach($users as $user )
                            <div class="user">
                                <a href="{{asset('user/'.$user->id)}}">{{$user->name}}</a>

                            </div>
                            @endforeach


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection