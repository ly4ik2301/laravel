@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">@foreach($catalogs as $one)
                            <li><a href="{{asset('/catalog/'.$one->id)}}">{{$one->name}}</a></li>
                        @endforeach</div>

                    <div class="card-body">

                        <div class="container">
                            <div class="row">


                                <div class="col-sm">
                                    -
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
