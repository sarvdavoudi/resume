<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded =[]; //for solve the development error . because we want send data with model so model must have parameters

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
