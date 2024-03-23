<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>FormWizard_v9</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

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
</style>



           
        </style>
	</head>
	<body>
        
		<div class="wrapper">
            <form action="" id="wizard">
        		<!-- SECTION 1 -->
                <h4></h4>
                <section>
                    <h3>Choose Your Zodiac Sign</h3>
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
                        <div class="zodiac-sign" data-sign="cancer">
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
                    <h3>Select Gender</h3>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="">Personal Gender</label>
                            <div class="form-holder">
                               <input type="checkbox" name="male" id="male"><label for="male">Male</label>
                               <input type="checkbox" name="female" id="female"><label for="female">Female</label>
                               <input type="checkbox" name="other" id="other"><label for="other">Other</label>
                            </div>
                        </div>
                        <div class="form-col">
                            <label for="">Preference Gender</label>
                            <div class="form-holder">
                                <input type="checkbox" name="pre_male" id="pre_male"><label for="pre_male">Male</label>
                                <input type="checkbox" name="pre_female" id="pre_female"><label for="pre_female">Female</label>
                                <input type="checkbox" name="pre_trans" id="pre_trans"><label for="pre_trans">Trans</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="">Relationship Status</label>
                            <div class="form-holder">
                               <input type="checkbox" name="single" id="single"><label for="single">Single</label>
                               <input type="checkbox" name="married" id="married"><label for="married">Married</label>
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

                <section>
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
                </section>
                

                
            </form>
		</div>

		<script src="{{url('wizard/js/jquery-3.3.1.min.js')}}"></script>
		
		<!-- JQUERY STEP -->
		<script src="{{url('wizard/js/jquery.steps.js')}}"></script>

		<!-- DATE-PICKER -->
		<script src="{{url('wizard/vendor/date-picker/js/datepicker.js')}}"></script>
		<script src="{{url('wizard/vendor/date-picker/js/datepicker.en.js')}}"></script>

		<script src="{{url('wizard/js/main.js')}}"></script>

<!-- Template created and distributed by Colorlib -->
</body>
</html>