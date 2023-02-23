<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @yield('title')
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="entete">
                    {{ $pageTitle ?? "titre de la page"}}
                </h1>
            </div>
                @yield('contenu')

        </div>
    </div>
</body>

</html>


