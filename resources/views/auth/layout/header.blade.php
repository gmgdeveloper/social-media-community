<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    @php
        $system_name = \App\Models\Setting::where('type', 'system_name')->value('description');
        $system_favicon = \App\Models\Setting::where('type', 'system_fav_icon')->value('description');
    
    @endphp
    <title>{{ $system_name }}</title>
    <meta name="description" content="">

    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="{{ url('/storage/logo/dark/favicon/' . $system_favicon) }}">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="{{ url('assets/frontend/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ url('assets/frontend/css/fontawesome/all.min.css') }}">
    <!-- CSS Library -->
    <link rel="stylesheet" href="{{ url('assets/frontend/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ url('assets/frontend/css/nice-select.css') }}">
    <link rel="stylesheet" href="{{ url('assets/frontend/css/venobox.min.css') }}">

    <!-- Style css -->
    <link rel="stylesheet" href="{{ url('assets/frontend/css/style.css') }}">
    <link rel="stylesheet" href="{{ url('assets/frontend/css/own.css') }}">

    <style>
        .login-btns a {
        background: #ffffff !important;
        padding: 10px 32px;
        color: #171616 !important;
        border: 1px solid #ffffff !important;
        font-size: 18px;
    }
    .login-btns a:hover {
        background: #a75af1;
    }
    </style>
   
</head>

<body class="bg-white login">


@php $system_light_logo = \App\Models\Setting::where('type', 'system_light_logo')->value('description'); @endphp

<!-- header -->
    <header class=" header-default py-3" style="background-color: #a75af1;">
    <nav class="navigation">
        <div class="container">
            <div class="row">
                <div class="col-auto col-lg-6">
                    <div class="logo-branding mt-1">
                        <a class="navbar-brand d-xs-hidden">
                            <img src="{{ url('storage/logo/light/'.$system_light_logo,) }}" class="max-width-250px d-xs-hidden" alt="logo" style="
                            width: 125px;
                        " />
                        </a>

                        <a class="navbar-brand d-block" >
                            <img src="{{ url('storage/logo/favicon/'.$system_light_logo,'favicon') }}" height="35px" class="max-width-250px d-hidden d-xs-show mt--5px" alt="logo" />
                        </a>
                    </div>
                </div>

                <div class="col-auto col-lg-6 ms-auto" style="
                position: relative;
                left: 193px;
                ">
                    <div class="login-btns ms-5">
                        <a href="{{ route('login') }}" class="btn @if(Route::currentRouteName() == 'login') active @endif">{{  __('Login') }}</a>
                        @if(get_settings('public_signup') == 1)
                            <a href="{{ route('register') }}" class="btn @if(Route::currentRouteName() == 'register') active @endif">{{ __('Sign up')  }}</a>
                        @endif
                        {{-- <a href="{{ route('guest_user') }}" class="btn @if(Route::currentRouteName() == 'guest_user') active @endif" style="margin-left:0px" >{{  __('Guest') }}</a> --}}
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
<!-- Header End -->