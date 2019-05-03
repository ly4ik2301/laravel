<?php

namespace App\Http\Controllers;

use App\User;

class ChatController extends Controller
{
    public function getUser($id=null){
        $obj=User::find($id);
        return view('chat',compact('obj'));
    }
}
