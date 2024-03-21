<?php echo $__env->make('auth.layout.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
<style>
    .form-group input {
    padding-left: 8px !important;
    color: #949494;
    border: 2px solid #c4c4c4;
    background: transparent;
}
</style>
    <!-- Main Start -->
    <main class="main my-4 p-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="login-img">
                        <img class="img-fluid" src="<?php echo e(url('assets/frontend/images/login.png')); ?> " alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login-txt ms-0 ms-lg-5">
                        <h3><?php echo e(get_phrase('Sign Up')); ?></h3>
                        

                        <form action="<?php echo e(route('register_user')); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="#"><?php echo e(get_phrase('Full Name')); ?></label>
                                <input type="text" name="name" value="<?php echo e(old('name')); ?>" placeholder="<?php echo e(get_phrase('Your full name')); ?>">
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('name')); ?></p>
                            <div class="form-group">
                                <label for="#"><?php echo e(get_phrase('Username')); ?></label>
                                <input type="text" name="username" value="<?php echo e(old('username')); ?>" placeholder="<?php echo e(get_phrase('Your Username')); ?>">
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('username')); ?></p>
                            <div class="form-group ">
                                <label for="#"><?php echo e(get_phrase('Email')); ?></label>
                                <input type="email" name="email" value="<?php echo e(old('email')); ?>" placeholder="<?php echo e(get_phrase('Enter your email address')); ?>">
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('email')); ?></p>
                            <div class="form-group">
                                
                                <label for="#"><?php echo e(get_phrase('Phone')); ?></label>
                                <input type="number" name="phone" value="<?php echo e(old('phone')); ?>" placeholder="<?php echo e(get_phrase('Your Phone No')); ?>">
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('phone')); ?></p>
                            <div class="form-group">
                                <label for="#"><?php echo e(get_phrase('Password')); ?></label>
                                <input type="password" name="password" placeholder="<?php echo e(get_phrase('Your password')); ?>">
                            </div>

                            <div class="form-group ">
                                <label for="#"><?php echo e(get_phrase('Confirm Password')); ?></label>
                                <input type="password" name="password_confirmation" placeholder="<?php echo e(get_phrase('Confirm password')); ?>">
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('password')); ?></p>
                            <div class="form-group">
                                
                                <label for="#"><?php echo e(get_phrase('User Type')); ?></label>
                                <select name="user_type" class="form-control">
                                    <option disabled  selected  value="">Select User Type</option>
                                    <option   value="socializer">Socializer</option>
                                    <option   value="official">Official</option>
                                </select>
                            </div>
                            <p class="text-danger"><?php echo e($errors->first('user_type')); ?></p>
                            <input type="hidden" name="timezone" id="timezone" value="">
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" name="check1" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1"><?php echo e(get_phrase('I accept the')); ?> <a href="<?php echo e(route('term.view')); ?>"><?php echo e(get_phrase('Terms and Conditions')); ?></a></label>
                              </div>
                            <input class="btn btn-primary my-3 disabled" type="submit" name="submit" id="submit" value="Sign Up">

                        </form>

                    </div>
                </div>
            </div>

        </div> <!-- container end -->
    </main>
    <!-- Main End -->



<?php echo $__env->make('auth.layout.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\laragon\www\social-media-comunity\resources\views/auth/register.blade.php ENDPATH**/ ?>