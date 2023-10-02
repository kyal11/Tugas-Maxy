

<?php $__env->startSection('body_class','login'); ?>

<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8-col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Set up Google Authenticator</div>

                <div class="panel-body" style="text-align: center;">
                    <?php if($errors == '1'): ?>
                        <div class="alert alert-danger">
                            Incorrect code! Please try again
                        </div>
                    <?php endif; ?>
                    <p>Set up yout two factor authentication by scanning the barcode below .Alternative you can use the code <?php echo e($data['google2fa_secret']); ?></p>
                    <div>
                        <?php echo $QR_Image; ?>

                    </div>
                    <p>You must set up your Google Authenticator app before continuing .you will be unable to logis otherwise</p>
                    <div class="col-md-8-col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">Google Authenticator Verification</div>
            
                            <div class="panel-body" style="text-align: center;">
                                <form method="POST" action="<?php echo e(route('2fa')); ?>">
                                   <?php echo e(csrf_field()); ?> 
                                    <p>Enter the Google Authenticator code from your mobile app:</p>
                                    <div class="form-group">
                                        <input type="number" name="google2fa_code" class="form-control" id="google2fa_code" required>
                                    </div>
                                    <div>
                                        <a><button type="submit" class="btn btn-primary">Verify</button></a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $__env->make('auth.layouts.auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\temp\New folder\Day9_laravel-boilerplate_Rizky Al Arief\resources\views/google2fa/register.blade.php ENDPATH**/ ?>