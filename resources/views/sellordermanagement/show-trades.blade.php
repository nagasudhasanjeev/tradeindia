@extends('layouts.app')

@section('template_title')
    Trades Avaliable
@endsection

@section('template_linked_css')
    @if(config('usersmanagement.enabledDatatablesJs'))
        <link rel="stylesheet" type="text/css" href="{{ config('usersmanagement.datatablesCssCDN') }}">
    @endif
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
@endsection

@section('content')
    <div class="container-fluid">
    <div class="row">
    <div class="col-sm-12">Sell Orders </div>
    </div>
        <div class="row">
            <div class="col-sm-12">
                
              
                 My Wallet Amount :   {{$user_wallet}}       
                           
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
                            @foreach($sellorders as $orders)
                                @php
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

                                    
                                @endphp
                                <tr>
                                    {{-- <td>{{$aTheme->id}}</td> --}}
                                    <td>
                                        <span class="label label-{{ $themeStatus['class'] }}">
                                        {{$orders->name}}
                                        </span>
                                    </td>
                                    <td>
                                       
                                        {{$orders->price}}
                                       
                                    </td>
                                    <td>{{$orders->qty}}</td>
                                    <td class="hidden-xs hidden-sm hidden-md">
                                    {{$orders->price*$orders->qty}}
                                       
                                    </td>
                                    <td>
                                    {{ $orderStatus['name'] }}
                                    </td>
                                    <td>
                                    {!! Form::open(array('action' => 'BuyorderController@store', 'method' => 'POST', 'role' => 'form')) !!}

                                            {!! csrf_field() !!}
                                            {{ Form::text('buyqty-'.$orders->id, null, array('id' => 'buyqty-'.$orders->id,'onblur' => 'calc('.$orders->id.')')) }}
                                            {{ Form::hidden('sellername-'.$orders->id, $orders->name, array('id' => 'sellername-'.$orders->id)) }}
                                            {{ Form::hidden('sellorderid-'.$orders->id, $orders->id, array('id' => 'sellorderid-'.$orders->id)) }}
                                            {{ Form::hidden('orderid', $orders->id) }}
                                            

                                            {{ Form::hidden('sellerprice-'.$orders->id, $orders->price, array('id' => 'sellerprice-'.$orders->id)) }}
                                            {{ Form::hidden('sellerqty-'.$orders->id, $orders->qty, array('id' => 'sellerqty-'.$orders->id)) }}

                                           
                                            {!! Form::button('<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Buy Trade', array('class' => 'btn btn-success','type' => 'submit', )) !!}
                                    {!! Form::close() !!}
                                       
                                    </td>
                                   
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>


            </div>
        </div>

    </div>
            

    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    @if ((count($sellorders) > config('usersmanagement.datatablesJsStartCount')) && config('usersmanagement.enabledDatatablesJs'))
        @include('scripts.datatables')
    @endif
    @include('scripts.toggleStatus')
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
  
 
@endsection
