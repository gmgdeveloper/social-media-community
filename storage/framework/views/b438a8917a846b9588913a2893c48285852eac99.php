<!-- Modal -->
<form class="ajaxForm" id="createPostForm" action="<?php echo e(route('create_post')); ?>" method="post" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <input type="hidden" id="post_privacy" name="privacy" value="public">
    <input type="hidden" id="post_type" name="post_type" value="general">
    <?php if(isset($event_id)): ?>
        <input type="hidden" id="event_id" name="event_id" value="<?php echo e($event_id); ?>"> 
        <input type="hidden" id="publisher" name="publisher" value="event"> 
    <?php endif; ?>
    <?php if(isset($page_id)): ?>
        <input type="hidden" id="page_id" name="page_id" value="<?php echo e($page_id); ?>"> 
        <input type="hidden" id="publisher" name="publisher" value="page"> 
    <?php endif; ?>

    <?php if(isset($group_id)): ?>
        <input type="hidden" id="group_id" name="group_id" value="<?php echo e($group_id); ?>"> 
        <input type="hidden" id="publisher" name="publisher" value="group"> 
    <?php endif; ?>

    <div class="modal fade" id="createPost" tabindex="-1" aria-labelledby="createPostLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
           
            <div class="modal-content">
                <div class="modal-header text-center">
                    
                    <h5 class="modal-title" id="exampleModalLabel"><?php echo e(get_phrase('Create Post ')); ?></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"><i class="fa fa-close"></i></button>

                        

                    
                    
                         <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"><i class="fa fa-close"></i></button>
                    

                    
                   
                </div>
                    
                            <div class="modal-body">
                                <div class="entry-header d-flex justify-content-between">
                                    <?php if(isset($page_id)&&!empty($page_id)): ?>
                                        <?php
                                            $page = \App\Models\Page::find($page_id);
                                        ?>
                                        <a href="<?php echo e(route('single.page',$page_id)); ?>" class="author-thumb d-flex align-items-center">
                                            <img src="<?php echo e(get_page_logo($page->logo, 'logo')); ?>" width="40px" class="rounded-circle" alt="">
                                            <h6 class="ms-2 mt-2"><?php echo e($page->title); ?></h6>
                                        </a>
                                    <?php else: ?>
                                        <a href="<?php echo e(route('profile')); ?>" class="author-thumb d-flex align-items-center">
                                            <img src="<?php echo e(get_user_image($user_info->photo, 'optimized')); ?>" width="40px" class="rounded-circle" alt="">
                                            <h6 class="ms-2 mt-2"><?php echo e($user_info->name); ?></h6>
                                        </a>
                                    <?php endif; ?>
                                    <div class="entry-status">
                                        <div class="dropdown">
                                            <button class="btn btn-gray dropdown-toggle" type="button" id="postPrivacyDroupdownBtn" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fa-solid fa-earth-americas"></i> <?php echo e(get_phrase('Public')); ?>

                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="postPrivacyDroupdownBtn">
                                                <li><a class="dropdown-item" href="javascript:void(0)" onclick="post_privacy('private', this, 'postPrivacyDroupdownBtn', 'post_privacy')"><i class="fa-solid fa-user"></i> <?php echo e(get_phrase('Only Me')); ?></a>
                                                </li>
                                                <li><a class="dropdown-item" href="javascript:void(0)" onclick="post_privacy('friends', this, 'postPrivacyDroupdownBtn', 'post_privacy')"><i class="fa-solid fa-users"></i> <?php echo e(get_phrase('Friends')); ?></a>
                                                </li>
                                                <li><a class="dropdown-item" href="javascript:void(0)" onclick="post_privacy('public', this, 'postPrivacyDroupdownBtn', 'post_privacy')"><i class="fa-solid fa-user-group"></i> <?php echo e(get_phrase('Public')); ?></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                
                                <div class="form-group pt-2">
                                    <label for="#"><?php echo e(get_phrase('Title')); ?></label>
                                    <input type="text" class="border-0"  name="name" value="" required placeholder="Enter Post Title">
                                </div>
                                <div class="form-group">
                                    <label for="#"><?php echo e(get_phrase('Description')); ?></label>
                                    <textarea name="about" class="border-0 bg-secondary content" id="about" cols="30" rows="10" placeholder="About Community"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="#"><?php echo e(get_phrase('Image')); ?></label>
                                    <input type="file" name="image" id="image" class="form-control border-0 ">
                                </div>

                                <div class="form-group">
                                    <label for="#"><?php echo e(get_phrase('Video')); ?></label>
                                    <input type="file" name="video" id="video" class="form-control border-0">
                                </div>

                                <div class="form-group">
                                    <label for="#"><?php echo e(get_phrase('Hashtags')); ?></label>
                                    <select name="hashtags" id="hashtags" class="form-control">
                                        <option value=""><?php echo e(get_phrase('Hashtag1')); ?></option>
                                        <option value=""><?php echo e(get_phrase('Hashtag2')); ?></option>
                                        <option value=""><?php echo e(get_phrase('Hashtag3')); ?></option>
                                        <option value=""><?php echo e(get_phrase('Hashtag4')); ?></option>
                                    </select>
                                </div>

                                <div id="tab-file" class="post-inner file-tab cursor-pointer p-0 mt-2">
                                    <span class="close-btn z-index-2000"><i class="fa fa-close"></i></span>

                                    <!--Uploader start-->
                                    
                                    <!--Uplodaer end-->

                                </div>

                                

                                
                                
                                <!-- Location Tab End -->
                                <div class="modal-footer text-center justify-content-center p-3">
                                    
                                    <button type="submit" class="btn btn-primary mt-3 rounded w-100 btn-lg"><?php echo e(get_phrase('Publish')); ?></button>
                                </div>
                            </div>

                    
            </div>
          
           
        </div>
    </div> <!-- Create Post Modal End -->
</form>
<?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/main_content/create_post_modal.blade.php ENDPATH**/ ?>