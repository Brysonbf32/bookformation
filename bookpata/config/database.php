<?php
    try{
        // $servername = "localhost";
        // $username = "booko_user";
        // $password = "booko_user2022";
        // $my_db = NEW PDO("mysql:host=$servername;dbname=bookpatanews", $username, $password);
       $my_db= NEW PDO('mysql:host=localhost;dbname=bookpatanews','root','');
    }
    catch(Exception $e){
        header('location: error');
    }
?>