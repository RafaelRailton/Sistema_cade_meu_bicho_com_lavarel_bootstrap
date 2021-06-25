@extends('layouts.main')


@section('title','Create Animals')

@section('content')
<div id="animal-create-container" class="col-md-6 offset-md-3">
    <h1>Cadastro de Animal Perdido</h1>
    <form action="/animals" method="post" enctype="multipart/form-data">
    @csrf
<div class="form-group">
    <label for="name">Nome:</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Nome do Animal..." required>
</div>
<div class="form-group">
    <label for="idade">Idade:</label>
    <input type="number" class="form-control" id="idade" name="idade" placeholder="Idade do Animal..." required>
</div>
<div class="form-group">
    <label for="idade">Data que Perdeu:</label>
    <input type="date" class="form-control" id="date" name="date" required >
</div>
<div class="form-group">
    <label for="informacoes_extra">Informações Extras:</label>
    <textarea name="informacoes_extra" id="informacoes_extra" class="form-control" placeholder="Detalhes do Animal..." required></textarea>
</div>
<div class="form-group">
    <label for="cidade">Cidade do Desaparecimento:</label>
    <input type="text" class="form-control" id="cidade" name="cidade" placeholder="Cidade do desaparecimento do Animal..."required>
</div>
<div class="form-group">
    <label for="estado">Estado do Desaparecimento:</label>
    <input type="text" class="form-control" id="estado" name="estado" placeholder="Estado do desaparecimento do Animal..." required>
</div>
<div class="form-group">
    <label for="foto">Foto:</label>
    <input type="file" class="form-control-file" id="foto" name="foto" placeholder="Foto do Animal..." required>
    <input type="hidden" class="form-control" id="status" name="status" value="0" >
</div>
<div class="form-group">
<input type="submit" class="btn btn-warning" value="Cadastrar">
</div>
</form>
</div>
@endsection
