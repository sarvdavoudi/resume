@extends ('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
@endsection

@section ('content')

@if($errors->any())
<div class="alert alert-danger">
   <ul>
       @foreach($errors->all() as $error)
        <li> {{$error}}</li>
       @endforeach

   </ul>
</div>
@endif


<div class="container">
    <div class="row justify-content-center ">
        <div class="col-md-6">
                <h4> ثبت خاطره جدید</h4>
    <form action="{{ route('posts.store') }}" enctype="multipart/form-data" method="post" style="margin-top: 40px">
        @csrf <!--use csrf token for security of form-->
            <div class="form-group">
                    <input id="caption" type="text" class="form-control @error('caption') is-invalid @enderror" name="caption" value="{{ old('caption') }}"  autocomplete="caption" autofocus  placeholder="عنوان خاطره...">
           </div>

            <div class="form-group">
                <textarea class="form-control text-justify space-normal" name="diary" id="diary" placeholder="متن خاطره..." rows="10"></textarea>
            </div>

            <div class="row justify-content-center">
                <div> <a href="{{ route('posts.index') }} " class="btn btn-primary together">بازگشت</a></div>
            <button class="btn btn-primary together" type="submit" value="add">ثبت</button>
            </div>

    </form>
</div>
@endsection
