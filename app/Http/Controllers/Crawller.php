<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Goutte\Client;

class Crawller extends Controller
{
    
    public function index(){
        
        return view('welcome');
    }
}
