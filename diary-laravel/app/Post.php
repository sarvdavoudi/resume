<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    
    protected $fillable = [ 'user_id','caption','diary' ];
    //or
    //protected $guarded =[];  
    
    
    
   public function User()
   {
       return $this->belongsTo(User::class);
   }
}
