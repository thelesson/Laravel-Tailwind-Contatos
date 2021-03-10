<!-- This example requires Tailwind CSS v2.0+ -->
<div class="flex flex-col ">
  <div class="-my-2  sm:-mx-6 lg:-mx-8 ">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
    <div class="flex flex-col-2 py-2">
    <a href="{{ route('criar') }}"
          class="bg-indigo-600 border border-indigo-500 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:text-white hover:bg-indigo-700 focus:outline-none focus:shadow-outline"
        >
         +  Novo Contato
        </a>
        </div>
      <div class="shadow border-b border-gray-200 sm:rounded-lg ">
      
       
        <table class="divide-y divide-gray-200 w-full">
          <thead class="bg-gray-50">
            <tr>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Nome
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Último Nome
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Email
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Telefone
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Sexo
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Ações
              </th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-200 ">
          
          @foreach($contatos as $contato)
            <tr>
              <td class="px-6 py-4 whitespace-nowrap">
                <div class="flex items-center">
                  <div class="flex-shrink-0 h-10 w-10">
                  @if(isset($contato->avatar))
                  <img class="h-10 w-10 rounded-full" src="{{ Voyager::image('/uploads/avatars/'.$contato->avatar) }}" alt="">
                  @else
                  @php 
                  $imagemFake = $contato->nome." ".$contato->ultimo_nome;
                  @endphp
                    <img class="h-10 w-10 rounded-full" src="{{ Avatar::create($imagemFake)->toBase64() }}" alt="">
                  @endif
                  </div>
                  <div class="ml-4">
                    <div class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                      {{$contato->nome}} 
                    </div>
                    
                  </div>
                </div>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {{$contato->ultimo_nome}}
                
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
             {{$contato->email}}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {{$contato->telefone}}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {{$contato->sexo ===1 ? 'Feminino':'Masculino'}}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href="{{route('editar',$contato->id)}}" class="text-indigo-600 hover:text-indigo-900">Editar</a>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href="{{route('detalhes',$contato->id)}}" class="text-indigo-600 hover:text-indigo-900">Detalhar</a>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
              <!-- modal div -->
    <div  x-data="{ open: false }">
              <button class="text-red-600 hover:text-red-900" @click="open = true">Deletar</button>


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
               </td>
              
            </tr>
          @endforeach
          
          </tbody>
        </table>
        
        {{$contatos->links()}}
      </div>
    </div>
  </div>
</div>