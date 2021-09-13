<?php
namespace App\Models;
use CodeIgniter\Model;
//Creamos un modelo que extienda de model para manejar nuestros datos de la Uf.
class UfModel extends Model { 
  /*Definimos la tabla a la que apunta nuestro modelo*/
  protected $table = 'tbl_uf';
  /*nuestra llave primaria*/
  protected $primaryKey = 'id';
  /*Campos de la tabla */
  protected $allowedFields = [
    'codigo',
    'nombre',
    'unidadmedida',
    'fecha',
    'valor',
    'created_at',
    'updated_at'
  ];
  
}