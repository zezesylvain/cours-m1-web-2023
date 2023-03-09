@extends('template', ['pageTitle' => $pageTitle])

@section('contenu')
    <div class="col-12">
        <ul class="list-group">
            @foreach($data AS $etudiant)
                <li class="list-group-item list-group-item-warning">
                    {{ $etudiant['nce'] }} -
                    {{ $etudiant['nom'] }}
                    {{ $etudiant['prenoms'] }}
                </li>
            @endforeach
        </ul>

    </div>

@endsection

@section('title')
<title>Cours de WEB Master 1 Gi & MIAGE 2022-2023</title>
@endsection
