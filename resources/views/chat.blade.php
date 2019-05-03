@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">чат</div>

                    <div class="card-body">
                        <iframe width="100%" height="800px"
                                src="http://localhost:9090/chat.html?Name={{Auth::user()->name}}&Room={{$obj->name}}"></iframe>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection