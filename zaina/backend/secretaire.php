<?php
include('../config/databases.php');
error_reporting(0);
session_start();
$utilisacookies=$_COOKIE['mailcookie'];
$utilisasession=$_SESSION['email_util'];
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
    }
    else{
        header('location: ../logout.php');
    }
}

if(isset($_POST['suprimer'])){
    $us_idsecr=htmlspecialchars($_POST['input_secr']);
    if(isset($us_idsecr)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_secretaire WHERE id_secret=?");
        $recupdeletdata->execute(array($us_idsecr));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $deleteuser=$my_bd->prepare("DELETE FROM tbl_secretaire WHERE id_secret=?");
            $deleteuser->execute(array($us_idsecr));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/secretaire.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>