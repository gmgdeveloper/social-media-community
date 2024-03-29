<!-- Profile Nav End -->
<div class="friends-tab ct-tab bg-white p-3">
	
    <div class="photo-list mt-3">
        <h4 class="h6 mb-3"><?php echo e(get_phrase('Interests')); ?></h4>
        <div class="flex-wrap" id="allVideos">
            <?php echo $__env->make('frontend.profile.interest_single', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>

</div> <!-- Friends Tab End --><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/profile/interest.blade.php ENDPATH**/ ?>