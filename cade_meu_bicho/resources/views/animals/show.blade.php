@extends('layouts.main')


@section('title',$animal->nome)

@section('content')
<div class="col-md-10 offset-md-1">
<div class="row">
<div id="image-container" class="col-md-6">
<img src="/img/animals/{{$animal->foto}}" class="img-fluid" alt="{{$animal->nome}}">
</div>
<div id="info-container" class="col-md-6">
<h1>{{$animal->nome}}</h1>
<p class="animal-city"><ion-icon name="location-outline"></ion-icon> {{$animal->cidade}}</p>
<p class="animal-owner"><ion-icon name="person-circle-outline"></ion-icon>{{$animalOwner['name']}}</p>
@if(!$animal->user_encontrou)
<p class="animal-owner"><ion-icon name="alert-outline"></ion-icon><span class="badge rounded-pill bg-secondary">Desaparecido(a)</span></p>
@else
@if($animal->status != 1)
<p class="animal-owner"><ion-icon name="alert-outline"></ion-icon><span class="badge rounded-pill bg-warning text-dark">Comunicado</span></p>
@else
<p class="animal-owner"><ion-icon name="alert-outline"></ion-icon><span class="badge rounded-pill bg-success">Encontrado</span></p>
@endif
@endif
@guest
@if(!$animal->user_encontrou)
<a href="/animals/encontrei/{{$animal->id}}" class="btn btn-warning" id="animal-encontrei">Encontrei</a>
@endif
@endguest

@auth
@if($animal->user_encontrou)
<h3>Informações de quem encontrou o Animal:</h3>
<?php $cont = 0; ?>
@foreach($animal->user_encontrou as $dados)
<ul id="itens-list">
    <?php if($cont == 0){ ?>
    <li><ion-icon name="person-circle-outline"></ion-icon><span>{{$dados}}</span></li>
    <?php  }else{ ?>
        <li><ion-icon name="call-outline"></ion-icon><span>{{$dados}}</span></li>
    <?php } $cont++; ?>
</ul>
@endforeach
@else
<h3>Não Possuí informações Cadastradas que possam ajudar a encontrar o(a) {{$animal->nome}}!</h3>
@endif
@if($animal->status =!1)
<h3>Encontrou seu Animal? se sim, confirme:</h3>
<form action="/animals/encontrei_confirm/{{$animal->id}}" method="post">
@csrf
@method('PUT')
<input type="hidden" name="status" id="status" value="1">

<button type="submit" class="btn btn-warning">Confirmar</button>
</form>
@endif
@endauth
</div>
<div class="col-md-12" id="informacoes_extra-container">
<h3>Informações sobre o animal:</h3>
<p class="animal-informacoes_extra">{{$animal->informacoes_extra}}</p>
</div>
</div>
</div>
@endsection