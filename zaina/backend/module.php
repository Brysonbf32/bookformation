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
        $imageuser=$checkcookie['image_util'];

    }
    else{
        header('location: ../logout.php');
    }
}

if(isset($_POST['ajouter'])){
    $nomdepa=htmlspecialchars($_POST['input_depart']);
    $inmodule=htmlspecialchars($_POST['input_module']);
    $descri=htmlspecialchars($_POST['input_descrmodule']);
    $prixmodule=htmlspecialchars($_POST['input_prix']);
    $duremodule=htmlspecialchars($_POST['input_duree']);
    if(isset($nomdepa) and !empty($inmodule) and !empty($descri) and !empty($prixmodule) and !empty($duremodule)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_module WHERE id_depart=? AND titre_mod=?");
        $recupdata->execute(array($nomdepa,$inmodule));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("module exist deja");
            </script>
            <?php
        }
        else{
            $insert_depart=$my_bd->prepare("INSERT INTO tbl_module(id_depart,titre_mod,prix_mod,duree_mod,descri_mod)VALUE(?,?,?,?,?)");
            $insert_depart->execute(array($nomdepa,$inmodule,$prixmodule,$duremodule,$descri));
        }
    }
}
if(isset($_POST['modifier'])){
    $idmod=htmlspecialchars($_POST['id_module']);
    $nomdepa=htmlspecialchars($_POST['input_depart']);
    $module=htmlspecialchars($_POST['input_module']);
    $prixmodule=htmlspecialchars($_POST['input_prix']);
    $duremodule=htmlspecialchars($_POST['input_duree']);
    $descri=htmlspecialchars($_POST['input_descrmodule']);
        $logs= $my_bd->prepare("SELECT * FROM tbl_module WHERE id_mod=?");
		$logs->execute(array($idmod));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updatedepart=$my_bd->prepare("UPDATE tbl_module SET id_depart=?,titre_mod=?,prix_mod=?,duree_mod=?,descri_mod=? WHERE id_mod='$idmod'");
            $updatedepart->execute(array($nomdepa,$module,$prixmodule,$duremodule,$descri));
        }

}

if(isset($_POST['suprimer'])){
    $idmod=htmlspecialchars($_POST['id_module']);
    if(isset($idmod)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_module WHERE id_mod=?");
        $recupdeletdata->execute(array($idmod));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $delete=$my_bd->prepare("DELETE FROM tbl_module WHERE id_mod=?");
            $delete->execute(array($idmod));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/module.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>