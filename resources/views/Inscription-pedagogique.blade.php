@extends('template', ['pageTitle' => 'Inscription Etudiant'])

@section('title')
    <title>
        Inscription des étudiants
    </title>
@endsection


@section('contenu')

    @livewire('inscription-pedagogique')
@endsection
