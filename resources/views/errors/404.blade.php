@extends('master.front')
@section('title')
    {{__('Page Not Found')}}
@endsection

@section('content')
    
    <section class="fourzerofour pt-4 my-5">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="content text-center">
                <h3 class="heading">
                  {{ __('404 | Not Found') }}
                </h3>
                <p class="text">
                  {{ __('The resource request could not be found !') }}
                </p>
                <a class="btn btn-primary brn-sm" href="{{ route('front.index') }}">{{ __('Back Home') }}</a>
              </div>
            </div>
          </div>
        </div>
      </section>
@endsection


