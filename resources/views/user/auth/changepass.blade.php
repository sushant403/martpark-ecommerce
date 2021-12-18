@extends('master.front')

@section('content')
<!-- Page Title-->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="breadcrumbs">
                    <li><a href="{{route('front.index')}}">{{__('Home')}}</a> </li>
                    <li class="separator"></li>
                    <li>{{__('Password Reset')}}</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Page Content-->
<div class="container padding-bottom-3x mb-1">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <form class="card mt-4" action="{{ route('user.change.password') }}" method="POST">
                @csrf
                <div class="card-body">
                    <h4 class="d-block text-center mb-4">{{__('Reset Your Password Here')}}</h4>
                    @include('alerts.alerts')
                    <div class="form-group">
                        <label for="new_password">{{ __('New Password') }}</label>
                        <input id="new_password" name="new_password" type="password" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="renew_password">{{ __('Re-Type New Password') }}</label>
                        <input id="renew_password" name="renew_password" type="password" class="form-control">
                    </div>

                    <input type="hidden" name="file_token" value="{{ $token }}">

                    <div class="form-action mb-3">
                        <button type="submit" class="btn btn-primary btn-sm btn-login">{{ __('Change Password') }}</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>


@endsection