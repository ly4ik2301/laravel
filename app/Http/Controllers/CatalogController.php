<?php

namespace App\Http\Controllers;

use App\Catalog;

class CatalogController extends Controller
{
     public function getAll(){
$cats=Catalog::orderBy('name')->paginate(10);
return view('catalogs',compact('cats'));
}
public function getOne($id=null){
    $obj=Catalog::find($id);
    return view('catalog_one',compact('obj'));
}
}
