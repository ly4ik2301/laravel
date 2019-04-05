<h2>{{$obj->name}}</h2>
@if($obj->picture)
    <img src="{{asset('/uploads/'.$obj->picture)}}"
         width="100%/"/>
@endif
{!! $obj->body !!}