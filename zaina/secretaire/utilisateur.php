<?php
include('../config/databases.php');
error_reporting(0);
session_start();
$utilisacookies=$_COOKIE['mailcookie'];
$utilisasession=$_SESSION['email_util'];
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

if(isset($_POST['ajouter'])){
    $us_username=htmlspecialchars($_POST['input_nonutili']);
    $us_mail=htmlspecialchars($_POST['input_mail']);
    $us_password=htmlspecialchars($_POST['input_password']);
    $us_role=htmlspecialchars($_POST['input_role']);
    if(isset($us_username)  and !empty($us_mail) and !empty($us_password) and !empty($us_role)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_users WHERE email_util=?");
        $recupdata->execute(array($us_mail));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("Utilisateur exist deja");
            </script>
            <?php
        }
        else{
            $insert_utili=$my_bd->prepare("INSERT INTO tbl_users(nom_utili,email_util,password_util,role_util)VALUE(?,?,?,?)");
            $insert_utili->execute(array($us_username,$us_password,$us_mail,$us_role));
        }
    }
}




if($my_bd==true){
    require('view/secretaire.view.php');
}
?>