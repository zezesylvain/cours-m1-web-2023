@extends('template', ['pageTitle' => 'Inscription Etudiant'])

@section('title')
    <title>
        Inscription des étudiants
    </title>
@endsection


@section('contenu')

    @livewire('inscrption-etudiant')
@endsection
