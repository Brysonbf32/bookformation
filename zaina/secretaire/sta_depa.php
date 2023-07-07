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
    $stagiaire=htmlspecialchars($_POST['input_sta']);
    $module=htmlspecialchars($_POST['input_module']);
    $montpayee=htmlspecialchars($_POST['input_montpaye']);
    if(isset($stagiaire) and !empty($module) and !empty($montpayee)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_stagiaire_module WHERE id_sta=? AND id_mod=?");
        $recupdata->execute(array($stagiaire,$module));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("Cette affectation existe deja");
            </script>
            <?php
        }
        else{
            if(current($montpayee) < current($prixtotal))
            {
                $errormontant="Montant payeer ne peux pas etre superieur au montant total";
            }
            else{
                $insert_utili=$my_bd->prepare("INSERT INTO tbl_stagiaire_module(id_sta,id_mod,motant_paye)VALUE(?,?,?)");
                $insert_utili->execute(array($stagiaire,$module,$montpayee));
            }
        }
    }
}


if(isset($_POST['suprimer'])){
    $idsec=htmlspecialchars($_POST['input_id']);
    if(isset($idsec)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_stagiaire_module WHERE id_stamod=?");
        $recupdeletdata->execute(array($idsec));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $deleteuser=$my_bd->prepare("DELETE FROM tbl_stagiaire_module WHERE id_stamod=?");
            $deleteuser->execute(array($idsec));
        }

    }
}
if(isset($_POST['modifier'])){
    $idsta=htmlspecialchars($_POST['input_id']);
    $nomsta=htmlspecialchars($_POST['input_depa']);
    $stage=htmlspecialchars($_POST['input_sta']);
    $matri=htmlspecialchars($_POST['input_matri']);
    if(isset($nomsta)){
        $logs= $my_bd->prepare("SELECT * FROM tbl_aff_depart_student WHERE id_aff=?");
		$logs->execute(array($idsta));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updateuser=$my_bd->prepare("UPDATE tbl_aff_depart_student SET id_depart=?,id_sta=?,matric_sta=? WHERE id_aff='$idsta'");
            $updateuser->execute(array($nomsta,$stage,$matri));
        }
    }

}


if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/sta_depa.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>