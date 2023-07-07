<?php
include('../config/databases.php');
error_reporting(0);
session_start();
$utilisacookies=$_COOKIE['mailcookie'];
$id_session=$_SESSION['id_user'];
$today_date=date('y-'.'m-'.'d');
$year=date('y');
$month=date('m');
$day=date('d');

if(isset($utilisacookies)){
    $cookiconect=$my_bd->prepare("SELECT * FROM tbl_users WHERE email_util=?");
    $cookiconect->execute(array($utilisacookies));
    $cookiconect->rowCount();
    $checkcookie=$cookiconect->fetch();
    if($checkcookie >0){
        $userid=$checkcookie['id_user'];
        $nomuser=$checkcookie['nom_utili'];
        $mailuser=$checkcookie['email_util'];
        $passworduser=$checkcookie['password_util'];
        $roleuser=$checkcookie['role_util'];
        $imageuser=$checkcookie['image_util'];

    }
    else{
        header('location: ../logout.php');
    }
}

if($my_bd==true){
    if(isset($utilisacookies) and !empty($id_session)){
        require('view/index.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>