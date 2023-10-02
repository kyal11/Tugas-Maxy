

<?php $__env->startSection('title', __('views.admin.products.index.title')); ?>

<?php $__env->startSection('content'); ?>
    <div class="row">
        <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
               width="100%">
            <thead>
            <tr>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('product_name', __('views.admin.products.index.table_header_0'),['page' => $products->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('product_code',  __('views.admin.products.index.table_header_1'),['page' => $products->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('price', __('views.admin.products.index.table_header_2'),['page' => $products->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('created_at', __('views.admin.products.index.table_header_3'),['page' => $products->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('updated_at', __('views.admin.products.index.table_header_4'),['page' => $products->currentPage()]));?></th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($product->product_name); ?></td>
                    <td><?php echo e($product->product_code); ?></td>
                    <td><?php echo e($product->price); ?></td>
                    <td><?php echo e($product->created_at); ?></td>
                    <td><?php echo e($product->updated_at); ?></td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="<?php echo e(route('admin.products.show', [$product->id])); ?>" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.products.index.show')); ?>">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a class="btn btn-xs btn-info" href="<?php echo e(route('admin.products.edit', [$product->id])); ?>" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.products.index.edit')); ?>">
                            <i class="fa fa-pencil"></i>
                        </a>
                            <a href="<?php echo e(route('admin.products.destroy', [$product->id])); ?>" class="btn btn-xs btn-danger user_destroy" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.products.index.delete')); ?>">
                                <i class="fa fa-trash"></i>
                            </a>
                    </td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
        <div class="pull-right">
            <?php echo e($products->links()); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\temp\New folder\Day4_laravel-boilerplate_Rizky Al Arief\resources\views/admin/products/index.blade.php ENDPATH**/ ?>