<?php

namespace App\Http\Controllers;

use App\Catalog;
use App\Repositories\Repository;

class TestController extends Controller
{
    protected $model;
    public function __construct(Catalog $catalog)
    {
     $this->model = new Repository($catalog);
    }
    public function getIndex(){
        return $this->model->all();
        dd($data);
        return$data;
    }

    public function getShow($id){
        return $this->model->show($id);
        dd($data);
        return$data;
    }

}
