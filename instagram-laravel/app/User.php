<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'username', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
     

    //define boot value 
    protected static function boot()
    {
        parent::boot();

        static::created(function ($user) { //created is an event we can use the other events form table that exist in laravel document
            $user->profile()->create([
                    'title' => $user->username,
                ]);
        });
    }

    public function posts()
    {
        return $this->hasMany(Post::class)->orderBy('created_at' , 'DESC');
    }

    public function profile()
    {
        return $this->hasOne(Profile::class);
    }

}
