<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
	'name',
	'body',
	'catalog',
	'price',
	'picture',
	'user_id',
	'status'];
	
}
