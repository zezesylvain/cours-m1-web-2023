@extends('template')

@section('title')
    <title>
        Lieste des UEs
    </title>
@endsection


@section('contenu')
<ol>
    @foreach ($donnees as $r)
        <li> {{ $r['nom'] }} ({{ $r['code'] }})
            @if(count($r['ecues']))
                <ul>
                    @foreach ($r['ecues'] as $ecue)
                        <li>
                            {{ $ecue['nom'] }} (CM => {{ $ecue['cm'] }}h)
                        </li>
                    @endforeach
                </ul>
            @endif
        </li>
    @endforeach
</ol>
@endsection
