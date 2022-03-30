<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class userWallet extends Model
{
    use HasFactory;
     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'user_wallets';

    /**
     * The attributes that are not mass assignable.
     *
     * @var array
     */
    protected $guarded = [
        'id',
    ];

    /**
     * Fillable fields for a Profile.
     *
     * @var array
     */
    protected $fillable = [
        'currency',
        'wallet',
        
    ];

    
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class);
    }
}
