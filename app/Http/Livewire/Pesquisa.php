<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Contato;

class Pesquisa extends Component
{
    public $pesquisa;
    public $contatos;
    public function mount(){
        $this->pesquisa ='';
        $this->contatos =[];
    }
   
    public function updatedQuery(){
        $pesquisa = '%'.$this->pesquisa.'%';
        $this->contatos = Contato::where('nome','like',$pesquisa)->get()->toArray();
    }
    public function render()
    {
        $pesquisa = '%'.$this->pesquisa.'%';
        $this->contatos = Contato::where('nome','like',$pesquisa)->orWhere('ultimo_nome','like',$pesquisa)->orWhere('email','like',$pesquisa)
        ->orWhere('telefone','like',$pesquisa)->get();
        return view('livewire.pesquisa');
    }

   
}
