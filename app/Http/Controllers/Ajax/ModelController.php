<?php

namespace App\Http\Controllers\Ajax;

use App\Http\Controllers\Controller;
use App\Product;

class ModelController extends Controller
{
    public function postIndex(){
      $id = (int)$_POST['id'];
      $obj = Product::find($id);
      return view('ajax.model',compact('obj'));
    }
}
