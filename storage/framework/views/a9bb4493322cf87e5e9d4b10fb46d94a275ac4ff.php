<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>FormWizard_v9</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="<?php echo e(url('wizard/fonts/material-design-iconic-font/css/material-design-iconic-font.css')); ?>">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="<?php echo e(url('wizard/vendor/date-picker/css/datepicker.min.css')); ?>">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="<?php echo e(url('wizard/css/style.css')); ?>">
        
       
 
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
                            <img src="<?php echo e(url('storage/zodiac/aries.png')); ?>" alt="Aries">
                            <span>Aries</span>
                            <span>Sep 23 - Oct 22</span>
                        </div>
                        
                        <div class="zodiac-sign" data-sign="taurus">
                            <img src="<?php echo e(url('storage/zodiac/taurus.png')); ?>" alt="Taurus">
                            <span>Taurus</span>
                            <span>May 21 - Jun 20</span>
                        </div>
                        <div class="zodiac-sign" data-sign="gemini">
                            <img src="<?php echo e(url('storage/zodiac/gemini.png')); ?>" alt="Gemini">
                            <span>Gemini</span>
                            <span>Apr 20 - May 20</span>
                        </div>
                        <div class="zodiac-sign" data-sign="cancer">
                            <img src="<?php echo e(url('storage/zodiac/cancer.png')); ?>" alt="Cancer">
                            <span>Cancer</span>
                            <span>Jun 21 - Jul 22</span>

                        </div>
                        <div class="zodiac-sign" data-sign="leo">
                            <img src="<?php echo e(url('storage/zodiac/leo.png')); ?>" alt="Leo">
                            <span>Leo</span>
                            <span>Jun 23 - Aug 22</span>

                        </div>
                        <div class="zodiac-sign" data-sign="virgo">
                            <img src="<?php echo e(url('storage/zodiac/virgo.png')); ?>" alt="Virgo">
                            <span>Virgo</span>
                            <span>Aug 22 - Sep 22</span>

                        </div>
                    </div>
                    <div class="zodiac-row">
                        <div class="zodiac-sign" data-sign="libra">
                            <img src="<?php echo e(url('storage/zodiac/libra.png')); ?>" alt="Aries">
                            <span>Libra</span>
                            <span>Sep 23 - Oct 22</span>

                        </div>
                        <div class="zodiac-sign" data-sign="scorpio">
                            <img src="<?php echo e(url('storage/zodiac/scorpio.png')); ?>" alt="Scorpio">
                            <span>Scorpio</span>
                            <span>Oct 23 - Nov 21</span>

                        </div>
                        <div class="zodiac-sign" data-sign="gemini">
                            <img src="<?php echo e(url('storage/zodiac/sagittarius.png')); ?>" alt="Sagittarius">
                            <span>Sagittarius</span>
                            <span>Nov 22 - Dec 22</span>

                        </div>
                        <div class="zodiac-sign" data-sign="gemini">
                            <img src="<?php echo e(url('storage/zodiac/capricorn.png')); ?>" alt="Capricorn">
                            <span>Capricorn</span>
                            <span>Dec 22 - Jan 19</span>

                        </div>
                        <div class="zodiac-sign" data-sign="Aquarius">
                            <img src="<?php echo e(url('storage/zodiac/leo.png')); ?>" alt="Aquarius">
                            <span>Aquarius</span>
                            <span>Jan 22 - Feb 18</span>

                        </div>
                        <div class="zodiac-sign" data-sign="Pisces">
                            <img src="<?php echo e(url('storage/zodiac/virgo.png')); ?>" alt="Pisces">
                            <span>Pisces</span>
                            <span>Feb 19 - Mar 20</span>

                        </div>
                    </div>
                </section>
                
                
                
                
                
				<!-- SECTION 2 -->
                <h4></h4>
                <section>
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
                 
                </section>

                <!-- SECTION 3 -->
                <h4></h4>
                <section>
                    <h3 style="margin-bottom: 37px;">Categories</h3>
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
                </section>

                
            </form>
		</div>

		<script src="<?php echo e(url('wizard/js/jquery-3.3.1.min.js')); ?>"></script>
		
		<!-- JQUERY STEP -->
		<script src="<?php echo e(url('wizard/js/jquery.steps.js')); ?>"></script>

		<!-- DATE-PICKER -->
		<script src="<?php echo e(url('wizard/vendor/date-picker/js/datepicker.js')); ?>"></script>
		<script src="<?php echo e(url('wizard/vendor/date-picker/js/datepicker.en.js')); ?>"></script>

		<script src="<?php echo e(url('wizard/js/main.js')); ?>"></script>

<!-- Template created and distributed by Colorlib -->
</body>
</html><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/user/steps.blade.php ENDPATH**/ ?>