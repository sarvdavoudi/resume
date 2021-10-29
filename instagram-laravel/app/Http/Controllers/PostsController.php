<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostsController extends Controller
{

    public function __construct()  //user must be login then he can see the site . construct is a predefine method in laravel so we can use it
    {
            $this->middleware('auth');
    }

    public function create()
    {
        return view ('posts.create');
    }

    public function store()
    {

        $data = request()->validate([
            'caption' => 'required',
            'image' => [ 'required' , 'image'],
        ]);

        $imagePath = request('image')->store('uploads' , 'public'); //we just save the path of image in DB we dont save the image in DB .second argument refer to pubic folder 
        auth()->user()->posts()->create([  //just the person who has login can create post
            'caption' =>$data['caption'],
            'image' => $imagePath, //when user send an image ,image will be send in selected path ,NOt sent to DB
        ]);

            return redirect('/profile/' . auth()->user()->id);
    }

    public function show( \App\Post $post) {
        return view('posts.show', compact('post')); //compact means send 'post' parameter from controller to view ($post)
        //or
        //return view('posts.show', ['post'=>$post]); //first argument means load show file from posts folder in view, second argument means send 'post' parameter from controller to view ($post)

    }
}
