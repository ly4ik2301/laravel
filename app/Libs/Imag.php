<?php namespace App\Libs;

use Auth;
use Image;

class Imag{
    public function __construct(){
	}
    public function url($path=null, $dirrectory=null, $name=null){
		set_time_limit(10000);				  			
        if ($path !=null){
			if ($dirrectory !=null){
				$dir = public_path() . $dirrectory;
			} else {
				$dir = public_path() . '/uploads';
			}
			$filename =($name==null)?date('y_m_d_h_i_s').'.jpg':$name;
			//
			$img = Image::make($path);
			$img->resize(990, null, function ($con) {
				$con->aspectRatio();
			});
			$img->save($dir.'/'.$filename);
			$img->resize(200, null, function ($con) {
				$con->aspectRatio();
			});
			$img->save($dir.'/s_'.$filename);
			return $filename;
		}else{
			return false;
		}
	}
}
