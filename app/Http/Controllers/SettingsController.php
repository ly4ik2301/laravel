<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function cookieClear()
    {
        setcookie('lang', '', time() - 1);
        return redirect('/contact');
    }
}
