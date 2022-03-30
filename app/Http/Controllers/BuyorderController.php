<?php

namespace App\Http\Controllers;

use App\Models\buyorder;
use App\Models\sellorder;
use App\Models\userWallet;
use Illuminate\Http\Request;
use Auth;
use Validator;

class BuyorderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       

        $paginationEnabled = config('usersmanagement.enablePagination');
        if ($paginationEnabled) {
           $buyorders = buyorder::where('status',1)->where('user_id',Auth::id())->orderby('id','desc')->paginate(config('usersmanagement.paginateListSize'));
        } else {
            $buyorders = buyorder::where('status',1)->where('user_id',Auth::id())->orderby('id','desc')->all();
        }
        
      
        return View('buyordermanagement.show-buyorders', compact('buyorders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('buyordermanagement.add-buyorders');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // return $request;
        $orderid=$request->input('orderid');
       $buyertotal=$request->input('sellerprice-'.$orderid)*$request->input('buyqty-'.$orderid);
       $sellerqty = $request->input('sellerqty-'.$orderid) - $request->input('buyqty-'.$orderid);
       $sellertotal = $request->input('sellerprice-'.$orderid) * $sellerqty;

        $buyorder = buyorder::create([
            'user_id'       => Auth::id(),
            'name'          => $request->input('sellername-'.$orderid),
            'price'          => $request->input('sellerprice-'.$orderid),
            'qty'         => $request->input('buyqty-'.$orderid),
            'total'        => $buyertotal,            
        ]);        
        $buyorder->save();

        $sellerorder =sellorder::find($request->input('sellorderid-'.$orderid));
        $sellerorder->qty =$sellerqty;
        $sellerorder->total =$sellertotal;
        $sellerorder->save();

        $userwallet =userWallet::where('user_id',Auth::id())->first();
        $userwallet->wallet=$userwallet->wallet - $buyertotal;
        $userwallet->save();
        
        


        return redirect('trades/')->with('success', 'buyorder Created Sucessfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\buyorder  $buyorder
     * @return \Illuminate\Http\Response
     */
    public function show(buyorder $buyorder)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\buyorder  $buyorder
     * @return \Illuminate\Http\Response
     */
    public function edit(buyorder $buyorder)
    {

       // return $buyorder;
        //= buyorder::where('id', $buyorder->id);
        return View('buyordermanagement.edit-buyorders', compact('buyorder'));
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\buyorder  $buyorder
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, buyorder $buyorder)
    {
        $input = $request->only('name', 'price', 'qty', 'total');

        $validator = Validator::make($input, buyorder::rules($buyorder->id));

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
//return $buyorder;
        $orders = buyorder::find($buyorder->id);
            $orders->name = $request->input('name');  
            $orders->price = $request->input('price');   
            $orders->qty = $request->input('qty'); 
            $orders->total = $request->input('total');            
            $orders->save();

       // $buyorder->fill($input)->save();

        return redirect('buyorders/')->with('success', 'buyorders update success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\buyorder  $buyorder
     * @return \Illuminate\Http\Response
     */
    public function destroy(buyorder $buyorder)
    {
        $orders = buyorder::find($buyorder->id);
              
        $orders->delete();
        return redirect('buyorders/')->with('success', 'Sellerorder deleted Sucessfully');
    }
}
