<div class="newsfeed-form single-entry">
    <div class="entry-inner">
        <div class="create-entry">
            <?php if(isset($page_id)&&!empty($page_id)): ?>
                <?php
                    $page = \App\Models\Page::find($page_id);

          

                ?>
                <a href="<?php echo e(route('single.page',$page_id)); ?>" class="author-thumb d-flex align-items-center">
                    <img src="<?php echo e(url($page->logo, 'logo')); ?>" width="40px" height="40px" class="rounded-circle" alt="">
                </a>
            <?php else: ?>
            <div class="zodiac_sign_with_profile" >

                <img src="<?php echo e(url('storage/userzodiac/aries.png')); ?>" width="20" alt="" style="
                display: block;
                margin-top: 15px;
                margin-left: -3px;
                width: 18px;
            ">
            </div>
                <a href="<?php echo e(route('profile')); ?>" class="author-thumb d-flex align-items-center">
                    <img src="<?php echo e(get_user_image($user_info->photo, 'optimized')); ?>" width="40px" height="40px" class="rounded-circle" alt="">
                </a>
                <div class="genderandinterest_timeline">

                    
                    <img src="<?php echo e(url('storage/thumbnails/gendersign.png')); ?>" width="50" alt="" style="
                   
                    position: absolute;
                    width: 22px;
                    left: 29px;
                    top: 51px;
                    border-radius: 40px;
                ">

                </div>
            <?php endif; ?>
            <button class="btn-trans" data-bs-toggle="modal" data-bs-target="#createPost">
                <?php echo e(get_phrase("What's on your mind ____", [auth()->user()->name])); ?>?
            </button>

            <?php if(isset($page_id)&&!empty($page_id)): ?>
                <?php echo $__env->make('frontend.main_content.create_post_modal',['page_id'=>$page_id], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php elseif(isset($group_id)&&!empty($group_id)): ?>
                <?php echo $__env->make('frontend.main_content.create_post_modal',['group_id'=>$group_id], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php else: ?>
                <?php echo $__env->make('frontend.main_content.create_post_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endif; ?>

        </div>
        <?php if(Route::currentRouteName() == 'timeline'): ?>
            <div class="post-options justify-content-center">
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="<?php echo e(url('storage/images/image.svg')); ?>" alt="photo"><?php echo e(get_phrase('Photo')); ?>/<?php echo e(get_phrase('Video')); ?></button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="<?php echo e(url('storage/images/location.png')); ?>" alt="photo" alt="photo"><?php echo e(get_phrase('Location')); ?></button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="<?php echo e(url('storage/images/camera.svg')); ?>" alt="photo"><?php echo e(get_phrase('Live Video')); ?></button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="<?php echo e(url('storage/images/plus-circle-fill.svg')); ?>" alt="photo"><?php echo e(get_phrase('More')); ?></button>
            </div>
        <?php endif; ?>
    </div>
</div>

















  
<?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/main_content/create_post.blade.php ENDPATH**/ ?>