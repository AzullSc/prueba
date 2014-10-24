<?php 
class Database extends PDO
{
 
    //nombre base de datos
    private $dbname = "pasajes";
    //nombre servidor
    private $host = "localhost";
    //nombre usuarios base de datos
    private $user = "Pablo";
    //password usuario
    private $pass = 12;
    //puerto postgreSql
    private $port = 8080;
    private $dbh;
 
    //creamos la conexión a la base de datos prueba
    public function __construct() 
    {
        try {
 
            $this->dbh = parent::__construct("pgsql:host=$this->host;port=$this->port;dbname=$this->dbname;user=$this->user;password=$this->pass");
 
        } catch(PDOException $e) {
 
            echo  $e->getMessage("Estoy conectado"); 
 
        }
 
    }
 
    //función para cerrar una conexión pdo
    public function close_con() 
    {
 
        $this->dbh = null; 
 
    }
 
}