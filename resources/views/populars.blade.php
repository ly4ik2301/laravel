@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Популярное</div>

                <div class="card-body">
@foreach($all as $one)
<h2>
<a href="{{$one->url}}"->{{$one->name}}</a>
{{$one->name}}<h2>
<div>
{!!$one->body!!}</div>
@endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
