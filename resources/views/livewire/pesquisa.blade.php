<form class='form-inline'>
    
<div class="relative flex-shrink-0 px-4 py-8 text-gray-400 border-b dark:border-indigo-800 dark:focus-within:text-light focus-within:text-gray-700"
            >
            <button>
	  <span class="w-auto flex justify-end items-center text-grey p-2">
		  <i class="material-icons text-3xl">Pesquise</i>
	  </span>
	</button>
              <input
                
                type="text"
                class="w-full py-2 pl-10 pr-4 border rounded-full dark:bg-dark dark:border-transparent dark:text-light focus:outline-none focus:ring"
                placeholder="Pesquisar..."
                wire:model="pesquisa" wire:keydown.escape="reset"
              />
              
           

            
        </form>
        
         <!-- Panel content (Search result) -->
         <div class="flex-1 px-4 pb-4 space-y-4 overflow-y-hidden h hover:overflow-y-auto">
              <div class="mb-3" wire:loading>Pesquisando contatos...</div>
        <div wire:loading.remove>
        <ul class="list-group" style="list-style-type: none;">
        <div class="grid grid-cols-1 divide-y divide-gray-500">
       @if(!empty($pesquisa))
            @if($contatos->isEmpty())
            <li class="list-group-item">
                    Nenhum contato encontrado.
                </li>
            @else
                @foreach($contatos as $row)
                    
                    <li class="list-group-item" style="border-bottom:none;">
                       <h6 class="text-lg text-gray-700 text-bold">{{$row->nome}} {{$row->ultimo_nome}}</h6>
                        <p class="text-gray-700"><span class="font-weight-bold">Email</span>: <span class="font-italic font-weight-light">{{$row->email}}</span>
                        
                        </p>
                        <a href="{{route('detalhes',$row->id)}}" class="text-indigo-600 hover:text-indigo-900">detalhar</a>
            
            
                   
                    </li>
                     
                @endforeach
            @endif
        @endif
        </div>
        </ul>
        </div>
        </div>
