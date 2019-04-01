@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">меню</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form action="{{asset('home')}}" method='post' enctype="multipart/form-data">

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
                                <input type="text" class="form-control" id="catalog_id" name="catalog_id"
                                       placeholder="">
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
                                <input type="file" id="picture" name="picture1">
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                        <table class="table table-bordered">

                            <tr>
                                <th width="200px">изображения</th>
                                <th>названия</th>
                                <th>цена</th>
                                <th>статус</th>
                                <th>действия</th>
                            </tr>


                            @foreach($products as $one)
                                <tr>
                                    <td>
                                        @if($one->picture != null)
                                            <img src="{{asset('public/uploads/s_'.$one->picture)}}"/>
                                        @else
                                            <img scr="{{asset('uploads/no_photo.png')}}"/>
                                        @endif
                                    </td>
                                    <td>{{$one->name}}</td>
                                    <td>{{$one->price}}</td>
                                    <td>{{$one->status}}</td>
                                    <td><a href="{{asset('home/dell/'.$one->id)}}">удалить</a></td>
                                </tr>
                            @endforeach
                        </table>
                        <p align="centre">
                            {!!$products->links()!!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
