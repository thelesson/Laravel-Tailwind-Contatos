<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Contato extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $fillable = [
      'nome',
      'ultimo_nome',
      'email',
      'telefone',
      'avatar'
     ];   
}
