@extends('layouts.app')


@section('template_fastload_css')
@endsection

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-12 col-xl-10 offset-xl-1">
                <div class="card">

                    <div class="card-header">
                        <div class="float-left">
                       
                            <strong>Edit </strong> {{ $sellorder->name }}
                        
                        </div>
                        <div class="float-right">
                            <a href="{{ url('/sellorders/') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="{{ trans('themes.backToThemesTt') }}">
                                <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                Back to Sellorders
                            </a>
                        </div>
                    </div>

                    {!! Form::model($sellorder, array('action' => array('SellorderController@update', $sellorder->id), 'method' => 'PUT')) !!}


                        {!! csrf_field() !!}

                        <div class="card-body">

                            <div class="form-group has-feedback row {{ $errors->has('link') ? ' has-error ' : '' }}">
                                {!! Form::label('Name','Name', array('class' => 'col-md-3 control-label')); !!}
                                <div class="col-md-9">
                                    <div class="input-group">
                                        {!! Form::text('name',  $sellorder->name, array('id' => 'name', 'class' => 'form-control')) !!}
                                       
                                    </div>
                                    @if ($errors->has('name'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                        

                            <div class="form-group has-feedback row {{ $errors->has('link') ? ' has-error ' : '' }}">
                                {!! Form::label('Price','Price', array('class' => 'col-md-3 control-label')); !!}
                                <div class="col-md-9">
                                    <div class="input-group">
                                        {!! Form::text('price',  $sellorder->price, array('id' => 'price', 'class' => 'form-control')) !!}
                                       
                                    </div>
                                    @if ($errors->has('price'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('price') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            
                            </div>

                            <div class="form-group has-feedback row {{ $errors->has('link') ? ' has-error ' : '' }}">
                                {!! Form::label('Qty','Qty', array('class' => 'col-md-3 control-label')); !!}
                                <div class="col-md-9">
                                    <div class="input-group">
                                        {!! Form::text('qty',  $sellorder->qty, array('id' => 'qty', 'class' => 'form-control','onchange' => 'calc()')) !!}
                                       
                                    </div>
                                    @if ($errors->has('qty'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('qty') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            
                            </div>

                            <div class="form-group has-feedback row {{ $errors->has('link') ? ' has-error ' : '' }}">
                                {!! Form::label('Total','Total', array('class' => 'col-md-3 control-label')); !!}
                                <div class="col-md-9">
                                    <div class="input-group">
                                        {!! Form::text('total',  $sellorder->total, array('id' => 'total', 'class' => 'form-control','readonly')) !!}
                                       
                                    </div>
                                    @if ($errors->has('total'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('total') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            
                            </div>
</div>

                       

                        <div class="card-footer">
                            <div class="row">
                                <div class="col-sm-6 offset-sm-6">
                                    {!! Form::button('<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;update Sellorders', array('class' => 'btn btn-success btn-block mb-0','type' => 'submit', )) !!}
                                </div>
                            </div>
                        </div>

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>

@endsection

@section('footer_scripts')

  @include('scripts.toggleStatus')
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

@endsection
