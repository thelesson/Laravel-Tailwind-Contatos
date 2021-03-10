@extends('layouts.webapp')
@section('conteudo')
<!-- component -->


 <!-- component -->



  
 
            <form action="{{ isset($contato) ? route('update',$contato->id)  : route('store') }} "  enctype="multipart/form-data"  method="{{ isset($contato) ? 'POST' : 'POST' }}" class="form bg-white p-6 my-10 relative">
            @if(isset($contato))
            @method('PATCH') 
            @else 
            @method('POST')
            @endif   
           
                <div class="icon bg-blue-600 text-white w-6 h-6 absolute flex items-center justify-center p-5" style="left:-40px"><i class="fal fa-phone-volume fa-fw text-2xl transform -rotate-45"></i></div>
                <h3 class="text-2xl text-gray-900 font-semibold">{{ isset($contato) ? 'Editar Contato' : 'Crie seu novo Contato' }}</h3>
                <p class="text-gray-600"> Insira as informações do seu novo contato</p>
                @if(isset($contato))  
                <input type="hidden" name="seguro" value="{{$encryptado}}">
                @endif
                {{ csrf_field() }}
                <div class="flex space-x-5 mt-3">
                    <input type="text" name="nome" id="nome" placeholder="Nome" class="border text-gray-700 p-2  w-1/2 @error('nome') border-red-600 @enderror" value="{{isset($contato) ? $contato->nome : ''}}" >
                   
                    <input type="text" name="ultimo_nome" id="ultimo_nome" placeholder="Último Nome" class="border text-gray-700 p-2 w-1/2 @error('ultimo_nome') border-red-600 @enderror" value="{{isset($contato) ? $contato->ultimo_nome : ''}}" required>
                </div>
                <div class="flex space-x-5 mt-3">
                @error('nome')
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">

  <span class="block sm:inline">{{ $message }}</span>
  
</div>
   
@enderror
@error('ultimo_nome')
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
  
  <span class="block sm:inline">{{ $message }}</span>
  
</div>
   
@enderror
</div>
<div class="mt-4">
  <span class="text-gray-700">Sexo</span>
  <div class="mt-2">
    <label class="inline-flex items-center">
      <input type="radio" class="form-radio" name="sexo" value="0" @if(isset($contato->sexo)) @if($contato->sexo ===0) checked @endif @endif>
      <span class="ml-2 text-gray-700">Masculino</span>
    </label>
    <label class="inline-flex items-center ml-6">
      <input type="radio" class="form-radio" name="sexo" value="1" @if(isset($contato->sexo)) @if($contato->sexo ===1) checked @endif @endif>
      <span class="ml-2 text-gray-700">Feminino</span>
    </label>
    @error('sexo')
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
  
  <span class="block sm:inline">{{ $message }}</span>
  
</div>
   
@enderror
  </div>
</div>

                <input type="email" name="email" id="email" placeholder="Seu email" class="border text-gray-700 p-2 w-full mt-3 @error('email') border-red-600 @enderror" value="{{isset($contato) ? $contato->email : ''}}" required>
                @error('email')
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
  
  <span class="block sm:inline">{{ $message }}</span>
  
</div>
   
@enderror
                <input type="tel" name="telefone" id="telefone" placeholder="Seu telefone" class="telefone text-gray-700 border p-2 w-full mt-3 @error('telefone') border-red-600 @enderror" value="{{isset($contato) ? $contato->telefone : ''}}" required>
                @error('telefone')
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
  
  <span class="block sm:inline">{{ $message }}</span>
  
</div>
   
@enderror
                <div class="mb-2"></div>
                <div class="mb-2 text-gray-700"> <span> {{ isset($contato) ? 'Alterar seu Avatar' : 'Inserir Avatar(Opcional)' }} </span>
                        <div class="relative h-40 rounded-lg border-dashed border-2 border-gray-200 bg-white flex justify-center items-center hover:cursor-pointer">
                            <div class="absolute">
                                <div class="flex flex-col items-center "> <i class="fa fa-cloud-upload fa-3x text-gray-200"></i> <span class="block text-gray-400 font-normal">Arraste sua imagem para cá</span> <span class="block text-gray-400 font-normal">ou</span> <span class="block text-blue-400 font-normal">Selecionar  arquivo</span> </div>
                            </div> <input type="file" id="avatar" name="avatar" class="h-full w-full opacity-0" >
                        </div>
                        <div class="flex justify-between items-center text-gray-400"> <span>Tipos de imagem aceita:.png, .jpg, .gif</span> <span class="flex items-center "><i class="fa fa-lock mr-1"></i> </span> </div>
                        <div id="bloco_upload" style="display:none;">
                        <h1 id="txt_carrega">Carregando...</h1>
                        <div class="h-3 relative max-w-xl rounded-full overflow-hidden">
        <div class="w-full h-full bg-gray-200 absolute"></div>
        <div id="bar" class="transition-all ease-out duration-1000 h-full bg-green-500 relative w-0"></div>
    </div>
</div>
                    </div>
                <input type="submit" value="{{isset($contato) ? 'Salvar': 'Cadastrar'}}" class="w-full mt-6 bg-blue-600 hover:bg-blue-500 text-white font-semibold p-3">

            </form>


@endsection
   
