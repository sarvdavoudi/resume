@extends('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
@endsection
@section('content')


<body>
<div class="container">
<div class="row justify-content-center">
<div class="sabt"><a href="{{ route('posts.create') }} ">ثبت خاطره جدید</a><i class="fas fa-plus"></i></div>
</div>
<style>
  .uper {
    margin-top: 70px;
  }
</style>
<div class="uper">
  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}
    </div><br />
  @endif
      <div class="row justify-content-center">
          <div class="col-md-10">
               <div class="row justify-content-center">
                  @foreach($posts as $post)
                      <div class="col-md-5 show1">
                          <p style="float: right">{{$post->caption}}</p>
                          <p>{{verta($post->created_at)}}</p>
                          <div class="row" style="padding: 5px">
                              <div class="col-4" style="padding: 0;">
                                  <div class="btn btn-primary br" >
                                      <button class="white"><a href="{{ route('posts.show',$post->id)}}" class="white1">نمایش</a></button>
                                  </div>
                              </div>
                              <div class="col-4" style="padding: 0">
                                  <div class="btn btn-primary br">
                                      <button class="white"><a href="{{ route('posts.edit',$post->id)}}" class="white1">ویرایش</a></button>
                                  </div>
                              </div>
                              <div class="col-4" style="padding: 0">
                                  <div class="btn btn-primary br">
                                  <form action="{{ route('posts.destroy', $post->id)}}" method="post" style="padding: 0">
                                      @csrf
                                      @method('DELETE')
                                      <button type="submit" class="white">حذف</button>
                                  </form>
                                  </div>
                              </div>
                          </div>
                      </div>
                    @endforeach
               </div>
          </div>
      </div>
    </tbody>
  </table>
<div>
</div>
</div>
</div>







</body>
</html>
@endsection




