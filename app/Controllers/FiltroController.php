<?php

namespace App\Controllers;
use App\Models\UfModel;

class FiltroController extends BaseController // Este controlador es el de la pagina de filtros,  tiene el metodo index para mostrar las vistas. 

{
    public function index()
    {
      echo view('layout/header');
      echo view('filtro/index');
      echo view('layout/footer');
    }
}

