@extends('layouts.app')

@section('template_title')
    ALL Buy Orders
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
    <div class="col-sm-12">Buy Orders </div>
    </div>
        <div class="row">
            <div class="col-sm-12">                          
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
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($buyorders as $orders)
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
    @if ((count($buyorders) > config('usersmanagement.datatablesJsStartCount')) && config('usersmanagement.enabledDatatablesJs'))
        @include('scripts.datatables')
    @endif
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
  
 
@endsection
