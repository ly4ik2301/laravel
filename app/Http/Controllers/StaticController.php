<?php

namespace App\Http\Controllers;



class StaticController extends Controller
{
    public function getIndex($url=null){
	return view('static', compact('url'));
	}
}
