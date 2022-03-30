


<?php $__env->startSection('template_fastload_css'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="container">
        <div class="row">
            <div class="col-12 col-xl-10 offset-xl-1">
                <div class="card">

                    <div class="card-header">
                        <div class="float-left">
                           Add SellOrders
                        </div>
                        <div class="float-right">
                            <a href="<?php echo e(url('/themes/')); ?>" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="<?php echo e(trans('themes.backToThemesTt')); ?>">
                                <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                Back to Sellorders
                            </a>
                        </div>
                    </div>


                    <?php echo Form::open(array('action' => 'SellorderController@store', 'method' => 'POST', 'role' => 'form')); ?>


                        <?php echo csrf_field(); ?>


                        <div class="card-body">

                            <div class="form-group has-feedback row <?php echo e($errors->has('link') ? ' has-error ' : ''); ?>">
                                <?php echo Form::label('Name','Name', array('class' => 'col-md-3 control-label')); ?>

                                <div class="col-md-9">
                                    <div class="input-group">
                                        <?php echo Form::text('name', null, array('id' => 'name', 'class' => 'form-control')); ?>

                                       
                                    </div>
                                    <?php if($errors->has('name')): ?>
                                        <span class="help-block">
                                            <strong><?php echo e($errors->first('name')); ?></strong>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            </div>
                        

                            <div class="form-group has-feedback row <?php echo e($errors->has('link') ? ' has-error ' : ''); ?>">
                                <?php echo Form::label('Price','Price', array('class' => 'col-md-3 control-label')); ?>

                                <div class="col-md-9">
                                    <div class="input-group">
                                        <?php echo Form::text('price', 0, array('id' => 'price', 'class' => 'form-control')); ?>

                                       
                                    </div>
                                    <?php if($errors->has('price')): ?>
                                        <span class="help-block">
                                            <strong><?php echo e($errors->first('price')); ?></strong>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            
                            </div>

                            <div class="form-group has-feedback row <?php echo e($errors->has('link') ? ' has-error ' : ''); ?>">
                                <?php echo Form::label('Qty','Qty', array('class' => 'col-md-3 control-label')); ?>

                                <div class="col-md-9">
                                    <div class="input-group">
                                        <?php echo Form::text('qty', 0, array('id' => 'qty', 'class' => 'form-control','onchange' => 'calc()')); ?>

                                       
                                    </div>
                                    <?php if($errors->has('qty')): ?>
                                        <span class="help-block">
                                            <strong><?php echo e($errors->first('qty')); ?></strong>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            
                            </div>

                            <div class="form-group has-feedback row <?php echo e($errors->has('link') ? ' has-error ' : ''); ?>">
                                <?php echo Form::label('Total','Total', array('class' => 'col-md-3 control-label')); ?>

                                <div class="col-md-9">
                                    <div class="input-group">
                                        <?php echo Form::text('total', null, array('id' => 'total', 'class' => 'form-control','readonly')); ?>

                                       
                                    </div>
                                    <?php if($errors->has('total')): ?>
                                        <span class="help-block">
                                            <strong><?php echo e($errors->first('total')); ?></strong>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            
                            </div>
</div>

                       

                        <div class="card-footer">
                            <div class="row">
                                <div class="col-sm-6 offset-sm-6">
                                    <?php echo Form::button('<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add Sellorders', array('class' => 'btn btn-success btn-block mb-0','type' => 'submit', )); ?>

                                </div>
                            </div>
                        </div>

                    <?php echo Form::close(); ?>


                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer_scripts'); ?>

  <?php echo $__env->make('scripts.toggleStatus', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function calc()
    {
      var value1 = document.getElementById('price').value;
      var value2 = document.getElementById('qty').value;
     

      var result = (value1*value2);
      document.getElementById('total').value = "" +result;
    }
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\subhashini\tradeindia\resources\views/sellordermanagement/add-sellorders.blade.php ENDPATH**/ ?>