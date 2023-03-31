@extends('voyager::master')
@section('head')
@livewireStyles
<script src="//unpkg.com/alpinejs" defer></script>
<script src="{{ asset('js.js') }}"></script>
@endsection
@section('content')
    <div class="page-content">
        @livewire('gestion-compte')
    </div>
@stop
@section('javascript')
    @livewireScripts
@stop
