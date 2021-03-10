<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
              <!--  <x-jet-welcome />-->
            <!-- component -->

@include('webapp.partials.cards')

         <!-- Bg white -->
<div class="flex items-center  bg-gray-50 dark:bg-gray-900">
<div class="container max-w-6xl px-5 mx-auto my-28">
        <h2 class="text-3xl text-center leading-9 font-bold tracking-tight text-gray-800 sm:text-4xl sm:leading-10">
            Acessar Agenda de Contatos
        </h2>
        <div class="mt-8 flex justify-center">
            <div class="inline-flex rounded-md bg-blue-500 shadow">
                <a href="#" class="text-gray-200 font-bold py-2 px-6">
                    Agenda
                </a>
            </div>
        </div>
        <div>
</div>
 



</x-app-layout>
