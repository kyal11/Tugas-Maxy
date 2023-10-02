

<?php $__env->startSection('title',__('views.admin.puchase.order.lines.create.title')); ?>

<?php $__env->startSection('content'); ?>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <?php echo e(Form::open(['route'=>['admin.purchase.order.lines.create'],'method' => 'post','class'=>'form-horizontal form-label-left'])); ?>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product">
                        <?php echo e(__('views.admin.puchase.order.lines.create.product')); ?>

                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <select id="product'" name="product" class="select2" style="width: 100%" autocomplete="off">
                            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($product->id); ?>"><?php echo e($product->product_name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qty" >
                        <?php echo e(__('views.admin.puchase.order.lines.create.qty')); ?>

                        <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="qty" type="text" class="form-control col-md-7 col-xs-12 <?php if($errors->has('qty')): ?> parsley-error <?php endif; ?>"
                               name="qty" required>
                        <?php if($errors->has('qty')): ?>
                            <ul class="parsley-errors-list filled">
                                <?php $__currentLoopData = $errors->get('qty'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li class="parsley-required"><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        <?php endif; ?>
                    </div>
                </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="price" >
                            <?php echo e(__('views.admin.puchase.order.lines.create.price')); ?>

                            <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="price" type="text" class="form-control col-md-7 col-xs-12 <?php if($errors->has('price')): ?> parsley-error <?php endif; ?>"
                                   name="price" required>
                            <?php if($errors->has('price')): ?>
                                <ul class="parsley-errors-list filled">
                                    <?php $__currentLoopData = $errors->get('price'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li class="parsley-required"><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            <?php endif; ?>
                        </div>
                    </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discont" >
                                <?php echo e(__('views.admin.puchase.order.lines.create.discont')); ?>

                                <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="discont" type="text" class="form-control col-md-7 col-xs-12 <?php if($errors->has('')): ?> parsley-error <?php endif; ?>"
                                       name="discont" required>
                                <?php if($errors->has('discont')): ?>
                                    <ul class="parsley-errors-list filled">
                                        <?php $__currentLoopData = $errors->get('discont'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="parsley-required"><?php echo e($error); ?></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                <?php endif; ?>
                            </div>
                        </div>

                
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <a class="btn btn-primary" href="<?php echo e(URL::previous()); ?>"> <?php echo e(__('views.admin.puchase.order.lines.create.cancel')); ?></a>
                        <button type="submit" class="btn btn-success"> <?php echo e(__('views.admin.puchase.order.lines.create.save')); ?></button>
                    </div>
                </div>
            <?php echo e(Form::close()); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
    <?php echo \Illuminate\View\Factory::parentPlaceholder('styles'); ?>
    <?php echo e(Html::style(mix('assets/admin/css/users/edit.css'))); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <?php echo \Illuminate\View\Factory::parentPlaceholder('scripts'); ?>
    <?php echo e(Html::script(mix('assets/admin/js/users/edit.js'))); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\temp\New folder\Day4_laravel-boilerplate_Rizky Al Arief\resources\views/admin/purchaseOrderLines/create.blade.php ENDPATH**/ ?>