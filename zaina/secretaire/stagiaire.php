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
    $sta_depa=htmlspecialchars($_POST['input_depa']);
    $sta_phone=htmlspecialchars($_POST['input_phone']);
    $sta_nom=htmlspecialchars($_POST['input_nom']);
    $sta_datnai=htmlspecialchars($_POST['input_daten']);
    $sta_mail=htmlspecialchars($_POST['input_mail']);
    $sta_sexe=htmlspecialchars($_POST['input_sexe']);
    $sta_addres=htmlspecialchars($_POST['input_addrsss']);
    $sta_univ=htmlspecialchars($_POST['input_univer']);
    $sta_fac=htmlspecialchars($_POST['input_fac']);
    $sta_niv=htmlspecialchars($_POST['input_niveau']);
    if(isset($sta_mail)){
        $recupdata=$my_bd->prepare("SELECT * FROM tbl_stagiares WHERE mail_sta=?");
        $recupdata->execute(array($sta_mail));
        $recupdata->rowCount();
        $checkdata=$recupdata->fetch();
        if($checkdata >0){
            ?>
            <script>
                alert("Stagiaire exist deja");
            </script>
            <?php
        }
        else{
            $insert_utili=$my_bd->prepare("INSERT INTO tbl_stagiares(id_depart,id_user,nom_sta,date_naissa,mail_sta,phone_sta,sta_sexe,address_stag,sta_univ,sta_fac,sta_nivee)VALUE(?,?,?,?,?,?,?,?,?,?,?)");
            $insert_utili->execute(array($sta_depa,$userid,$sta_nom,$sta_datnai,$sta_mail,$sta_phone,$sta_sexe,$sta_addres,$sta_univ,$sta_fac,$sta_niv));
        }
    }
}
if(isset($_POST['modifier'])){
    $idsta=htmlspecialchars($_POST['input_idsta']);
    $sta_nom=htmlspecialchars($_POST['input_nom']);
    $sta_datnai=htmlspecialchars($_POST['input_daten']);
    $sta_mail=htmlspecialchars($_POST['input_mail']);
    $sta_sexe=htmlspecialchars($_POST['input_sexe']);
    $sta_addres=htmlspecialchars($_POST['input_addrsss']);
    $sta_univ=htmlspecialchars($_POST['input_univer']);
    $sta_fac=htmlspecialchars($_POST['input_fac']);
    $sta_niv=htmlspecialchars($_POST['input_niveau']);
    if(isset($idsta)){
        $logs= $my_bd->prepare("SELECT * FROM tbl_stagiares WHERE id_sta=?");
		$logs->execute(array($idsta));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $updateuser=$my_bd->prepare("UPDATE tbl_stagiares SET nom_sta=?,date_naissa=?,mail_sta=?,sta_sexe=?,address_stag=?,sta_univ=?,sta_fac=?,sta_nivee=? WHERE id_sta='$idsta'");
            $updateuser->execute(array($sta_nom,$sta_datnai,$sta_mail,$sta_sexe,$sta_addres,$sta_univ,$sta_fac,$sta_niv));
        }
    }

}

if(isset($_POST['suprimer'])){
    $stag= htmlspecialchars($_POST['input_sta']);
    if(isset($stag)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_stagiares WHERE id_sta=?");
        $recupdeletdata->execute(array($stag));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $deleteuser=$my_bd->prepare("DELETE FROM tbl_stagiares WHERE id_sta=?");
            $deleteuser->execute(array($stag));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/stagiaire.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>