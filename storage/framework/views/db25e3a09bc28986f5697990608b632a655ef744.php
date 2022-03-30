

<?php $__env->startSection('template_title'); ?>
    ALL Buy Orders
<?php $__env->stopSection(); ?>

<?php $__env->startSection('template_linked_css'); ?>
    <?php if(config('usersmanagement.enabledDatatablesJs')): ?>
        <link rel="stylesheet" type="text/css" href="<?php echo e(config('usersmanagement.datatablesCssCDN')); ?>">
    <?php endif; ?>
    <style type="text/css" media="screen">
        .users-table {
            border: 0;
        }
        .users-table tr td:first-child {
            padding-left: 15px;
        }
        .users-table tr td:last-child {
            padding-right: 15px;
        }
        .users-table.table-responsive,
        .users-table.table-responsive table {
            margin-bottom: 0;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
    <div class="row">
    <div class="col-sm-12">Buy Orders </div>
    </div>
        <div class="row">
            <div class="col-sm-12">                          
                <div class="table-responsive themes-table">
                    <table class="table table-striped table-sm data-table">
                        <thead class="thead-dark">
                            <tr>
                                
                                <th>Name</th>
                                <th>Price</th>
                                <th>Qty</th>
                                <th class="hidden-xs hidden-sm hidden-md">Total</th>
                                <th>Status</th>
                                <th></th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $buyorders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $orders): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    $themeStatus = [
                                        'name'  => trans('themes.statusDisabled'),
                                        'class' => 'danger'
                                    ];
                                    if($orders->status == 1) {
                                        $orderStatus = [
                                            'name'  => trans('themes.statusEnabled'),
                                            'class' => 'success'
                                        ];
                                    }

                                    
                                ?>
                                <tr>
                                    
                                    <td>
                                        <span class="label label-<?php echo e($themeStatus['class']); ?>">
                                        <?php echo e($orders->name); ?>

                                        </span>
                                    </td>
                                    <td>
                                       
                                        <?php echo e($orders->price); ?>

                                       
                                    </td>
                                    <td><?php echo e($orders->qty); ?></td>
                                    <td class="hidden-xs hidden-sm hidden-md">
                                    <?php echo e($orders->price*$orders->qty); ?>

                                       
                                    </td>
                                    <td>
                                    <?php echo e($orderStatus['name']); ?>

                                    </td>
                                    
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>


            </div>
        </div>

    </div>
            

    <?php echo $__env->make('modals.modal-delete', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer_scripts'); ?>
    <?php if((count($buyorders) > config('usersmanagement.datatablesJsStartCount')) && config('usersmanagement.enabledDatatablesJs')): ?>
        <?php echo $__env->make('scripts.datatables', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <?php echo $__env->make('scripts.delete-modal-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('scripts.save-modal-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  
 
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\subhashini\tradeindia\resources\views/buyordermanagement/show-buyorders.blade.php ENDPATH**/ ?>