<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{ config('app.name', 'Laravel') }}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{asset('contact')}}">{{__('menu.contact')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{asset('give')}}">{{__('menu.information')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{asset('products')}}">{{__('menu.products')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{asset('populars')}}">{{__('menu.popular')}}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{asset('users')}}">{{__('menu.users')}}</a>
                </li>
                <li class="nav-item dropdown"><a id="navbarDropdown" class="nav-link dropdown-toggle"
                                                 href="{{asset('category')}}" role="button" data-toggle="dropdown"
                                                 aria-haspopup="true" aria-expanded="false">
                        {{__('menu.category')}} <span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="drop1">
                        @foreach($catalogs as $one)
                            <li><a href="{{asset('/catalog/'.$one->id)}}">{{$one->name}}</a></li>
                        @endforeach
                    </ul>
                </li>

            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <span>{{\App::getLocale()}}</span>
                </li>
                <li class="nav-item">

                    <a href="{{asset('/?lang=ru')}}">
                        русский
                    </a>
                </li>
                <li class="nav-item">

                    <a href="{{asset('/?lang=en')}}">
                        English
                    </a>
                </li>
                <!-- Authentication Links -->
                @guest
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                </li>
                @if (Route::has('register'))
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </li>
                @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
{!! csrf_field() !!}
                            </form>
                        </div>
                    </li>
                    @endguest
            </ul>
        </div>
    </div>
</nav>
