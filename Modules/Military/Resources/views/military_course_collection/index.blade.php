@extends('layouts.admin')
@section('title') {{ __('military course collection') }} @endsection

@section('content')
@php
$links = [
['name' => __('home'), 'url' => url('/')],
['name' => __('military course collection'), 'active' => true],
];
@endphp
@include('layouts.breadcrumb', ['links' => $links])

     <div class="card">
        <div class="card-header">
            <a class="btn btn-relief-primary mr-1 mb-1 waves-effect waves-light" href="{{route('military-course-collection.create')}}"><i class="ik ik-plus-circle"></i>{{ __('create') }}</a>
        </div>
        <div class="card-content">
            <div class="table-responsive">
                @include('military::military_course_collection.table')
            </div>
        </div>
    </div>

@endsection

@section('more_scripts')

<script>
   @if (request()->id)
       $('#studentModal').modal('show');
   @endif
    
</script>
@endsection