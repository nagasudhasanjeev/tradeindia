<?php

namespace App\Http\Controllers;

use App\Models\sellorder;
use App\Models\user;
use App\Models\userWallet;
use Auth;
use Illuminate\Http\Request;


use Validator;

class SellorderController extends Controller
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
           $sellorders = sellorder::where('status',1)->orderby('id','desc')->paginate(config('usersmanagement.paginateListSize'));
        } else {
            $sellorders = sellorder::where('status',1)->orderby('id','desc')->all();
        }
        
      //  return view('themesmanagement.add-theme');
        return View('sellordermanagement.show-orders', compact('sellorders'));
    }



    public function list()
    {
       
         $user_wallet = userWallet::where('user_id',Auth::id())->first();
        $user_wallet =$user_wallet->wallet;
        $paginationEnabled = config('usersmanagement.enablePagination');
        if ($paginationEnabled) {
           $sellorders = sellorder::where('status',1)->orderby('id','desc')->paginate(config('usersmanagement.paginateListSize'));
        } else {
            $sellorders = sellorder::where('status',1)->orderby('id','desc')->all();
        }
        
      //  return view('themesmanagement.add-theme');
        return View('sellordermanagement.show-trades', compact('sellorders','user_wallet'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sellordermanagement.add-sellorders');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->only('name', 'price', 'qty');

        $validator = Validator::make($input, sellorder::rules());

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $sellorder = sellorder::create([
            'name'          => $request->input('name'),
            'price'          => $request->input('price'),
            'qty'         => $request->input('qty'),
            'total'        => $request->input('total'),
            
        ]);

        
        $sellorder->save();

        return redirect('sellorders/')->with('success', 'Sellerorder Created Sucessfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\sellorder  $sellorder
     * @return \Illuminate\Http\Response
     */
    public function show(sellorder $sellorder)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\sellorder  $sellorder
     * @return \Illuminate\Http\Response
     */
    public function edit(sellorder $sellorder)
    {

       // return $sellorder;
        //= sellorder::where('id', $sellorder->id);
        return View('sellordermanagement.edit-sellorders', compact('sellorder'));
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\sellorder  $sellorder
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, sellorder $sellorder)
    {
        $input = $request->only('name', 'price', 'qty', 'total');

        $validator = Validator::make($input, sellorder::rules($sellorder->id));

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
//return $sellorder;
        $orders = sellorder::find($sellorder->id);
            $orders->name = $request->input('name');  
            $orders->price = $request->input('price');   
            $orders->qty = $request->input('qty'); 
            $orders->total = $request->input('total');            
            $orders->save();

       // $sellorder->fill($input)->save();

        return redirect('sellorders/')->with('success', 'Sellorders update success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\sellorder  $sellorder
     * @return \Illuminate\Http\Response
     */
    public function destroy(sellorder $sellorder)
    {
        $orders = sellorder::find($sellorder->id);
              
        $orders->delete();
        return redirect('sellorders/')->with('success', 'Sellerorder deleted Sucessfully');
    }
}
