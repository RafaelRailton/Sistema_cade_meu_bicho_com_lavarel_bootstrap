<?php

namespace App\Http\Controllers;

use App\Models\Animal;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class AnimalController extends Controller
{
    public function index()
    {
        $search = request('search');
        if ($search) {

            $animals = Animal::where([
                ['nome', 'like', '%' . $search . '%']
            ])->simplePaginate(8);
        } else {
            $animals =  DB::table('animals')->simplePaginate(8);
        }

        return view('welcome', ['animals' => $animals, 'search' => $search]);
    }

    public function create()
    {
        return view('animals.create');
    }

    public function store(Request $request)
    {
        $animal = new Animal();
        $animal->nome   = $request->name;
        $animal->idade  = $request->idade;
        $animal->informacoes_extra = $request->informacoes_extra;
        $animal->cidade = $request->cidade;
        $animal->estado = $request->estado;
        $animal->foto   = $request->foto;
        $animal->status = $request->status;
        $animal->date   = $request->date;
        if ($request->hasFile('foto') && $request->file('foto')->isValid()) {
            $requestImage   = $request->foto;
            $extension      = $requestImage->extension();
            $fotoName       = md5($requestImage->getClientOriginalName() . strtotime("now") . "." . $extension);
            $requestImage->move(public_path('img/animals'), $fotoName);
            $animal->foto   = $fotoName;
        }
        $user            = auth()->user();
        $animal->user_id = $user->id;
        $animal->save();
        return redirect('/')->with('msg', 'Animal Cadastrado com Sucesso!');
    }
    public function show($id)
    {
        $animal      =  Animal::findOrFail($id);
        $animalOwner =  User::where('id', $animal->user_id)->first()->toArray();
        return view('animals.show', ['animal' => $animal, 'animalOwner' => $animalOwner]);
    }
    public function myanimals(){
        $user       = auth()->user();
        $animals    = $user->animals;
        return view('animals.dashboard',['animals'=>$animals]);
    }
    public function destroy($id){
        Animal::findOrFail($id)->delete();
        return redirect('/dashboard')->with('msg','Animal Excluído com Sucesso!');
    }
    public function edit($id){
        $animal = Animal::findOrFail($id);
        return view('animals.edit',['animal'=>$animal]);
    }
    public function update(Request $request){
        $data = $request->all();
        if ($request->hasFile('foto') && $request->file('foto')->isValid()) {
            $requestImage   = $request->foto;
            $extension      = $requestImage->extension();
            $fotoName       = md5($requestImage->getClientOriginalName() . strtotime("now") . "." . $extension);
            $requestImage->move(public_path('img/animals'), $fotoName);
            $data['foto']   = $fotoName;
        }
        Animal::findOrFail($request->id)->update($data);
        return redirect('/dashboard')->with('msg','Dados Editados com Sucesso!');
    }

    public function encontrei($id){
        $animal = Animal::findOrFail($id);
        return view('animals.encontrei',['animal'=>$animal]);
    }

    public function update_encontrei(Request $request){
        $data = $request->all();
        Animal::findOrFail($request->id)->update($data);
        return redirect('/')->with('msg','Informações Cadastradas com sucesso!');
    }

    public function confirm_status(Request $request){
        $data = $request->all();
        Animal::findOrFail($request->id)->update($data);
        return redirect('/')->with('msg','Confirmação feita com sucesso,Animal Encontrado!');
    }
}
