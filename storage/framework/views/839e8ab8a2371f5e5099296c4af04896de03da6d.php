

<?php $__env->startSection('template_title'); ?>
    ALL Sell Orders
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
    <div class="col-sm-12">Sell Orders </div>
    </div>
        <div class="row">
            <div class="col-sm-12">
                
                <a href="/sellorders/create" class="btn btn-outline-secondary btn-sm pull-right mb-2">
                    <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                    Add Sell Orders
                </a>
                           
                           
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
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $sellorders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $orders): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
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
                                    <td>
                                        <a class="btn btn-sm btn-info btn-block" href="<?php echo e(URL::to('sellorders/' . $orders->id . '/edit')); ?>" data-toggle="tooltip" title="<?php echo e(trans('themes.themesBtnEdit')); ?>">
                                            <i class="fa fa-pencil fa-fw" aria-hidden="true"></i>
                                            <span class="sr-only"><?php echo e(trans('themes.themesBtnEdit')); ?></span>
                                        </a>
                                    </td>
                                    <td>
                                        <?php echo Form::open(array('url' => 'sellorders/' . $orders->id.'/delete', 'class' => '', 'data-toggle' => 'tooltip', 'title' => 'Delete Theme')); ?>

                                            <?php echo Form::hidden('_method', 'DELETE'); ?>

                                            <?php echo Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i> <span class="sr-only">Delete sellorder</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Confirm delete', 'data-message' => 'Confirm delete')); ?>

                                        <?php echo Form::close(); ?>

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
    <?php if((count($sellorders) > config('usersmanagement.datatablesJsStartCount')) && config('usersmanagement.enabledDatatablesJs')): ?>
        <?php echo $__env->make('scripts.datatables', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <?php echo $__env->make('scripts.delete-modal-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('scripts.save-modal-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  
 
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\subhashini\tradeindia\resources\views/sellordermanagement/show-orders.blade.php ENDPATH**/ ?>