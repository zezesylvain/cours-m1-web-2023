@extends('template', ['pageTitle' => 'Programme du cours'])

@section('contenu')
    <div class="col-12">
        <ul class="list-group">
            <li class="list-group-item list-group-item-warning">
                <h2>Projets</h2>
                <ol>
                    <li>
                        <h3>Cours</h3>
                        <h4>Application de gestion des présences aux cours </h4>
                        <h4>Possibilité de définir un autre projet </h4>
                    </li>
                    <li>
                        <h3>MIAGE</h3>
                        <h4>Application à définir </h4>
                    </li>
                    <li>
                        <h3>GI</h3>
                        <h4>Application à définir </h4>
                    </li>
                </ol>
            </li>
            <li class="list-group-item list-group-item-success">
                <h2>
                    PHP avec son Framework Laravel plus son package Voyager
                </h2>
                <p>
                    Réaliser le projet WEB, le déployer.<br>
                    Il devra parfaitement communiquer avec son équivalent Mobile via des API.
                </p>
                <ul>
                    <li>
                        <h3>
                            Laravel
                        </h3>
                    </li>
                    <li>
                        <h4>
                            Voyager
                        </h4>
                    </li>
                    <li>
                        <h4>
                            Livewire
                        </h4>
                    </li>
                    <li>
                        <h4>
                            AlpineJs
                        </h4>
                    </li>
                </ul>
            </li>
            <li class="list-group-item list-group-item-info">
                <h2>
                    Mobile avec Flutter
                </h2>
                <p>
                    Définir ce que peut faire l'appli Mobile
                </p>
            </li>
        </ul>
        <div class="row">
            <div class="col-12">
                <h2>Listes des projets</h2>
                <ol>
                    <li>
                        Forum
                    </li>
                    <li>
                        Gestions de notes
                    </li>
                    <li>
                        Site de vente en ligne de produits alimentaires
                    </li>
                    <li>
                        Gestion de club de basket
                    </li>
                    <li>
                        Gestion d'un championnat de foot
                    </li>
                    <li>
                        Gestion d'une association
                    </li>
                    <li>
                        Paris sportif
                    </li>
                    <li>
                        Service traiteur
                    </li>
                    <li>
                        Gestion des absences et des retards
                    </li>
                    <li>
                        Gestion Livraisons
                    </li>
                    <li>
                        Location et vente Immobilière
                    </li>
                    <li>
                        Gestion de Parking
                    </li>
                    <li>
                        Billeterie de société de transport
                    </li>
                    <li>
                        Gestion du cahier de texte
                    </li>
                    <li>
                        Gestion d'une société de taxis
                    </li>
                    <li>
                        Gestion du personnel
                    </li>
                    <li>
                        Placement du personnel de maison
                    </li>
                    <li>
                        Reseau social Etudiant
                    </li>
                    <li>
                        Gestion de résidences et hotels
                    </li>
                    <li>
                        Gestion de bibliothèque
                    </li>
                    <li>
                        Billeterie pour des Events
                    </li>
                </ol>
            </div>
            <div class="col-12">
                php artisan make:model Ue -m
                php artisan migrate
                php artisan make:controller DataController

                php artisan make:migration create_table_etudiant_ue --table=etudiant_ue
            </div>
        </div>
    </div>

@endsection

@section('title')
<title>Cours de WEB Master 1 Gi & MIAGE 2022-2023</title>
@endsection
