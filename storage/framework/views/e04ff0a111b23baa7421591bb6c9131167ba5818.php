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
                        <?php
                            $system_light_logo = \App\Models\Setting::where('type', 'system_light_logo')->value('description');
                        ?>
                        <a class="navbar-brand mt-2" href="<?php echo e(route('timeline')); ?>"><img src="<?php echo e(url('storage/logo/light/'.$system_light_logo)); ?>" class="" alt="logo" width="70px" style="width: 125px;" /></a>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div class="header-search">
                        <a href="<?php echo e(route('timeline')); ?>">
                            <div class="sc-home rounded">
                                <i class="fa-solid fa-house"></i>
                            </div>
                        </a>
                        <div class="sc-search">
                            <form action="<?php echo e(route('search')); ?>" method="GET">
                                <input type="search" class="rounded background" name="search" value="<?php if(isset($_GET['search'])): ?><?php echo e($_GET['search']); ?><?php endif; ?>" placeholder="Search">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-8">
                    <div class="header-controls">
                        <div class="align-items-center d-flex justify-content-around">
                          
                            <div class="group-control">
                                <a href="<?php echo e(route('profile.friends')); ?>" class="notification-button"><i class="fa-solid fa-user-group"></i></a>
                            </div>
                            <?php
                                $last_msg = \App\Models\Chat::where('sender_id',auth()->user()->id)->orWhere('reciver_id',auth()->user()->id)->orderBy('id','DESC')->limit('1')->first();
                                if(!empty($last_msg)){
                                    if($last_msg->sender_id == auth()->user()->id){
                                        $msg_to = $last_msg->reciver_id;
                                    }else{
                                        $msg_to = $last_msg->sender_id;
                                    }
                                }

                                $unread_msg = \App\Models\Chat::where('reciver_id',auth()->user()->id)->where('read_status','0')->count();
                            ?>
                            <div class="inbox-control">
                                <a href="<?php if(!empty($last_msg)): ?><?php echo e(route('chat',$msg_to)); ?> <?php endif; ?>" class="message_custom_button position-relative">
                                    <i class="fa-brands fa-rocketchat"></i>
                                    <?php if($unread_msg>0): ?>
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill notificatio_counter_bg">
                                            <?php echo e(get_phrase($unread_msg)); ?>

                                        </span>
                                    <?php endif; ?>
                                </a>
                            </div>
                            <?php
                                $unread_notification = \App\Models\Notification::where('reciver_user_id',auth()->user()->id)->where('status','0')->count();
                            ?>
                            <div class="notify-control">
                                <a class="notification-button position-relative" href="<?php echo e(route('notifications')); ?>">
                                    <i class="fa-solid fa-bell"></i>
                                    <?php if($unread_notification>0): ?>
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill notificatio_counter_bg">
                                            <?php echo e(get_phrase($unread_notification)); ?>

                                        </span>
                                    <?php endif; ?>
                                </a>
                            </div>
                            <div class="profile-control dropdown">
                                
                                <div class="zodiac_sign_with_profile" >

                                    <img src="<?php echo e(url('storage/userzodiac/aries.png')); ?>" width="20" alt="" style="
                                    position: absolute;
                                    top: -8px;
                                    left: -6px;
                                    width: 19px;
                                    ">
                                </div>
                                 <img src="<?php echo e(get_user_image(auth()->user()->photo,'optimized')); ?>" class="rounded-circle" alt="" class="dropdown-toggle" type="button" id="dropdownMenuButton1"
                                 data-bs-toggle="dropdown" aria-expanded="false" style="
                                 width: 50px;
                                 height: 50px;"> 
                                  <div class="genderandinterest_timeline">

                                    
                                    <img src="<?php echo e(url('storage/thumbnails/gendersign.png')); ?>" width="50" alt="" style="
                                    position: absolute;
                                    width: 27px;
                                    left: 15px;
                                    top: 42px;
                                    border-radius: 40px;
                                    ">
                                </div>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="<?php echo e(route('profile')); ?>"> <i class="fa fa-user"></i> <?php echo e(get_phrase('My Profile')); ?></a></li>
                                    <?php if(auth()->user()->user_role=="admin"): ?>
                                        <li><a class="dropdown-item" href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(get_phrase('Go to admin panel')); ?></a></li>
                                    <?php endif; ?>

                                    
                                    <li><a class="dropdown-item" href="<?php echo e(route('user.password.change')); ?>"> <i class="fa-solid fa-gear"></i>  <?php echo e(get_phrase('Change Password')); ?></a></li>
                                    <li>
                                        <form method="POST" action="<?php echo e(route('logout')); ?>">
                                            <?php echo csrf_field(); ?>
                                            <a class="dropdown-item" href="route('logout')"
                                                    onclick="event.preventDefault();
                                                                this.closest('form').submit();">
                                              <i class="fa-solid fa-right-from-bracket"></i>  <?php echo e(get_phrase('Log Out')); ?>

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
<!-- Header End --><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/header.blade.php ENDPATH**/ ?>