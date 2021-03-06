<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Animal extends Model
{

    use HasFactory;
    protected $casts  = [
        'user_encontrou'=>'array'
    ];
    protected $dates = ['date'];
    protected $guarded = [];
    public function user(){
        return $this->belongsTo('App\Models\User');
    }
}
