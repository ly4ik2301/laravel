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

    public function getDelete($id = null)
    {
        $one = Product::find($id);
        if (Auth::user()->id == $one->user_id) {
            $one->delete();
        }
        return redirect()->back();
    }

    public function index()
    {
        $products = Product::where('user_id', Auth::user()->id)->paginate(10);
        return view('home', compact('products'));
    }

    public function postIndex(ProductRequest $r)
    {
        if ($_FILES['picture1']) {
            $pic = \App::make('\App\Libs\Imag')->url($_FILES['picture1']['tmp_name']);
        } else {
            $pic = '';
        }

        $r['picture'] = $pic;
        $r['user_id'] = Auth::user()->id;
        Product:: create($r->all());
        return redirect()->back();
    }
}
