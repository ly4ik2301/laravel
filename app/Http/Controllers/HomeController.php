<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;

use Auth;

use App\Product;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
	public function postIndex (ProductRequest $r){
	$r['user_id']=Auth::user()->id;
	Product :: create($r->all());
	return redirect()->back();
	}
}
