<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <?php
        $system_name = \App\Models\Setting::where('type', 'system_name')->value('description');
        $system_favicon = \App\Models\Setting::where('type', 'system_fav_icon')->value('description');
    
    ?>
    <title><?php echo e($system_name); ?></title>
    <meta name="description" content="">

    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="<?php echo e(url('/storage/logo/dark/favicon/' . $system_favicon)); ?>">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/fontawesome/all.min.css')); ?>">
    <!-- CSS Library -->
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/owl.carousel.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/nice-select.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/venobox.min.css')); ?>">

    <!-- Style css -->
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/style.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(url('assets/frontend/css/own.css')); ?>">

   
</head>

<body class="bg-white login">


<?php $system_light_logo = \App\Models\Setting::where('type', 'system_light_logo')->value('description'); ?>

<!-- header -->
    <header class=" header-default py-3" style="background-color: blueviolet;">
    <nav class="navigation">
        <div class="container">
            <div class="row">
                <div class="col-auto col-lg-6">
                    <div class="logo-branding mt-1">
                        <a class="navbar-brand d-xs-hidden">
                            <img src="<?php echo e(url('storage/logo/light/'.$system_light_logo,)); ?>" height="35px" class="max-width-250px d-xs-hidden" alt="logo" />
                        </a>

                        <a class="navbar-brand d-block" >
                            <img src="<?php echo e(url('storage/logo/favicon/'.$system_light_logo,'favicon')); ?>" height="35px" class="max-width-250px d-hidden d-xs-show mt--5px" alt="logo" />
                        </a>
                    </div>
                </div>

                <div class="col-auto col-lg-6 ms-auto">
                    <div class="login-btns ms-5">
                        <a href="<?php echo e(route('login')); ?>" class="btn <?php if(Route::currentRouteName() == 'login'): ?> active <?php endif; ?>"><?php echo e(__('Login')); ?></a>
                        <?php if(get_settings('public_signup') == 1): ?>
                            <a href="<?php echo e(route('register')); ?>" class="btn <?php if(Route::currentRouteName() == 'register'): ?> active <?php endif; ?>"><?php echo e(__('Sign up')); ?></a>
                        <?php endif; ?>
                        <a href="<?php echo e(route('guest_user')); ?>" class="btn <?php if(Route::currentRouteName() == 'guest_user'): ?> active <?php endif; ?>"><?php echo e(__('Guest')); ?></a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
<!-- Header End --><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/auth/layout/header.blade.php ENDPATH**/ ?>