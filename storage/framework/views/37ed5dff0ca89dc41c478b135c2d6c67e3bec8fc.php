<div class="profile-wrap">
    <div class="profile-cover rounded">
        <div class="profile-header" style="background-image: url('<?php echo e(get_cover_photo($user_info->cover_photo)); ?>');">
            <button onclick="showCustomModal('<?php echo e(route('load_modal_content', ['view_path' => 'frontend.profile.edit_cover_photo'])); ?>', '<?php echo e(get_phrase('Update your cover photo')); ?>');" class="edit-cover btn"><i class="fa fa-camera"></i><?php echo e(get_phrase('Edit Cover Photo')); ?></button>
            <div class="profile-avatar d-flex align-items-center ps-4">
                <div class="zodiac_sign_with_profile">

                    <img src="<?php echo e(url('storage/userzodiac/aries.png')); ?>" width="20" alt="">
                </div>
                <div class="avatar avatar-xl"><img class="rounded-circle" src="<?php echo e(get_user_image($user_info->photo, 'optimized')); ?>" alt=""> </div>
                <div class="genderandinterest">

                    
                    <img src="<?php echo e(url('storage/thumbnails/gendersign.png')); ?>" width="50" alt="">

                </div>
                <div>
                    
                </div>
                <div class="avatar-details">
                    <h3><?php echo e(auth()->user()->name); ?></h3>
                    <button onclick="showCustomModal('<?php echo e(route('load_modal_content', ['view_path' => 'frontend.profile.edit_profile'])); ?>', '<?php echo e(get_phrase('Edit your profile')); ?>');" class="btn btn-primary btn-sm" data-bs-toggle="modal"
                        data-bs-target="#edit-profile" style="background:#fff;color:#000" ><i class="fa fa-pencil"></i ><?php echo e(get_phrase('Edit Profile')); ?></button>
                </div>
              
            </div>
        </div>
    </div>
    <div class="profile-content mt-3">
        <div class="row gx-3">
            <div class="col-lg-7 col-sm-12">
                <nav class="profile-nav border bg-white mb-3">
                    <ul class="nav align-items-center justify-content-start">
                        
                        <li class="nav-item <?php if(Route::currentRouteName() == 'profile.friends'): ?> active <?php endif; ?>"><a href="<?php echo e(route('profile.friends')); ?>" class="nav-link"><?php echo e(get_phrase('Friends')); ?></a></li>
                        <li class="nav-item <?php if(Route::currentRouteName() == 'profile.photos'): ?> active <?php endif; ?>"><a href="<?php echo e(route('profile.photos')); ?>" class="nav-link"><?php echo e(get_phrase('Photo')); ?></a></li>
                        <li class="nav-item <?php if(Route::currentRouteName() == 'profile.videos'): ?> active <?php endif; ?>"><a href="<?php echo e(route('profile.videos')); ?>" class="nav-link"><?php echo e(get_phrase('Video')); ?></a></li>
                        
                        <li class="nav-item <?php if(Route::currentRouteName() == 'profile.interest'): ?> active <?php endif; ?>"><a href="<?php echo e(route('profile.interest')); ?>" class="nav-link"><?php echo e(get_phrase('Interest')); ?></a></li>
                        
                        
                    </ul>
                </nav>

                <?php if(Route::currentRouteName() == 'profile.friends'): ?>
                    <?php echo $__env->make('frontend.profile.friends', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php elseif(Route::currentRouteName() == 'profile.photos'): ?>
                    <?php echo $__env->make('frontend.profile.photos', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php elseif(Route::currentRouteName() == 'profile.videos'): ?>
                    <?php echo $__env->make('frontend.profile.videos', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php elseif(Route::currentRouteName() == 'profile.interest'): ?>
                    <?php echo $__env->make('frontend.profile.interest', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php else: ?>
                    

                    <div id="profile-timeline-posts">
                        <?php echo $__env->make('frontend.main_content.posts',['type'=>'user_post'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>

                    <?php echo $__env->make('frontend.main_content.scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
            </div>
            <!-- COL END -->
            <div class="col-lg-5 col-sm-12">
                <?php echo $__env->make('frontend.profile.profile_info',['type'=>"my_account"], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
    <!-- Profile content End -->
</div>

<?php echo $__env->make('frontend.profile.scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/profile/index.blade.php ENDPATH**/ ?>