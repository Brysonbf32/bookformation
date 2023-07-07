<?php
try{
    $my_bd= NEW PDO('mysql:host=localhost;dbname=gestion_formations','root','');
}
catch(Exception $e){
    header('location: error.php');
}
?>