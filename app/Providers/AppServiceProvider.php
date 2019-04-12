<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use App\User;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
User::creating(function ($user){
    $email=$user->email;
    $thema='спасибо за регистрацию'.$user->name;
    $body='сообщение для сайта';
    $headers = "MIME-Version: 1.0\r\n";

    $headers.= "Content-Type: text/plain;charset=utf-8\r\n";

    $headers.= "X-Mailer: PHP/" . phpversion();
    @mail($email,$thema,$body,$headers);
});
    }
}
