<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Carto;
use App\Models\Contato;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Image;
use App\Models\User;
use Carbon\Carbon;

class WebApp extends Controller
{
    public function calculoDias($chave,$sexo){
        //funcao para calcular o total em relacao ao dia anterior
        if($chave===1){
            $mDiaAtual = Contato::where('sexo','=',$sexo)
        ->whereDate('created_at', '=', Carbon::now())
        ->count();
        $mDiaAnterior = Contato::where('sexo','=',$sexo)
        ->whereDate('created_at', '=', Carbon::now()->subDays(1))
        ->count();
        
        $calculado = $mDiaAtual - $mDiaAnterior;
        if($calculado >0){
          return  $calculado = '+'.$calculado;
        }else{
            return $calculado;
        }
        }else{
            $mDiaAtual = Contato::whereDate('created_at', '=', Carbon::now())
        ->count();
        $mDiaAnterior = Contato::whereDate('created_at', '=', Carbon::now()->subDays(1))
        ->count();
        
        $calculado = $mDiaAtual - $mDiaAnterior;
        if($calculado >0){
          return  $calculado = '+'.$calculado;
        }else{
            return $calculado;
        }
        }
        
    }
  
    public function dashboard(){
        return  redirect()->route('webApp');
       
    }
    public function index(){
        
        $contatos = Contato::paginate(4);
        $totalContatos = Contato::all()->count();
        $totalMasculinos = Contato::where('sexo','=', '0')->count();
        $totalFemininos = Contato::where('sexo','=','1')->count();
        $usuarios = User::all()->count();
        //funcao abaixo calcula a relacao de hj/ontem
        //calculoDias($chave,$sexo);
        //chave === 1 - Executa o calculo com base no sexo informado
        // chave === outro valor - Executa o calculo em todos os contatos
        $relacaoM = Self::calculoDias(1,0);
        $relacaoF = Self::calculoDias(1,1);
        $relacaoT = Self::calculoDias(0,0);


        return view('webapp')->with(compact('relacaoT','relacaoM','relacaoF','contatos','totalContatos','totalMasculinos','totalFemininos','usuarios'));
    }
    
    public function criar(){
        
        
        return view('backend.teste');
    }

    public function editar($id){
        
        $contato = Contato::find($id);
        
        if($contato){
            //$idContato = strval($contato->id);
            $encryptado = Crypt::encryptString($contato->id);
            return view('backend.teste')->with(compact('contato','encryptado'));
        
        }else{
            notify()->error('Nenhum contato localizado na nossa base de dados. Crie um novo usuário⚡️', 'Erro');
            return  redirect()->route('criar');
        }
        
    }
    public function store(Request $request){
        $validator = Validator::make($request->all(),[
            'nome' => 'required|min:3',
            'ultimo_nome' => 'required|min:3',
            'email' => 'unique:contatos,email|required|email:rfc,dns',
            'telefone' => 'unique:contatos,telefone|required|telefone_com_ddd',
            'avatar'  =>'mimes:jpeg,jpg,png,gif|max:20000',
            'sexo' =>'required|in:0,1'
        ]);
        if($validator->fails()) {
            notify()->error('Não foi possível cadastrar o contato. Alguns erros foram encontrados.Confira os campos digitados ⚡️', 'Falha');
           return Redirect::back()->withErrors($validator)->with('autofocus', true);
        }
        
                $contatoObj  = new Contato();
                $contatoObj->nome = $request->get('nome');
                $contatoObj->ultimo_nome = $request->get('ultimo_nome');
                $contatoObj->email = $request->get('email');
                $contatoObj->telefone = $request->get('telefone');
                $contatoObj->sexo = $request->get('sexo');
                $contatoObj->save();
                
                notify()->success('Alterações realizadas com Sucesso!');
                return redirect()->route('webApp');
            
    }

    public function update($id,Request $request){
       
        $validator = Validator::make($request->all(),[
            'nome' => 'required|min:3',
            'ultimo_nome' => 'required|min:3',
            'email' => 'required|email:rfc,dns|unique:contatos,email,'.$id,
            'telefone' => 'required|telefone_com_ddd|unique:contatos,telefone,'.$id,
            'avatar'  =>'mimes:jpeg,jpg,png,gif|max:20000',
            'sexo' =>'required|in:0,1'
        ]);
        if($validator->fails()) {
            notify()->error('Não foi possível atualizar o contato. Alguns erros foram encontrados.Confira os campos digitados ⚡️', 'Falha');
            return Redirect::back()->withErrors($validator)->with('autofocus', true);
        }
        $decryptado= Crypt::decryptString($request->seguro);
        $decryptado = (int)$decryptado;
        
        $contato = Contato::find($id);
        
        if($contato){
            if($contato->id === $decryptado){
                
                $contato->nome = $request->get('nome');
                $contato->ultimo_nome = $request->get('ultimo_nome');
                $contato->email = $request->get('email');
                $contato->telefone = $request->get('telefone');
                $contato->sexo = $request->get('sexo');
                if($request->hasFile('avatar')){
                    $avatar = $request->file('avatar');
                    $filename = time() . '.' . $avatar->getClientOriginalExtension();
                    Image::make($avatar)->resize(300, 300)->save( public_path('/storage/uploads/avatars/' . $filename ) );
                    $contato->avatar = $filename;
                }
                $contato->save();
                
                notify()->success('Alterações realizadas com Sucesso!','Sucesso');
                return redirect()->route('webApp');
                
            }else{
                notify()->error('Protocolo de segurança inválido!');
                return Redirect::back()->withErrors($validator)->with('autofocus', true);
            }
            
        
        }else{
            notify()->error('Nenhum contato encontrado. Crie um novo contato');
            redirect()->route('criar');
        }
        
    }
    public function delete($id, Request $request){
        $deleta = Contato::find($id);
        $decryptado= Crypt::decryptString($request->seguro);
        $decryptado = (int)$decryptado;
        
        if($deleta){
            if($deleta->id === $decryptado){
                $deleta->delete();
                notify()->success('Deletado com Sucesso ⚡️', 'Sucesso');
                return redirect()->back();
            }else{
                notify()->error('O sistema bloqueou a exclusão desse contato. Não tente burlar aqui parceiro ⚡️', 'Erro');
                return redirect()->back();
            }
           
        }else{
            notify()->error('Contato não encontrado em nosso sistema ⚡️', 'Erro');
            return redirect()->back();
        }
        
    }

    public function detalhes($id){
        $contato = Contato::find($id);
        
        if($contato){
            //$idContato = strval($contato->id);
            //$encryptado = Crypt::encryptString($contato->id);
            return view('backend.detalhes')->with(compact('contato'));
        
        }else{
            notify()->error('Nenhum contato localizado na nossa base de dados. Retornando ao inicio', 'Erro');
            return  redirect()->route('webApp');
        }
    }
}
