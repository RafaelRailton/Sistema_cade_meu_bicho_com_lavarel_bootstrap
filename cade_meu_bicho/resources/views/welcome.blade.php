@extends('layouts.main')


@section('title','Cadê meu Bicho')

@section('content')

<div id="search-container" class="col-md-12">
    <h1>Busque pelo nome do Animal</h1>
    <form action="/" method="GET">
        <div style="display: flex;">
            <input type="text" id="search" name="search" class="form-control" placeholder="Procurar nome...">
            <input type="submit" class="btn btn-warning" value="Pesquisar">
        </div>
    </form>
</div>
<div id="animals-container" class="col-md-12">
    @if($search)
    <h2>Buscando por: {{$search}}</h2>
    @else
    <h2>Animais Perdidos</h2>
    <p class="subtitle">Lista de Todos os Animais Cadastrados</p>
    @endif

    <div id="cards-container" class="row">
        @foreach($animals as $animal)
        <div class="card col-md-3">
            <img src="/img/animals/{{$animal->foto}}" alt="{{$animal->nome}}">
            <div class="card-body">
                <p class="card-date">Perdido em {{date('d/m/Y',strtotime($animal->date))}}</p>
                <h5 class="card-title">{{$animal->nome}}</h5>
                @if($animal->status !=1)
                <a href="/animals/{{$animal->id}}" class="btn btn-warning">Informações</a>
                @else
                <a href="/animals/{{$animal->id}}" class="btn btn-success">Encontrado</a>
                @endif
            </div>
        </div>
        @endforeach
        @if(count($animals) == 0 && $search )
        <p>Não foi possível econtrar nenhum animal com {{$search}}!</p> <a href="/">Ver Todos Animais</a>
        @elseif(count($animals) == 0)
        <p>Não há Animais Cadastrados</p>
        @endif
     <div class="pagination">
        {{$animals->links()}}
    </div>
    
</div>
@endsection