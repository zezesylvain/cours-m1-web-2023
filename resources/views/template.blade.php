<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @yield('title')
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
    <script src="//unpkg.com/alpinejs" defer></script>
    @livewireStyles()
</head>

<body>
    <div class="container-fluid">
        <div style="background-color: blue; height:10.0em;">

        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12" style="text-align: center; font-size:1.4em">
                <a href="{{ route('home') }}"> Accueil</a>-
                <a href="{{ route('inscription') }}"> Inscription</a>-
                <a href="{{ route('etudiant') }}"> Etudiant</a>
            </div>
            <div class="col-12">
                <h1 class="entete">
                    {{ $pageTitle ?? "titre de la page"}}
                </h1>
            </div>

                @yield('contenu')

        </div>
    </div>
    @livewireScripts()
</body>

</html>


