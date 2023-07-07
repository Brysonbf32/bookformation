<?php
include('config/databases.php');
error_reporting(0);
session_start();

if(isset($_POST['connect'])){
    $mail=htmlspecialchars($_POST['mail']);
    $password=htmlspecialchars($_POST['motpass']);
    if(isset($mail) and !empty($password)){
        $recupdat=$my_bd->prepare("SELECT * FROM tbl_users WHERE email_util=? AND password_util=?");
        $recupdat->execute(array($mail,$password));
        $recupdat->rowCount();
        $checkdata=$recupdat->fetch();
        if($checkdata >0){
            $access=$checkdata['role_util'];
            $_SESSION['id_user']=$checkdata['id_user'];
            $_SESSION['username']=$checkdata['nom_utili'];
            $_SESSION['email_util']=$checkdata['email_util'];
            $_SESSION['password']=$checkdata['password_util'];
            $_SESSION['role']=$checkdata['role_util'];
            setcookie('mailcookie', $mail, time() + (86400 * 30), "/");
            if($access == "Administrateur"){
                header('location: backend/index.php');
            }
            else{
                header('location: secretaire/index.php');
            }
        }
        else{
            $incorect= "Identifiant incorect";
        }
    }
}

if($my_bd == true){
    require('view/index.view.php');
}
?>