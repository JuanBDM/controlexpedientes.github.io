<?php 

class conexion 
{
    static public function conectar(){
        $con = new PDO("mysql:host=localhost;dbname=u530245281_expedientes", "u530245281_root", "3010120Juancruz");
        $con->exec("set name ut8");
        return $con;
    }
}