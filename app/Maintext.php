<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Maintext extends Model
{
    public function scopePopular($query){
	return $query->where('status','show')->get();
	}
}
