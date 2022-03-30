@extends('layouts.app')

@section('template_title')
    ALL Sell Orders
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
                
                <a href="/sellorders/create" class="btn btn-outline-secondary btn-sm pull-right mb-2">
                    <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                    Add Sell Orders
                </a>
                           
                           
                <div class="table-responsive themes-table">
                    <table class="table table-striped table-sm data-table">
                        <thead class="thead-dark">
                            <tr>
                                {{-- <th>ID</th> --}}
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
                                        <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('sellorders/' . $orders->id . '/edit') }}" data-toggle="tooltip" title="{{ trans('themes.themesBtnEdit') }}">
                                            <i class="fa fa-pencil fa-fw" aria-hidden="true"></i>
                                            <span class="sr-only">{{ trans('themes.themesBtnEdit') }}</span>
                                        </a>
                                    </td>
                                    <td>
                                        {!! Form::open(array('url' => 'sellorders/' . $orders->id.'/delete', 'class' => '', 'data-toggle' => 'tooltip', 'title' => 'Delete Theme')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i> <span class="sr-only">Delete sellorder</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Confirm delete', 'data-message' => 'Confirm delete')) !!}
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
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
  
 
@endsection
