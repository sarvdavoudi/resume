@extends('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
@endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 center">
            <h4>{{ __('دفترچه خاطرات انلاین') }}</h4>
            <p class="project">پروژه ی پایانی طراحی وب دانشکده فنی دختران دکتر شریعتی</p>

            <form method="POST" action="{{ route('login') }}">
                @csrf


                <div class="form-group row justify-content-center" style="margin-top: 50px">
                    <div class="col-md-8">
                        <input id="username" type="username"
                               class="form-control @error('username') is-invalid @enderror" placeholder="نام کاربری"
                               name="username" value="{{ old('username') }}" required autocomplete="username" autofocus>

                        @error('username')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row justify-content-center">
                    <div class="col-md-8">
                        <input id="password" type="password"
                               class="form-control @error('password') is-invalid @enderror" placeholder="کلمه عبور"
                               name="password" required autocomplete="current-password">

                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row justify-content-center">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('ورود') }}
                                </button>
                            </div>
                            <div class="col-md-6">
                                <div class="form-check" style="float: right">
                                    <label class="remember">
                                        {{ __('مرا به خاطر بسپار') }}
                                    </label>
                                    <input type="checkbox" name="remember"
                                           id="remember" {{ old('remember') ? 'checked' : '' }}>
                                </div>
                            </div>
                        </div>
                        <p class="sabtenam">قبلا ثبت نام نکرده اید؟</p><a  href="{{ route('register') }}" class="register">ثبت نام کنید</a>
                    </div>
                </div>

            </form>
        </div>
    </div>

</div>
@endsection
