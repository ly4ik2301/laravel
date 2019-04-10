<h2>{{$obj->name}}</h2>
@if($obj->picture)
    <img src="{{asset('/uploads/'.$obj->picture)}}"
         width="100%/"/>
@endif
<p><a href="{{asset('/catalog/'.$obj->catalogs->id)}}">
        {{$obj->catalogs->name}}</a></p>
{!! $obj->body !!}