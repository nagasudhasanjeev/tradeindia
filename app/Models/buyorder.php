<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class buyorder extends Model
{
    use HasFactory;
    use HasFactory;
    
    protected $table = 'buyorders';
    public $timestamps = true;

    protected $fillable = [
        'user_id' ,
        'name' ,
        'price' ,
        'qty' ,
        'total' ,
        'status'      
    ];

    public function user()
    {
        return $this->belongsTo(\App\Models\User::class);
    }

    public static function rules($id = 0, $merge = [])
    {
        return array_merge(
            [
                'name'   => 'required|min:3|max:50|unique:themes,name'.($id ? ",$id" : ''),
                'price'   => 'required',
                'qty'  => 'max:500'                
            ],
            $merge
        );
    }

}
