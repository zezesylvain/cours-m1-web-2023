@extends('voyager::master')
@section('head')
@livewireStyles
<script src="//unpkg.com/alpinejs" defer></script>
<script src="{{ asset('js.js') }}"></script>
<link rel="stylesheet" href="{{ asset('vz.css') }}">
<link rel="stylesheet" src="{{ asset('js.js') }}">
@endsection
@section('content')
    <div class="page-content">
        @yield('contenu')
    </div>
@stop
@section('javascript')
@livewireScripts
@stop
