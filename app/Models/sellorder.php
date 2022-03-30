<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sellorder extends Model
{
    use HasFactory;
    
    protected $table = 'sellorders';
    public $timestamps = true;

    protected $fillable = [
        'name' ,
        'price' ,
        'qty' ,
        'total' ,
        'status'      
    ];

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
