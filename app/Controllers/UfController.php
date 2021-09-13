<?php

namespace App\Controllers;
use App\Models\UfModel;

class UfController extends BaseController
{
    public function index()
    {
      echo view('layout/header');
      echo view('uf/index');
      echo view('layout/footer');
    }
    /*Función para mostrar todos los datos de la tabla tbl_uf*/
    public function showAllUf(){
      $ufModel = new UfModel();
      $data = $ufModel->findAll();
      return $this->response->setJSON($data);
    }
    /*Función para agregar un registro en la tabla tbl_uf*/
    public function addUf(){
      $ufModel = new UfModel();
      $data = [
        'codigo'=>$this->request->getPost('codigo'),
			  'nombre'=>$this->request->getPost('nombre'),
			  'unidadmedida'=>$this->request->getPost('unidadmedida'),
			  'fecha'=>$this->request->getPost('fecha'),
			  'valor'=>$this->request->getPost('valor'),
			  'created_at'=>date('Y-m-d H:i:s')
      ];
      $insert = $ufModel->save($data);
      $msg['type'] = 'add';
      if ($insert == 1) {
        $msg['success'] = true;
      } else {
        $msg['success'] = false;
      }
      return $this->response->setJSON($msg);
      // echo json_encode($);
    }
  /*Función para mostrar los datos de un registro de la tabla tbl_uf*/
    public function editUf(){
      $ufModel = new UfModel();
      $ufId = $this->request->getPost('id');
      $data = $ufModel->find($ufId);
      return $this->response->setJSON($data);
    }
  /*Función para actualizar los datos de un registro de la tabla tbl_uf*/
    public function updateUf(){
      $ufModel = new UfModel();
      $ufId = $this->request->getPost('id');
      $data = [
        'codigo'=>$this->request->getPost('codigo'),
			  'nombre'=>$this->request->getPost('nombre'),
			  'unidadmedida'=>$this->request->getPost('unidadmedida'),
			  'fecha'=>$this->request->getPost('fecha'),
			  'valor'=>$this->request->getPost('valor'),
			  'created_at'=>date('Y-m-d H:i:s')
      ];
      $update = $ufModel->update($ufId, $data);
      $msg['type'] = 'update';
      if ($update == 1) {
        $msg['success'] = true;
      } else {
        $msg['success'] = false;
      }
      return $this->response->setJSON($msg);
      // echo json_encode($msg);
    }
  /*Función para eliminar un registro de la tabla tbl_uf*/
    public function deleteUf(){
      $ufModel = new UfModel();
      $delete = $ufModel->delete($this->request->getPost('id'));
      if($delete){
        $msg['success'] = true;
      } else {
        $msg['success'] = false;
      }
      return $this->response->setJSON($msg);
    }
    
}

