<?php

Route::get('/','BaseController@getIndex');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('{url}', 'StaticController@getIndex');
