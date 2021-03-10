@extends('layouts.webapp')
@section('conteudo')

<div class="container mx-auto my-60 ">
        <div>

            <div class="bg-white relative shadow-xl  mx-auto">
                <div class="flex justify-center">
                @if(isset($contato->avatar))
                  <img class="rounded-full mx-auto absolute -top-20 w-32 h-32 shadow-2xl border-4 border-white" src="{{ Voyager::image('/uploads/avatars/'.$contato->avatar) }}" alt="">
                  @else
                  @php 
                  $imagemFake = $contato->nome." ".$contato->ultimo_nome;
                  @endphp
                    <img class="rounded-full mx-auto absolute -top-20 w-32 h-32 shadow-2xl border-4 border-white" src="{{ Avatar::create($imagemFake)->toBase64() }}" alt="">
                  @endif
                </div>
               
                <div class="mt-16">
                @if(isset($contato))
                @php
                $nomeSobrenome = $contato->nome.' '.$contato->ultimo_nome; 
                @endphp
                @endif
                    <h1 class="font-bold text-center text-3xl text-gray-900">{{ isset($contato) ? $nomeSobrenome : 'Nome do Contato' }} </h1>
                    <p class="text-center text-sm text-gray-400 font-medium">@if(isset($contato->sexo)) @if($contato->sexo ===0)  Masculino @else Feminino @endif @endif - {{ isset($contato) ? $contato->email : 'Email do Contato' }} </p>
                    <p>
                        <span>
                            
                        </span>
                    </p>
                    <div class="my-5">
                        <a href="#" class="text-indigo-200 block text-center font-medium leading-6 px-6 py-3 bg-indigo-600">Telefone de Contato:  <span class="font-bold">{{ isset($contato) ? $contato->telefone : 'Telefone do Contato' }} </span></a>
                    </div>
                    

                    <div class="w-full">
                        <h3 class="font-bold text-gray-600 text-left px-4">Ações</h3>
                        <div class="mt-5 w-full">
                        <div class="flex justify-evenly my-5">
                        <a href="{{ isset($contato) ? route('editar',$contato->id) : '#' }} " class="bg font-bold text-sm text-blue-800 w-full text-center py-3 hover:bg-blue-800 hover:text-white hover:shadow-lg">Editar</a>
                       
                        @if(isset($contato))
                          <!-- modal div -->
    <div  x-data="{ open: false }">
              <button class="bg font-bold text-sm text-white w-full text-center py-3 px-3 bg-red-800 hover:bg-red-400 hover:text-white hover:shadow-lg" @click="open = true">Deletar</button>


<!-- Button (blue), duh! -->

<!-- Dialog (full screen) -->
<div class="absolute top-0 left-0 flex items-center justify-center w-full h-full" style="background-color: rgba(0,0,0,.5);" x-show="open"  >

  <!-- A basic modal dialog with title, body and one button to close -->
  <div class="h-auto p-4 mx-2 text-left bg-white rounded shadow-xl  md:p-6 lg:p-8 md:mx-0" @click.away="open = false">
    <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
      <h3 class="text-lg leading-6 font-medium text-gray-900">
        ATENÇÃO
      </h3>

      <div class="mt-2">
        <p class="text-sm leading-5 text-gray-500">
          Esta ação é irreversível. Para deletar definitivamente seu contato, clique no botão abaixo
        </p>
    </div>
  </div>

    <!-- One big close button.  --->
    
    <div class="mt-5 sm:mt-6">
      <span class="flex w-full rounded-md shadow-sm">
      
        <form  class="inline-flex justify-center w-full px-4 py-2 text-white bg-red-500 rounded hover:bg-red-700" action="{{route('delete',$contato->id)}}" method = "post">
                          @csrf
                  @method('DELETE') 
                @php $encryptado = Crypt::encryptString($contato->id); @endphp
                <input type="hidden" name="seguro" value="{{$encryptado}}">
                    <button type="submit"  class="inline-flex justify-center w-full px-4 py-2 text-white bg-red-500 rounded hover:bg-red-700">Deletar</button>
                    
                  </form>
      </span>
    </div>
  

  </div>
</div>
</div>
                        @endif
                        <a href="{{route('webApp')}}" class="bg font-bold text-sm text-yellow-600 w-full text-center py-3 hover:bg-yellow-600 hover:text-white hover:shadow-lg">Retornar ao Inicio</a>
                    </div>
                            
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    @endsection