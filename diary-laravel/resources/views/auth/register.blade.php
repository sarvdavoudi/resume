@extends('layouts.app')
@section('style')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
@endsection
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h4>{{ __('دفترچه خاطرات انلاین') }}</h4>
                <p class="project">پروژه ی پایانی طراحی وب دانشکده فنی دختران دکتر شریعتی</p>

                <form method="POST" action="{{ route('register') }}">
                    @csrf

                    <div class="form-group row justify-content-center" style="margin-top: 50px">
                        <div class="col-md-8">
                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                                   placeholder="نام" name="name" value="{{ old('name') }}" required autocomplete="name"
                                   autofocus>

                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row justify-content-center">
                        <div class="col-md-8">
                            <input id="username" type="username"
                                   class="form-control @error('username') is-invalid @enderror"
                                   placeholder=" نام کاربری" name="username" value="{{ old('username') }}"
                                   autocomplete="username">
                            <!--blade syntax-->

                        @error('username')  <!--for validation/username shouldn't to be empty if was empty show message-->
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row justify-content-center">
                        <div class="col-md-8">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                   placeholder="ایمیل" name="email" value="{{ old('email') }}" required
                                   autocomplete="email">

                            @error('email')
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
                                   name="password" required autocomplete="new-password">

                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row justify-content-center">
                        <div class="col-md-8">
                            <input id="password-confirm" type="password" class="form-control"
                                   placeholder="تکرار کلمه عبور" name="password_confirmation" required
                                   autocomplete="new-password">
                        </div>
                    </div>

                    <div class="row justify-content-center" style="margin-top: 50px">
                            <button type="submit" class="btn btn-primary">
                                {{ __('ثبت نام') }}
                            </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
