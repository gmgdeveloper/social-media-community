

<style>
    img.rounded-circle {
    height: 100%;
    object-fit: cover;
}

.header-controls .notify-control ul li .noti-avata {
    position: relative;
}
</style>
<div class="all-notify-control header-controls bg-white shadow-sm">
    <div class="notify-control">
        <div class="notify-inner shadow-sm">
            <h3 class="h4 py-4 border-bottom "><?php echo e(get_phrase('Notifications')); ?></h3>
            <div class="new-notif mt-4 pb-1">
                <h4 class="notify-title"><?php echo e(get_phrase('New')); ?> <span><?php echo e(count($new_notification)); ?></span></h4>

    <div class="avatar-details" style="
    margin-left: 19px;
">
        <div class="d-flex">
            <div class="noti-avata me-3"><img width="48" class="rounded-circle" src="<?php echo e(url('storage/userimage/default.png')); ?>" alt="" style="
                width: 47px;
                height: 47px;
            ">
                
            </div>
            <div class="noti-details">
                <h4><a href="<?php echo e(url('storage/userimage/default.png')); ?>">User</a><span> accepted
                    Your Friend Request </span></h4>

                                                            <div class="btn-inline">
                        <a href="javascript:void(0)" onclick="ajaxAction('https://mazdoor.gmgsolution.com/mark/as/read/notification/3')" class="btn btn-primary">Mark As Read</a>
                    </div>
                                                       
            </div>
        </div>
    </div>
    <span class="noti-time" style="margin-left:627px">2 hours ago</span>

            </div>
        </div>
    </div>
</div>
<?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/notification/notification.blade.php ENDPATH**/ ?>