

<?php $__env->startSection('template_title'); ?>
    Trades Avaliable
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
                
              
                 My Wallet Amount :   <?php echo e($user_wallet); ?>       
                           
                <div class="table-responsive themes-table">
                    <table class="table table-striped table-sm data-table">
                        <thead class="thead-dark">
                            <tr>
                               
                                <th>Name</th>
                                <th>Price</th>
                                <th>Qty</th>
                                <th class="hidden-xs hidden-sm hidden-md">Total</th>
                                <th>Status</th>
                                <th>Buying QTY</th>
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
                                    <?php echo Form::open(array('action' => 'BuyorderController@store', 'method' => 'POST', 'role' => 'form')); ?>


                                            <?php echo csrf_field(); ?>

                                            <?php echo e(Form::text('buyqty-'.$orders->id, null, array('id' => 'buyqty-'.$orders->id,'onblur' => 'calc('.$orders->id.')'))); ?>

                                            <?php echo e(Form::hidden('sellername-'.$orders->id, $orders->name, array('id' => 'sellername-'.$orders->id))); ?>

                                            <?php echo e(Form::hidden('sellorderid-'.$orders->id, $orders->id, array('id' => 'sellorderid-'.$orders->id))); ?>

                                            <?php echo e(Form::hidden('orderid', $orders->id)); ?>

                                            

                                            <?php echo e(Form::hidden('sellerprice-'.$orders->id, $orders->price, array('id' => 'sellerprice-'.$orders->id))); ?>

                                            <?php echo e(Form::hidden('sellerqty-'.$orders->id, $orders->qty, array('id' => 'sellerqty-'.$orders->id))); ?>


                                           
                                            <?php echo Form::button('<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Buy Trade', array('class' => 'btn btn-success','type' => 'submit', )); ?>

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
    <?php echo $__env->make('scripts.toggleStatus', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function calc(id)
    {
        
        var sqty= 'sellerqty-'+id;
        var bqty= 'buyqty-'+id;
      
      var sellerqty = document.getElementById(sqty).value;      
      var qty = document.getElementById(bqty).value;
          // alert(qty+'----'+sellerqty)
            if (parseInt(qty) > parseInt(sellerqty)) {
                alert('please enter valid qty');
                document.getElementById(bqty).value ='';
            }  
     
     
    }
    </script>
  
 
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\subhashini\tradeindia\resources\views/sellordermanagement/show-trades.blade.php ENDPATH**/ ?>