
    <div class="page-wrap">
        <div class="card search-card p-4">
            <h3 class="sub-title"><?php echo e(get_phrase('Search Results')); ?></h3>
            <?php echo $__env->make('frontend.search.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div> <!-- Search Card End -->
        
        
        <div class="card people-card p-4 mt-4 mb-3">
            <h3 class="sub-title">Posts</h3>
            <?php echo $__env->make('frontend.main_content.posts',['posts'=>$posts,'type'=>'user_post'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>



    <?php echo $__env->make('frontend.main_content.scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('frontend.initialize', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('frontend.common_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/search/post.blade.php ENDPATH**/ ?>