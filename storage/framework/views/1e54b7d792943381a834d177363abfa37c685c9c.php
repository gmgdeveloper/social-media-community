<div class="row gx-3">
    <div class="col-lg-7">
        <div class="group-inner bg-white border rounded p-3">
            <div class="gr-search">
                <h3 class="h6"><span><i class="fa-solid fa-users"></i></span><?php echo e(get_phrase('Community')); ?></h3>
                <form action="<?php echo e(route('search.group')); ?>" method="GET">
                    <input type="text" class="bg-secondary rounded" name="search" placeholder="<?php echo e(get_phrase('Search Community')); ?>">
                    <span class="i fa fa-search"></span>
                </form>
            </div>
            <div class="page-suggest mt-4">
                <h3 class="h6"><?php echo e(get_phrase('All Communities')); ?></h3>
                <div class="ps-wrap mt-3 justify-content-between">
                    <div class="row gx-2" id="groupLodingView">
                        <?php echo $__env->make('frontend.groups.group-single', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div><!--  Group Content Inner Col End -->
    <?php echo $__env->make('frontend.groups.right-sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/groups/allgroup.blade.php ENDPATH**/ ?>