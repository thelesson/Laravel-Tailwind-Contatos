<div class="flex items-center  bg-gray-50 dark:bg-gray-900">
	<div class="container max-w-6xl px-5 mx-auto my-28">
		<div class="grid gap-7 sm:grid-cols-2 lg:grid-cols-4 pt-20">
			<div class="p-5 bg-white rounded shadow-sm">
				<div class="text-base text-gray-400 ">Contatos Cadastrados </div>
				<div class="flex items-center pt-1 table-row">
					<div class="text-center text-6xl font-bold text-gray-900 m-0.5">{{isset($totalContatos) ? $totalContatos: 0}}</div>
					<span class="flex items-center px-2 py-0.5 mx-2 text-sm @if(isset($relacaoT))@if($relacaoT <0)text-red-600 bg-red-100 @else text-green-600 bg-green-100 @endif @endif  rounded-full">
                      @if(isset($relacaoT))
					  @if($relacaoT < 0)
					    <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6 9L12 15L18 9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@else
						<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M18 15L12 9L6 15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@endif
					  @endif
                        <span class="px-2 text-xs" style="font-size:11px;">{{isset($relacaoT) ? $relacaoT: 0}} em relação ao dia anterior</span>
                        
					</span>
				</div>
			</div>
			<div class="p-5 bg-white rounded shadow-sm">
				<div class="text-base text-gray-400 ">Contatos Masculinos</div>
				<div class="flex items-center pt-1 table-row">
					<div class=" text-center text-6xl font-bold text-gray-900 m-0.5 ">{{isset($totalMasculinos) ? $totalMasculinos: 0}}</div>
					<span class="flex items-center px-2 py-0.5 mx-2 text-sm @if(isset($relacaoM))@if($relacaoM <0)text-red-600 bg-red-100 @else text-green-600 bg-green-100 @endif @endif  rounded-full">
                      @if(isset($relacaoM))
					  @if($relacaoM < 0)
					    <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6 9L12 15L18 9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@else
						<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M18 15L12 9L6 15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@endif
					  @endif
                        <span class="px-2 text-xs" style="font-size:11px;">{{isset($relacaoM) ? $relacaoM: 0}} em relação ao dia anterior</span>
                        
					</span>
				</div>
			</div>
			<div class="p-5 bg-white rounded shadow-sm">
				<div class="text-base text-gray-400 ">Contatos Femininos</div>
				<div class="flex items-center pt-1 table-row">
					<div class=" text-center text-6xl font-bold text-gray-900 m-0.5 ">{{isset($totalFemininos) ? $totalFemininos: 0}}</div>
					<span class="flex items-center px-2 py-0.5 mx-2 text-sm @if(isset($relacaoF))@if($relacaoF <0)text-red-600 bg-red-100 @else text-green-600 bg-green-100 @endif @endif  rounded-full">
                      @if(isset($relacaoF))
					  @if($relacaoF < 0)
					    <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6 9L12 15L18 9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@else
						<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M18 15L12 9L6 15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
						@endif
					  @endif
                        <span class="px-2 text-xs" style="font-size:11px;">{{isset($relacaoF) ? $relacaoF: 0}} em relação ao dia anterior</span>
                        
					</span>
				</div>
			</div>
			<div class="p-5 bg-blue-700 rounded shadow-sm">
				<div class="text-base text-white">Administradores do Sistema</div>
				<div class="flex items-center pt-1 table-row">
					<div class="text-center text-6xl font-bold text-white m-0.5">{{isset($usuarios) ? $usuarios: 0}}</div>
					<span class="flex items-center px-2 py-0.5 mx-2 text-sm text-green-600 bg-green-100 rounded-full" style="visibility:hidden;">
                        <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M18 15L12 9L6 15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                        <span class="px-2 text-xs" style="font-size:11px;">2.2 em relação ao dia anterior</span>
					</span>
				</div>
			</div>
         
        </div>
		</div>
	</div>