<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
      echo view('layout/header');
      echo view('uf/index');
      echo view('layout/footer');
        // return view('uf/index');
    }
    
}

