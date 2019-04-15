<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class ViewServiseProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
      View::composer(['includes.header'],\App\Providers\ViewComposers\BaseComposer::class);
     // View::composer("*",\App\Providers\ViewComposers\BaseComposer::class);

    }
}
