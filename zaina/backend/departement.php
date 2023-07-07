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
    $nomdepa=htmlspecialchars($_POST['input_nomdepart']);
    $descri=htmlspecialchars($_POST['input_descridepart']);
    if(isset($nomdepa) and !empty($descri)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_departement WHERE nom_depart=?");
        $recupdata->execute(array($nomdepa));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("Departement exist deja");
            </script>
            <?php
        }
        else{
            $insert_depart=$my_bd->prepare("INSERT INTO tbl_departement(nom_depart,descri_depart)VALUE(?,?)");
            $insert_depart->execute(array($nomdepa,$descri));
        }
    }
}
if(isset($_POST['modifier'])){
    $depart_id=htmlspecialchars($_POST['id_depart']);
    $nomdepa=htmlspecialchars($_POST['input_nomdepart']);
    $descri=htmlspecialchars($_POST['input_descridepart']);
        $logs= $my_bd->prepare("SELECT * FROM tbl_departement WHERE id_depart=?");
		$logs->execute(array($depart_id));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updatedepart=$my_bd->prepare("UPDATE tbl_departement SET nom_depart=?,descri_depart=? WHERE id_depart='$depart_id'");
            $updatedepart->execute(array($nomdepa,$descri));
        }

}

if(isset($_POST['suprimer'])){
    $depart_id=htmlspecialchars($_POST['id_depart']);
    if(isset($depart_id)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_departement WHERE id_depart=?");
        $recupdeletdata->execute(array($depart_id));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $delete=$my_bd->prepare("DELETE FROM tbl_departement WHERE id_depart=?");
            $delete->execute(array($depart_id));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/departement.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>