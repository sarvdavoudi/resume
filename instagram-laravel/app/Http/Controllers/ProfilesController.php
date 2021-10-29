<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class ProfilesController extends Controller
{
    public function show($user)
    {
         $user = User::findOrFail($user);
        return view('profiles.show' , compact ('user'));
    }
    public function edit(User $user)
    {
$this->authorize('update' , $user->profile); //authorize call the policy /update refer to update method in this controller                                                  

        return view('profiles.edit' , compact ('user'));
    }

    public function update(User $user) 
    {

    $this->authorize('update' , $user->profile);  //authorize call the policy
    
       $data = request()->validate([

        'title' => 'required' ,
        'description' => 'required' ,
        'url' => 'url' ,
        'image' =>'',
       ]
       );


       //if image was exist save it in imagepath 
       if ( request('image')) {
           
           $imagePath = request('image')->store('profile' , 'public');           
        }
        
       // this code use to dont pass the image empty in time of update the other field so will merge existing image with other filed
        auth()->user()->profile->update(array_merge (
            $data,
            ['image' => $imagePath]
        ));


       return redirect ("/profile/{$user->id}");
    }
}
