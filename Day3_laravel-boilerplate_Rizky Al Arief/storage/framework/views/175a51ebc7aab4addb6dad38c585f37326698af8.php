

<?php $__env->startSection('title', __('views.admin.purchase.order.lines.index.title')); ?>

<?php $__env->startSection('content'); ?>
    <div class="row">
        <div class="col-md-12">
            <a href="<?php echo e(route('admin.purchase.order.lines.create')); ?>">
                <button>Create</button>
            </a>
        </div>
    </div>
    <div class="row">
        <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
               width="100%">
            <thead>
            <tr>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('product_id', __('views.admin.purchase.order.lines.index.table_header_0'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('qty',  __('views.admin.purchase.order.lines.index.table_header_1'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('price', __('views.admin.purchase.order.lines.index.table_header_2'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('discont', __('views.admin.purchase.order.lines.index.table_header_3'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('total', __('views.admin.purchase.order.lines.index.table_header_4'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('created_at', __('views.admin.purchase.order.lines.index.table_header_5'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('updated_at', __('views.admin.purchase.order.lines.index.table_header_6'),['page' =>$purchaseOrderLines->currentPage()]));?></th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php $__currentLoopData = $purchaseOrderLines; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $purchaseOrderLine): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($purchaseOrderLine->product_id); ?></td>
                    <td><?php echo e($purchaseOrderLine->qty); ?></td>
                    <td><?php echo e($purchaseOrderLine->price); ?></td>
                    <td><?php echo e($purchaseOrderLine->discont); ?></td>
                    <td><?php echo e($purchaseOrderLine->total); ?></td>
                    <td><?php echo e($purchaseOrderLine->created_at); ?></td>
                    <td><?php echo e($purchaseOrderLine->updated_at); ?></td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="<?php echo e(route('admin.purchase.order.lines.show', [$purchaseOrderLine->id])); ?>" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.purchase.order.lines.index.show')); ?>">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a class="btn btn-xs btn-info" href="<?php echo e(route('admin.purchase.order.lines.edit', [$purchaseOrderLine->id])); ?>" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.purchase.order.lines.index.edit')); ?>">
                            <i class="fa fa-pencil"></i>
                        </a>
                            <a href="<?php echo e(route('admin.purchase.order.lines.destroy', [$purchaseOrderLine->id])); ?>" class="btn btn-xs btn-danger user_destroy" data-toggle="tooltip" data-placement="top" data-title="<?php echo e(__('views.admin.purchase.order.lines.index.delete')); ?>">
                                <i class="fa fa-trash"></i>
                            </a>
                    </td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
        <div class="pull-right">
            <?php echo e($purchaseOrderLines->links()); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rizky\OneDrive\Documents\0 UPN INFORMATIKA\Maxy academy\day 3\Day3_laravel-boilerplate_Rizky Al Arief\resources\views/admin/purchaseOrderLines/index.blade.php ENDPATH**/ ?>