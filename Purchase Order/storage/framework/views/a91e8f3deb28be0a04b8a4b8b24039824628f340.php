

<?php $__env->startSection('page'); ?>

    
    <?php echo $__env->yieldContent('content'); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
    <?php echo e(Html::style(mix('assets/auth/css/auth.css'))); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\temp\New folder\Purchase Order\resources\views/auth/layouts/auth.blade.php ENDPATH**/ ?>