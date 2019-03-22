<?php

Route::get('/','BaseController@getIndex');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('populars', 'StaticController@getPopulars');
Route::get('{url}', 'StaticController@getIndex');

