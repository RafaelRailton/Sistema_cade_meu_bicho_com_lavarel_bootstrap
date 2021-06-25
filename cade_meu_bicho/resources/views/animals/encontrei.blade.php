@extends('layouts.main')


@section('title','Create Animals')

@section('content')
<div id="animal-create-container" class="col-md-6 offset-md-3">
    <h1>Encontrou a(o) {{$animal->nome}}?</h1>
    <span>Deixa as Informações abaixo para ajudar a(o) {{$animal->nome}} a encontrar seu lar. </span><ion-icon name="storefront-outline"></ion-icon>
    <form action="/animals/encontrei/{{$animal->id}}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input type="hidden" value="{{$animal->id}}">
<div class="form-group">
    <label for="name">Nome:</label>
    <input type="text" class="form-control" id="nome" name="user_encontrou[]" placeholder="Nome de quem encontrou a(o) {{$animal->nome}}..." required>
</div>
<div class="form-group">
    <label for="name">Telefone:</label>
    <input type="text" class="form-control" id="telefone" name="user_encontrou[]" placeholder="Telefone para Contato..." required>
</div>
<div class="form-group">

<input type="submit" class="btn btn-warning" value="Cadastrar">
</div>
</form>
</div>
@endsection
