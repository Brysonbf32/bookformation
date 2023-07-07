<?php
include('../config/databases.php');
//error_reporting(0);
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


        $fetchdata=$my_bd->query("SELECT * FROM tbl_module");
        if($fetchdata->rowCount() >0){
            while($checks=$fetchdata->fetch()){
                $prixtotal=$checks['prix_mod'];
            }
        }
    }
    else{
        header('location: ../logout.php');
    }
}

if(isset($_POST['ajouter'])){
    $nommodul=htmlspecialchars($_POST['input_modul']);
    $refemo=htmlspecialchars($_POST['input_refemo']);
    $prixmod=htmlspecialchars($_POST['input_prix']);
    $duree=htmlspecialchars($_POST['input_duree']);
    if(isset($nommodul) and !empty($refemo) and !empty($prixmod) and !empty($duree)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_detail_mod WHERE ref_detail=?");
        $recupdata->execute(array($refemo));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("Detail module exist deja");
            </script>
            <?php
        }
        else{
            $insert_detaimo=$my_bd->prepare("INSERT INTO tbl_detail_mod(id_mod,ref_detail,prix_deta,duree_format)VALUE(?,?,?,?)");
            $insert_detaimo->execute(array($nommodul,$refemo,$prixmod,$duree));
        }
    }
}
if(isset($_POST['modifier'])){
    $iddetmo=htmlspecialchars($_POST['input_idmodet']);
    $nommodul=htmlspecialchars($_POST['input_modul']);
    $refemo=htmlspecialchars($_POST['input_refemo']);
    $prixmod=htmlspecialchars($_POST['input_prix']);
    $duree=htmlspecialchars($_POST['input_duree']);
        $logs=$my_bd->prepare("SELECT * FROM tbl_detail_mod WHERE id_detai=?");
		$logs->execute(array($iddetmo));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updatedepart=$my_bd->prepare("UPDATE tbl_detail_mod SET id_mod=?,ref_detail=?,prix_deta=?,duree_format=? WHERE id_detai='$iddetmo'");
            $updatedepart->execute(array($nommodul,$refemo,$prixmod,$duree));
        }
}
if(isset($_POST['suprimer'])){
    $idmod=htmlspecialchars($_POST['input_idmo']);
    if(isset($idmod)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_detail_mod WHERE id_detai=?");
        $recupdeletdata->execute(array($idmod));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $delete=$my_bd->prepare("DELETE FROM tbl_detail_mod WHERE id_detai=?");
            $delete->execute(array($idmod));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/paiement.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>