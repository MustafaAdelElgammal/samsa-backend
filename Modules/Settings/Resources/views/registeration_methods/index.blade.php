@extends('layouts.admin')
@section('title') {{ __('submission type') }} @endsection

@section('content')
@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('submission type'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

     <div class="card">
        <div class="card-header">
            <a class="btn btn-relief-primary mr-1 mb-1 waves-effect waves-light" href="{{route('registeration-methods.create')}}"><i class="ik ik-plus-circle"></i> {{ __('create') }} </a>
        </div>
        <div class="card-content">
            <div class="table-responsive">
                @include('settings::registeration_methods.table')
            </div>
        </div>
    </div>
@endsection
