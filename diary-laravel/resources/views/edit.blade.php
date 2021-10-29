@extends('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
@endsection
@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="container">
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div><br/>
    @endif
    <div class="row justify-content-center ">
        <div class="col-md-6">
            <h4> ویرایش خاطره جدید</h4>
            <form method="post" action="{{ route('posts.update', $post->id) }}" style="margin-top: 40px">
                <div class="form-group">
                    @csrf
                    @method('PATCH')
                    <input type="text" class="form-control" name="caption" value="{{$post->caption}}"/>
                </div>
                <div class="form-group">

                        <textarea id="myTextarea" class="form-control" name="diary"
                                  rows="10">{{$post->diary}}</textarea>

                </div>
                <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary together">ویرایش</button>
                <div><a href="{{ route('posts.index') }} " class="btn btn-primary together">بازگشت</a></div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
