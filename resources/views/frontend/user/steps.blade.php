<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    @php
        $system_name = \App\Models\Setting::where('type', 'system_name')->value('description');
        $system_favicon = \App\Models\Setting::where('type', 'system_fav_icon')->value('description');
    @endphp
    <title>{{ $system_name }}</title>

    <!-- CSRF Token for ajax for submission -->
    <meta name="csrf_token" content="{{ csrf_token() }}" />

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="shortcut icon" href="{{ get_system_logo_favicon($system_favicon,'favicon') }}" />

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="{{url('assets/frontend/css/fontawesome/all.min.css')}}">
    <!-- CSS Library -->

    <link rel="stylesheet" href="{{url('assets/frontend/css/owl.carousel.min.css')}}">

    <!-- Style css -->
    <link rel="stylesheet" href="{{url('assets/frontend/css/nice-select.css')}}">
    <link rel="stylesheet" href="{{url('assets/frontend/plyr/plyr.css')}}">
    <link href="{{url('assets/frontend/leafletjs/leaflet.css')}}" rel="stylesheet">

    <link href="{{url('assets/frontend/css/plyr_cdn_dw.css')}}" rel="stylesheet">
    <link href="{{url('assets/frontend/css/tagify.css')}}" rel="stylesheet">

    <link href="{{url('assets/frontend/uploader/file-uploader.css')}}" rel="stylesheet">
    <link href="{{url('assets/frontend/css/jquery-rbox.css')}}" rel="stylesheet">

    <link rel="stylesheet" href="{{url('assets/frontend/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{url('assets/frontend/gallery/justifiedGallery.min.css')}}">
    <link href="{{url('assets/frontend/toaster/toaster.css')}}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/frontend/summernote-0.8.18-dist/summernote-lite.min.css') }}" />
    <link rel="stylesheet" href="{{url('assets/frontend/css/own.css')}}">
    
    <script src="{{url('assets/frontend/js/jquery-3.6.0.min.js')}}"></script>
    <link href="{{url('css/timeline.css')}}" rel="stylesheet">
<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet" href="{{url('wizard/fonts/material-design-iconic-font/css/material-design-iconic-font.css')}}">

<!-- DATE-PICKER -->
<link rel="stylesheet" href="{{url('wizard/vendor/date-picker/css/datepicker.min.css')}}">

<!-- STYLE CSS -->
<link rel="stylesheet" href="{{url('wizard/css/style.css')}}">



<style>
.zodiac-row {
display: flex;
justify-content: space-around;
align-items: center;
margin-bottom: 20px; /* Adjust spacing between rows */
}

.zodiac-sign {
text-align: center;
}

.zodiac-sign img {
display: block;
margin: 0 auto;
width: 43px;
}


.zodiac-sign span {
display: block;
}

img {
max-width: 50%;
vertical-align: middle;
}

.interests-container {
display: flex;
flex-wrap: wrap;
}

.interest {
margin-right: 20px;
margin-bottom: 10px;
}

/* Style checkboxes */
.interest input[type="checkbox"] {
display: none;
}

.interest label {
display: inline-block;
cursor: pointer;
padding: 5px 10px;
border: 1px solid #ccc;
border-radius: 5px;
}

/* Style checked checkboxes */
.interest input[type="checkbox"]:checked + label {
background-color: #9727b0;
color: #fff;
}

<style>
/* Checkbox container */
.form-holder {
display: flex;
flex-direction: column;
}

/* Checkbox styling */
.form-holder input[type="checkbox"] {
margin-right: 5px;
}

/* Checkbox label */
.form-holder label {
margin-bottom: 5px;
}

body {
    font-family: "Poppins-Regular";
    font-size: 14px;
    margin: 0;
    color: #999;
    /* background: url(../images/form-wizard-bg.jpg) no-repeat center center; */
    height: 100vh;
    background-size: cover;
    display: block !important;
    align-items: center;
}

.zodiac-sign{
    border: 1px solid gray;
    padding: 5px;

}

.zodiac-row {
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-bottom: 20px;
    /* margin: 0px; */
    margin-left: -94px;
}


/* Style the zodiac sign container */
.zodiac-sign {
    display: inline-block;
    margin: 10px;
    text-align: center;
}

/* Style the zodiac sign image */
.zodiac-sign img {
    width: 100px;
    height: auto;
}

/* Style the zodiac sign name and date */
.zodiac-sign span {
    display: block;
}

/* Style the selected zodiac sign */
.zodiac-sign.selected {
    border: 2px solid #a75af1; /* Add border to indicate selection */
}


</style>



</head>

<body>
    @php $user_info = Auth()->user() @endphp
    
    {{-- @include('frontend.header') --}}
    <!-- header -->
<div class="custom-progress-bar">
    <div class="custom-progress"></div>
</div>
<header class="header header-default py-3" style="background: #a75af1">
    <nav class="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-sm-4">
                    <div class="logo-branding">
                        <button class="d-lg-none" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i
                                class="fw-bold fa-solid fa-sliders-h"></i></button>
                        <!-- logo -->
                        @php
                            $system_light_logo = \App\Models\Setting::where('type', 'system_light_logo')->value('description');
                        @endphp
                        <a class="navbar-brand mt-2" href="{{route('timeline')}}"><img src="{{ url('storage/logo/light/'.$system_light_logo) }}" class="" alt="logo" width="70px" /></a>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div class="header-search">
                        <a href="{{route('timeline')}}">
                            <div class="sc-home rounded">
                                <i class="fa-solid fa-house"></i>
                            </div>
                        </a>
                        <div class="sc-search">
                            <form action="{{route('search')}}" method="GET">
                                <input type="search" class="rounded background" name="search" value="@isset($_GET['search']){{$_GET['search']}}@endisset" placeholder="Search">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-8">
                    <div class="header-controls">
                        <div class="align-items-center d-flex justify-content-around">
                          
                            <div class="group-control">
                                <a href="{{ route('profile.friends') }}" class="notification-button"><i class="fa-solid fa-user-group"></i></a>
                            </div>
                            @php
                                $last_msg = \App\Models\Chat::where('sender_id',auth()->user()->id)->orWhere('reciver_id',auth()->user()->id)->orderBy('id','DESC')->limit('1')->first();
                                if(!empty($last_msg)){
                                    if($last_msg->sender_id == auth()->user()->id){
                                        $msg_to = $last_msg->reciver_id;
                                    }else{
                                        $msg_to = $last_msg->sender_id;
                                    }
                                }

                                $unread_msg = \App\Models\Chat::where('reciver_id',auth()->user()->id)->where('read_status','0')->count();
                            @endphp
                            <div class="inbox-control">
                                <a href="@if(!empty($last_msg)){{ route('chat',$msg_to) }} @endif" class="message_custom_button position-relative">
                                    <i class="fa-brands fa-rocketchat"></i>
                                    @if ($unread_msg>0)
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill notificatio_counter_bg">
                                            {{ get_phrase($unread_msg) }}
                                        </span>
                                    @endif
                                </a>
                            </div>
                            @php
                                $unread_notification = \App\Models\Notification::where('reciver_user_id',auth()->user()->id)->where('status','0')->count();
                            @endphp
                            <div class="notify-control">
                                <a class="notification-button position-relative" href="{{ route('notifications') }}">
                                    <i class="fa-solid fa-bell"></i>
                                    @if ($unread_notification>0)
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill notificatio_counter_bg">
                                            {{ get_phrase($unread_notification) }}
                                        </span>
                                    @endif
                                </a>
                            </div>
                            <div class="profile-control dropdown">
                                {{-- <button class="dropdown-toggle" type="button" id="dropdownMenuButton1"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                </button> --}}
                                 <img src="{{ get_user_image(auth()->user()->photo,'optimized') }}" class="rounded-circle" alt="" class="dropdown-toggle" type="button" id="dropdownMenuButton1"
                                 data-bs-toggle="dropdown" aria-expanded="false" style="
                                 width: 83px;
                                 height: 42px;"> 
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="{{ route('profile') }}">{{ get_phrase('My Profile') }}</a></li>
                                    @if (auth()->user()->user_role=="admin")
                                        <li><a class="dropdown-item" href="{{ route('admin.dashboard') }}">{{ get_phrase('Go to admin panel') }}</a></li>
                                    @endif

                                    {{-- @if (auth()->user()->user_role == "general")
                                        <li><a class="dropdown-item" href="{{ route('user.dashboard') }}">{{ get_phrase('Dashboard') }}</a></li>
                                    @endif --}}
                                    <li><a class="dropdown-item" href="{{ route('user.password.change') }}">{{ get_phrase('Change Password') }}</a></li>
                                    <li>
                                        <form method="POST" action="{{ route('logout') }}">
                                            @csrf
                                            <a class="dropdown-item" href="route('logout')"
                                                    onclick="event.preventDefault();
                                                                this.closest('form').submit();">
                                                {{ get_phrase('Log Out') }}
                                            </a>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
<!-- Header End -->

    <!-- Main Start -->
    <main class="main my-4">
        <div class="container">
            <div class="row">
                {{-- <div class="col-lg-2">
                    @include('frontend.left_navigation')
                </div> --}}
                <!-- Timeline Navigation End -->

                <!-- Content Section Start -->
                <div class="col-lg-12 col-sm-12 order-3 order-lg-2">
                 
                        <div class="wrapper">
                            <form action="" id="wizard">
                                <!-- SECTION 1 -->
                                <h4></h4>
                                <section>
                                    <h3 style="color: #a75af1">Choose Your Zodiac Sign</h3>
                                    <div class="zodiac-row">
                                        <div class="zodiac-sign" data-sign="aries">

                                            <img src="{{url('storage/zodiac/aries.png')}}" alt="Aries">
                                            <span>Aries</span>
                                            <span>Sep 23 - Oct 22</span>
                                        </div>
                                        
                                        <div class="zodiac-sign" data-sign="taurus">
                                            <img src="{{url('storage/zodiac/taurus.png')}}" alt="Taurus">
                                            <span>Taurus</span>
                                            <span>May 21 - Jun 20</span>
                                        </div>
                                        <div class="zodiac-sign" data-sign="gemini">
                                            <img src="{{url('storage/zodiac/gemini.png')}}" alt="Gemini">
                                            <span>Gemini</span>
                                            <span>Apr 20 - May 20</span>
                                        </div>
                                        <div class="zodiac-sign" data-sign="cancer" style="
                                        height: 137px;">
                                            <img src="{{url('storage/zodiac/cancer.png')}}" alt="Cancer">
                                            <span>Cancer</span>
                                            <span>Jun 21 - Jul 22</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="leo">
                                            <img src="{{url('storage/zodiac/leo.png')}}" alt="Leo">
                                            <span>Leo</span>
                                            <span>Jun 23 - Aug 22</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="virgo">
                                            <img src="{{url('storage/zodiac/virgo.png')}}" alt="Virgo">
                                            <span>Virgo</span>
                                            <span>Aug 22 - Sep 22</span>
                
                                        </div>
                                    </div>
                                    <div class="zodiac-row">
                                        <div class="zodiac-sign" data-sign="libra">
                                            <img src="{{url('storage/zodiac/libra.png')}}" alt="Aries">
                                            <span>Libra</span>
                                            <span>Sep 23 - Oct 22</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="scorpio">
                                            <img src="{{url('storage/zodiac/scorpio.png')}}" alt="Scorpio">
                                            <span>Scorpio</span>
                                            <span>Oct 23 - Nov 21</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="gemini">
                                            <img src="{{url('storage/zodiac/sagittarius.png')}}" alt="Sagittarius">
                                            <span>Sagittarius</span>
                                            <span>Nov 22 - Dec 22</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="gemini">
                                            <img src="{{url('storage/zodiac/capricorn.png')}}" alt="Capricorn">
                                            <span>Capricorn</span>
                                            <span>Dec 22 - Jan 19</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="Aquarius">
                                            <img src="{{url('storage/zodiac/aquarius.png')}}" alt="Aquarius">
                                            <span>Aquarius</span>
                                            <span>Jan 22 - Feb 18</span>
                
                                        </div>
                                        <div class="zodiac-sign" data-sign="Pisces">
                                            <img src="{{url('storage/zodiac/pisces.png')}}" alt="Pisces">
                                            <span>Pisces</span>
                                            <span>Feb 19 - Mar 20</span>
                
                                        </div>
                                    </div>
                                </section>
                                
                                {{-- <section>
                                    <h3>Choose Your Zodiac Sign</h3>
                                    <div class="zodiac-signs">
                                        
                                            <div class="zodiac-sign" data-sign="aries">
                                                <img src="{{url('storage/zodiac/aries.png')}}" alt="Aries">
                                                <span>Aries</span>
                                            </div>
                                        
                                            <div class="zodiac-sign" data-sign="taurus">
                                                <img src="{{url('storage/zodiac/taurus.png')}}" alt="Taurus">
                                                <span>Taurus</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/gemini.png')}}" alt="Gemini">
                                                <span>Gemini</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/cancer.png')}}" alt="Gemini">
                                                <span>Cancer</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/leo.png')}}" alt="Gemini">
                                                <span>Leo</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/virgo.png')}}" alt="Gemini">
                                                <span>Virgo</span>
                                            </div>
                                    
                                    
                                            <div class="zodiac-sign" data-sign="libra">
                                                <img src="{{url('storage/zodiac/libra.png')}}" alt="Aries">
                                                <span>Libra</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="scorpio">
                                                <img src="{{url('storage/zodiac/scorpio.png')}}" alt="Scorpio">
                                                <span>Scorpio</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/sagittarius.png')}}" alt="Sagittarius">
                                                <span>Sagittarius</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/capricorn.png')}}" alt="Capricorn">
                                                <span>Capricorn</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/leo.png')}}" alt="Gemini">
                                                <span>Leo</span>
                                            </div>
                                            <div class="zodiac-sign" data-sign="gemini">
                                                <img src="{{url('storage/zodiac/virgo.png')}}" alt="Gemini">
                                                <span>Virgo</span>
                                            </div>
                                        <!-- Add more zodiac signs as needed -->
                                    </div>
                                </section> --}}
                                
                                
                                
                                <!-- SECTION 2 -->
                                <h4></h4>
                                {{-- <section>
                                    <h3>Select Gender</h3>
                                    <div class="form-row">
                                        <div class="form-col">
                                            <label for="">
                                                Personal Gender
                                            </label>
                                            <div class="form-holder">
                                               <input type="checkbox" name="male" id="male">Male
                                               <input type="checkbox" name="female" id="female">Female
                                               <input type="checkbox" name="other" id="other">Other
                                              
                                               
                                            </div>
                                        </div>
                                        <div class="form-col">
                                            <label for="">
                                                Preference Gender
                                            </label>
                                            <div class="form-col">
                                                <input type="checkbox" name="pre_male" id="pre_male">Male
                                                <input type="checkbox" name="pre_female" id="pre_female">Female
                                                <input type="checkbox" name="pre_trans" id="pre_trans">Trans
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-col">
                                            <label for="">
                                                Relationship Status
                                            </label>
                                            <div class="form-col">
                                               <input type="checkbox" name="single" id="single">Single
                                               <input type="checkbox" name="married" id="marries">Married
                                            </div>
                                        </div>
                                        
                                    </div>
                                 
                                </section> --}}
                
                                <section>
                                    <h3>Personal Info</h3>
                                    <div class="form-row">
                                        <div class="form-col">
                                            <label for="">Personal Gender</label>
                                            <div class="form-holder">
                                              <select name="personal_gender" id="" class="form-control">
                                                <option value="">Male</option>
                                                <option value="">Female</option>
                                                <option value="">Other</option>
                                              </select>
                                            </div>
                                        </div>
                                        <div class="form-col">
                                            <label for="">Preference Gender</label>
                                            <div class="form-holder">
                                                <select name="preference_gender" id="" class="form-control">
                                                    <option value="">Male</option>
                                                    <option value="">Female</option>
                                                    <option value="">Trans</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-col">
                                            <label for="">Relationship Status</label>
                                            <div class="form-holder">
                                                <select name="preference_gender" id="" class="form-control">
                                                    <option value="">Single</option>
                                                    <option value="">Married</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                
                
                                <!-- SECTION 3 -->
                                <h4></h4>
                                {{-- <section>
                                    <h3 style="margin-bottom: 37px;">Interests</h3>
                                    <div class="grid">
                                        <div class="grid-item active">
                                            <div class="thumb">
                                                <img src="images/programming.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Programming
                                            </div>
                                        </div>
                                        <div class="grid-item">
                                            <div class="thumb">
                                                <img src="images/sports.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Sports
                                            </div>
                                        </div>
                                        <div class="grid-item">
                                            <div class="thumb">
                                                <img src="images/business.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Business
                                            </div>
                                        </div>
                                        <div class="grid-item">
                                            <div class="thumb">
                                                <img src="images/tour-guide.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Tour Guide
                                            </div>
                                        </div>
                                        <div class="grid-item">
                                            <div class="thumb">
                                                <img src="images/art-design.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Art-Design
                                            </div>
                                        </div>
                                        <div class="grid-item">
                                            <div class="thumb">
                                                <img src="images/doctor.jpg" alt="">
                                            </div>
                                            <div class="heading">
                                                Doctor
                                            </div>
                                        </div>
                                    </div>
                                </section> --}}
                
                                {{-- <section>
                                    <h3 style="margin-bottom: 37px;">Interests</h3>
                                    
                                    <div class="interests-container">
                                        <div class="interest">
                                            <input type="checkbox" id="interest1" name="interest[]" value="interest1">
                                            <label for="interest1">Interest 1</label>
                                        </div>
                                        <div class="interest">
                                            <input type="checkbox" id="interest2" name="interest[]" value="interest2">
                                            <label for="interest2">Interest 2</label>
                                        </div>
                                        <div class="interest">
                                            <input type="checkbox" id="interest3" name="interest[]" value="interest3">
                                            <label for="interest3">Interest 3</label>
                                        </div>
                                        <!-- Add more interests as needed -->
                                    </div>
                                </section> --}}

                                <section>
                                    <h3 style="margin-bottom: 37px;">Interests</h3>
                                    
                                    <div class="interests-container">
                                        <select name="preference_gender" id="" class="form-control">
                                            <option value="">Interest 1</option>
                                            <option value="">Interest 2</option>
                                            <option value="">Interest 3</option>
                                            <option value="">Counselor</option>
                                            <option value="">Therapist</option>
                                            <option value="">Psychologist</option>
                                            <option value="">Psychic</option>
                                            <option value="">Tarot reader</option>
                                            <option value="">Influencer</option>
                                        </select>
                                    </div>
                                </section>
                                
                
                                
                            </form>
                        </div>
                
                
                
                </div>
                
                {{-- <div class="col-lg-3 order-2 order-lg-3">
                    @include('frontend.right_sidebar')
                </div> --}}
            </div> <!-- row end -->

        </div> <!-- container end -->
    </main>
    <!-- Main End -->

    <!-- Common modals -->
    @include('frontend.modal')

    <!--Javascript
    ========================================================-->
    <script src="{{url('assets/frontend/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{url('assets/frontend/js/owl.carousel.min.js')}}"></script>
    <script src="{{url('assets/frontend/js/venobox.min.js')}}"></script>
    <script src="{{url('assets/frontend/js/timepicker.min.js')}}"></script>
    <script src="{{url('assets/frontend/js/jquery.datepicker.min.js')}}"></script>

   
    <script src="{{url('assets/frontend/js/jquery.nice-select.min.js')}}"></script>
    <script src="{{url('assets/frontend/plyr/plyr.js')}}"></script>
    <script src="{{url('assets/frontend/jquery-form/jquery.form.min.js')}}"></script>

    <script src="{{url('assets/frontend/leafletjs/leaflet.js')}}"></script>
    <script src="{{url('assets/frontend/leafletjs/leaflet-search.js')}}"></script>
    <script src="{{url('assets/frontend/toaster/toaster.js')}}"></script>

    <script src="{{url('assets/frontend/gallery/jquery.justifiedGallery.min.js')}}"></script>

    <script src="{{url('assets/frontend/js/jQuery.tagify.min.js')}}"></script>
    <script src="{{url('assets/frontend/js/jquery-rbox.js')}}"></script>


    <script src="{{url('assets/frontend/js/plyr_cdn_dw.js')}}"></script>

    <script src="{{ url('js/share.js') }}"></script>

    <script src="{{url('assets/frontend/uploader/file-uploader.js')}}"></script>
    
    <script src="{{ url('assets/frontend/summernote-0.8.18-dist/summernote-lite.min.js') }}"></script>

    <script src="{{url('assets/frontend/js/custom.js')}}"></script>

    <script src="{{url('assets/frontend/js/initialize.js')}}"></script>
   
    <script src="{{url('wizard/js/jquery-3.3.1.min.js')}}"></script>
		
    <!-- JQUERY STEP -->
    <script src="{{url('wizard/js/jquery.steps.js')}}"></script>

    <!-- DATE-PICKER -->
    <script src="{{url('wizard/vendor/date-picker/js/datepicker.js')}}"></script>
    <script src="{{url('wizard/vendor/date-picker/js/datepicker.en.js')}}"></script>

    <script src="{{url('wizard/js/main.js')}}"></script>


    <script>
        
    </script>
    @include('frontend.common_scripts')
    
    @include('frontend.toaster')

    @include('frontend.initialize')
    
    <script>
        "use strict";
        
        $(document).ready(function() {
            $('[name=tag]').tagify({
                duplicates :false
            });
        });


    $('.owl-carousel').owlCarousel({
    rtl:true,
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
})



    document.addEventListener('DOMContentLoaded', function () {
        // Get all zodiac sign images
        alert('hello');
        const zodiacSignImages = document.querySelectorAll('.zodiac-sign img');
    console.log(zodiacSignImages);
        // Add click event listener to each zodiac sign image
        zodiacSignImages.forEach(function (image) {
            // Add click event listener to the zodiac sign image
            image.addEventListener('click', function () {
                // Remove 'selected' class from all zodiac signs
                document.querySelectorAll('.zodiac-sign').forEach(function (sign) {
                    sign.classList.remove('selected');
                });

                // Add 'selected' class to the parent of the clicked zodiac sign image
                image.closest('.zodiac-sign').classList.add('selected');
            });
        });
    });



</script>



    
</body>

</html>


