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
        $fetchdata=$my_bd->query("SELECT * FROM tbl_secretaire");
        if($fetchdata->rowCount() >0){
            while($checks=$fetchdata->fetch()){
                $dejaadd=$checks['status_btn'];
            }
        }

    }
    else{
        header('location: ../logout.php');
    }
}



if(isset($_POST['ajouter'])){
    $status="1";
    $nomsec=htmlspecialchars($_POST['input_nom']);
    $addressec=htmlspecialchars($_POST['input_address']);
    $secrphonesec=htmlspecialchars($_POST['input_phobe']);
    $natio=htmlspecialchars($_POST['input_mnation']);
    if(isset($nomsec)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_secretaire WHERE nom_secret=?");
        $recupdata->execute(array($nomsec));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("secretaire exist deja");
            </script>
            <?php
        }
        else{
            $insert_utili=$my_bd->prepare("INSERT INTO tbl_secretaire(id_user,nom_secret,address_secret,tele_secr,nation_sec,status_btn)VALUE(?,?,?,?,?,?)");
            $insert_utili->execute(array($userid,$nomsec,$addressec,$secrphonesec,$natio,$status));
        }
    }
}


if(isset($_POST['suprimer'])){
    $idsec=htmlspecialchars($_POST['input_id']);
    if(isset($idsec)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_secretaire WHERE id_secret=?");
        $recupdeletdata->execute(array($idsec));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $deleteuser=$my_bd->prepare("DELETE FROM tbl_secretaire WHERE id_secret=?");
            $deleteuser->execute(array($idsec));
        }

    }
}
if(isset($_POST['modifier'])){
    $idsec=htmlspecialchars($_POST['input_id']);
    $nomsec=htmlspecialchars($_POST['input_nom']);
    $addressec=htmlspecialchars($_POST['input_address']);
    $secrphonesec=htmlspecialchars($_POST['input_phobe']);
    $natio=htmlspecialchars($_POST['input_natio']);
    if(isset($nomsec)){
        $logs= $my_bd->prepare("SELECT * FROM tbl_secretaire WHERE id_secret=?");
		$logs->execute(array($idsec));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updateuser=$my_bd->prepare("UPDATE tbl_secretaire SET nom_secret=?,address_secret=?,tele_secr=?,nation_sec=? WHERE id_secret='$idsec'");
            $updateuser->execute(array($nomsec,$addressec,$secrphonesec,$natio));
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