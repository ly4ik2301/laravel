<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Catalog extends Model
{
    public function products(){
        return $this->hasMany('\App\Product');
    }
}
