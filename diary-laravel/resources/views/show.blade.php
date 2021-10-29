@extends ('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
@endsection
@section ('content')
<div class="container">

        <div class="row justify-content-center">
            <div class="col-md-8" style="margin-top: 40px">
            <h4> {{$post-> caption }} </h4>
            <p style="text-align: center">{{$post-> diary }}</p>
        <div style="text-align: center;margin-top: 50px"><a href="{{ route('posts.index') }} " class="btn btn-primary">بازگشت</a></div>
        </div>
</div>
</div>




@endsection
