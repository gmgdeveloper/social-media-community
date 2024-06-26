<!-- Profile Nav End -->
<div class="friends-tab ct-tab bg-white p-3">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                data-bs-target="#home" type="button" role="tab" aria-controls="home"
                aria-selected="true"><?php echo e(get_phrase('My Friends')); ?></button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                data-bs-target="#profile" type="button" role="tab"
                aria-controls="profile" aria-selected="false"><?php echo e(get_phrase('Friend Requests')); ?></button>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel"
            aria-labelledby="home-tab">
            <div id="my-friends-list" class="friends-list mt-3">

                <?php echo $__env->make('frontend.profile.friends_single_data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            </div>
        </div>
        <!-- Tab Pane End -->
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="friends-request my-3 g-2">
                <div id="my-friend-request-list" class="row">

                    <?php echo $__env->make('frontend.profile.friend_requests_single_data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    
                </div>
            </div>
        </div>
        <!-- Tab Pane End -->
    </div>
    <!-- Tab Content End -->
</div>
<!-- Friends Tab End --><?php /**PATH E:\laragon\www\gmg\Socail App Laravel\Sociopro\resources\views/frontend/profile/friends.blade.php ENDPATH**/ ?>