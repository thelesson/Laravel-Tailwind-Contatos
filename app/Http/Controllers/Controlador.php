<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;
use App\Models\CovidGazeta;
use DB;

class Controlador extends Controller
{

   
    public function data($state,$dataStart,$dateEnd){
       // return response()->json(['estado' => $state, 'data1' => $dataStart, 'data2' => $dateEnd]);
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

    public function percentual(){
        $percentual1 = DB::table('covid_gazetas')->select(DB::raw('covid_gazetas.*,(casos_total/populacao)*100 as porcentagem'))
        ->get()->sortByDesc('porcentagem')->take(10);
        return $percentual1;
        
        

    }
    public function percentualBrasilIO(){
        $percentual2 = DB::table('covids')->select(DB::raw('covids.*,(last_available_confirmed/estimated_population)*100 as porcentagem'))
        ->get()->sortByDesc('porcentagem')->take(10);
        return $percentual2;
        
        

    }
}
