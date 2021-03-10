<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Auth;
use App\Interno;
use App\Models\Covid;
use App\Models\CovidGazeta;
class ApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        print("Nada");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($state,$dataStart,$dateEnd)
    {
        $options = [
            'verify' => false,
            'Authorization' => 'Token ' . '8ca97474e6bef871f89f7a74468d76aea9099777',
            'http_errors' => false
        ];
        
           $basicauth = new Client(['base_uri' => 'https://api.brasil.io/v1/']);
           $access_token = "8ca97474e6bef871f89f7a74468d76aea9099777";
           $newresponse = $basicauth->request(
            'GET',
            'dataset/covid19/caso/data/?state='.$state.'&date='.$dataStart.'&dateEnd='.$dateEnd, 
            ['headers' => $options
            ]
        )->getBody()->getContents();
        return $newresponse;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function apiPostInterno(Request $request)
    {
        $apiInterna = new Interno();
           $apiInterna->nomeUsuario = $request->get('nomeUsuario');
           $apiInterna->ranking = $request->get('ranking');
           $apiInterna->porcentagem = $request->get('porcentagem');
           $apiInterna->cidade = $request->get('cidade');
           $apiInterna->brasil_id = $request->get('id');
           $id= $request->get('id');
           $apiInterna->save();
           if($request->get('base') ==='brasil'){
               $brasil =  Covid::find($id);
               $brasil->populado = 1;
               $brasil->save();
           }
           $data = ['message' => 'Dado inserido com sucesso','Link endpoint GET' => 'http://localhost:8000/api/testApi/'];

           return response()->json($data, 200);
         
    }

    public function apiPostInternoShow($id)
    {
 
           return Interno::findOrFail($id);
 
    }
    public function apiPostInternoShowTodos()
    {

           return Interno::all();   
    }
}
