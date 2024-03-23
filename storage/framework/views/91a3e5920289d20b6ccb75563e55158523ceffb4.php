<div class="row rightSideBarToggler d-hidden">
    <div class="col-md-12">
        <div class="card mb-3">
            <div class="card-body text-end">
                <button class="btn" onclick="toggleRightSideBar()">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </div>
    </div>
</div>

<aside class="sidebar mt-0 sidebarToggle d-hidden" id="sidebarToggle">
    <div class="widget">
        <div class="d-flex align-items-center">
            <?php  
                        
                $tz = auth()->user()->timezone;
                if(!empty($tz)){
                    $timestamp = time();
                    $dt = new DateTime("now", new DateTimeZone($tz)); //first argument "must" be a string
                    $dt->setTimestamp($timestamp);
                    $current_hour = $dt->format('H');
                }else{
                    $current_hour = date('H', time());
                }
            ?>
            
            <?php if($current_hour >= 5 && $current_hour < 12): ?>
                <img class="img-fluid" src="<?php echo e(url('assets/frontend/images/m-sun.png')); ?>"  height="30px" width="30px" alt="">
            <?php elseif($current_hour >= 12 && $current_hour < 17): ?>
                <img class="img-fluid" src="<?php echo e(url('storage/images/cloud-sun.png')); ?>" alt="">
            <?php else: ?>
                <img class="img-fluid" src="<?php echo e(url('assets/frontend/images/moon.png')); ?>" height="30px" width="30px" alt="">
            <?php endif; ?>
            <h3 class="h6 ms-2"><?php echo e(get_phrase('Hi')); ?>, <?php echo e(Auth()->user()->name); ?>

                <?php if($current_hour >= 5 && $current_hour < 12): ?>
                    <span class="d-block text-primary"><?php echo e(get_phrase('Good Morning')); ?>!</span>
                <?php elseif($current_hour >= 12 && $current_hour < 17): ?>
                    <span class="d-block text-primary"><?php echo e(get_phrase('Good Afternoon')); ?>!</span>
                <?php else: ?>
                    <span class="d-block text-primary"><?php echo e(get_phrase('Good Evening')); ?>!</span>
                <?php endif; ?>
            </h3>
        </div>
    </div> <!-- Widget End -->
    <div class="widget">
       
        <div class="d-flex justify-content-between">
            <p>Post 1</p>
            <p>Comment 1</p>
        </div>
        <div class="d-flex justify-content-between ">

            <p style="font-size: 10px;font-weight:200">Cake Day 23-Mar-2020</p>
            <p style="font-size: 10px;font-weight:200">Gold Received 0</p>
        </div>
    </div> <!-- Widget End -->
    <div class="widget">
        <div class="d-flex align-items-center justify-content-between">
            <h3 class="widget-title"><?php echo e(get_phrase('COMMUNITIES')); ?> </h3>
            <div class="d-flex align-items-center widget-controls">
                
            </div>
        </div>
        
        <div class="contact-lists mt-3">
           
          
                        <div class="single-contact d-flex align-items-center justify-content-between">
                            <div class="avatar d-flex">
                                <a href="" class="d-flex align-items-center">
                                    <div class="avatar me-2">
                                        <img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="" style="width: 30px;height:30px; border-radius:50%" alt="">
                                    </div>
                                    <h4><?php echo e('dummy'); ?></h4>
                                </a>
                            </div>
                          
                        </div> 
                      
                  
                        <div class="single-contact d-flex align-items-center justify-content-between">
                            <div class="avatar d-flex">
                                <a href="" class="d-flex align-items-center">
                                    <div class="avatar me-2">
                                        <img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="" style="width: 30px;height:30px; border-radius:50%" alt="">
                                    </div>
                                    <h4>Demo</h4>
                                </a>
                            </div>
                            
                        </div> 
                        
        </div>
    </div> <!-- Widget End -->
</aside>



<?php /**PATH D:\laragon\www\social-media-comunity\resources\views/frontend/profileright_sidebar.blade.php ENDPATH**/ ?>