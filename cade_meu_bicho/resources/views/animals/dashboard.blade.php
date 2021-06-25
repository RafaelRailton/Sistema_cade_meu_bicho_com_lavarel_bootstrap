@extends('layouts.main')


@section('title','Meus Animais')

@section('content')
<div class="col-md-10 offset-md-1 dashboard-title-container">
    <h1>Meus Animais</h1>
</div>

<div class="col-md-10 offset-md-1 dashboard-animals-container">
    @if(count($animals) > 0)
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Animais</th>
                <th scope="col">Ações</th>
             
            </tr>
        </thead>
        <tbody>
            @foreach($animals as $animal)
            <tr>
                <th scropt='row'>{{$loop->index+1}}</th>
                <td><a href="/animals/{{$animal->id}}">{{$animal->nome}}</a></td>
                <td>0</td>
                <td><a href="/animals/edit/{{$animal->id}}" class="btn btn-info edit-btn"> <ion-icon name="create-outline"></ion-icon> Editar</a>
               <form action="/animals/{{$animal->id}}" method="POST">
               @csrf
               @method('DELETE')
               <button type="submit" class="btn btn-danger delete-btn"><ion-icon name="trash-outline"></ion-icon>Excluir</button>
                </form>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <p>Você não tem Animais Cadastrados,</p><a href="/animals/create">Cadastrar Animal</a>
    @endif
</div>
@endsection