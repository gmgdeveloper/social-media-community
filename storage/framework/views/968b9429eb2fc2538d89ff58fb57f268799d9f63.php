<div class="row" id="postMediaSection<?php echo e($post->post_id); ?>">
    <div class="col-12">
        <?php
        $media_files = DB::table('media_files')->where('post_id', $post->post_id)->get();
        $media_files_count = count($media_files);
        $more_unloaded_images = max(0, $media_files_count - 5);
        ?>

        <div class="photoGallery visibility-hidden <?php if($media_files_count == 1): ?> initialized <?php endif; ?>">
            <!-- Display up to 5 images or videos -->
            <?php $__currentLoopData = $media_files->take(5); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $media_file): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($media_file->file_type == 'video'): ?>
            <?php if(File::exists('storage/post/videos/'.$media_file->file_name)): ?>
            <?php if($media_files_count > 1): ?>
            <a class="position-relative" onclick="showCustomModal('<?php echo e(route('preview_post', ['post_id' => $post->post_id, 'file_name' => $media_file->file_name])); ?>', '<?php echo e(get_phrase('Preview')); ?>', 'xxl')" href="javascript:void(0)">
                <?php endif; ?>

                <video muted controlsList="nodownload" class="plyr-js w-100 rounded video-thumb <?php if($media_files_count > 1): ?> initialized <?php endif; ?>" onplay="pauseOtherVideos(this)">
                    <source src="<?php echo e(url('/storage/post/videos/'.$media_file->file_name)); ?>" type="video/mp4">
                    
                </video>

                <?php if($more_unloaded_images > 0 && $key == 4): ?>
                <div class="more_image_overlap"><span><i class="fa-solid fa-plus"></i> <?php echo e($more_unloaded_images); ?></span></div>
                <?php endif; ?>

                <?php if($media_files_count > 1): ?>
            </a>
            <?php endif; ?>
            <?php else: ?>
            
            <div class="alert alert-danger">Video file does not exist!</div>
            <?php endif; ?>
            <?php else: ?>
            <div class="picture text-center">
                <a onclick="showCustomModal('<?php echo e(route('preview_post', ['post_id' => $post->post_id, 'file_name' => $media_file->file_name])); ?>', '<?php echo e(get_phrase('Preview')); ?>', 'xxl')" href="javascript:void(0)">
                    <?php if($more_unloaded_images > 0 && $key == 4): ?>
                    <?php $opacity = 'opacity-7'; ?>
                    <div class="more_image_overlap"><span><i class="fa-solid fa-plus"></i> <?php echo e($more_unloaded_images); ?></span></div>
                    <?php else: ?>
                    <?php $opacity = ''; ?>
                    <?php endif; ?>

                    <img src="<?php echo e(get_post_image($media_file->file_name)); ?>" class="w-100 h-100 <?php if($media_files_count == 1): ?> single-image-ration <?php endif; ?> <?php echo e($opacity); ?>" alt="">
                </a>
            </div>
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>

    </div>
</div><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/main_content/media_type_post_view.blade.php ENDPATH**/ ?>