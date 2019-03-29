@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

 <form action="{{asset('home')}}" method = 'post'>
 
{!!csrf_field()!!}
  <div class="form-group">
    <label for="name">название</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="">
	@if ($errors->has('name'))
	<span class='help-block'>
	<b>{{$errors->first('name')}}</b>
	</span>
	@endif
  </div>
  <div class="form-group">
    <label for="body">информация</label>
    <textarea name="body" id="body" class="form-control"></textarea>
	@if ($errors->has('body'))
	<span class='help-block'>
	<b>{{$errors->first('body')}}</b>
	</span>
	@endif
  </div>
  <div class="form-group">
  <label for="catalog_id">категория</label> 
  <input type="text" class="form-control" id="catalog_id" name="catalog_id" placeholder="">
  </div>
  <div class="form-group">
  <label for="price">цена</label> 
  <input type="text" class="form-control" id="price" name="price" placeholder="">
  </div>
  <div class="form-group">
  <label for="status">статус</label> 
  <input type="text" class="form-control" id="status" name="status" placeholder="">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="picture" name="picture">
    
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
