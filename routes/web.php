<?php

Route::get('/','BaseController@getIndex');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('home', 'HomeController@postIndex');
Route::get('home/dell/{id}','HomeController@getDelete');
Route::get('populars', 'StaticController@getPopulars');
Route::get('products','ProductController@getIndex');
Route::get('product/{id}','ProductController@getOne');
Route::get('{url}', 'StaticController@getIndex');


