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
    }
    else{
        header('location: ../logout.php');
    }
}
if(isset($_POST['imagese'])){
    $iduse=htmlspecialchars($_POST['input_idutili']);
            $imagename=$_FILES['imagename']['name'];
            $file_extension=strrchr($imagename, ".");
            $file_tmp_name=$_FILES['imagename']['tmp_name'];
            $path='photos/'.'-'.$imagename;
            $extension_allowed=array('.jpg','.JPG','.png','.PNG','.jpeg','.JPEG');
            if(in_array($file_extension,$extension_allowed)){
                if(move_uploaded_file($file_tmp_name, $path)){
                    $updateuser=$my_bd->prepare("UPDATE tbl_users SET image_util=? WHERE id_user='$iduse'");
                    $updateuser->execute(array($path));
                }
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
            $file_name=$_FILES['image_name']['name'];
            $file_extension=strrchr($file_name, ".");
            $file_tmp_name=$_FILES['image_name']['tmp_name'];
            $path='photos/'.'-'.$file_name;
            $extension_allowed=array('.jpg','.png','.jpeg');
            if(in_array($file_extension,$extension_allowed)){
                if(move_uploaded_file($file_tmp_name, $file_name)){
                    $insert_utili=$my_bd->prepare("INSERT INTO tbl_users(image_util,nom_utili,email_util,password_util,role_util)VALUE(?,?,?,?,?)");
                    $insert_utili->execute(array($file_name,$us_username,$us_mail,$us_password,$us_role));
                }
            }
        }
    }
}

if(isset($_POST['modifier'])){
    $us_id=htmlspecialchars($_POST['input_idutili']);
    $us_username=htmlspecialchars($_POST['input_nonutili']);
    $us_mail=htmlspecialchars($_POST['input_mail']);
    $us_password=htmlspecialchars($_POST['input_password']);
    $us_role=htmlspecialchars($_POST['input_role']);
    if(isset($us_username) and !empty($us_mail) and !empty($us_password) and !empty($us_role)){
        $logs= $my_bd->prepare("SELECT * FROM tbl_users WHERE id_user=?");
		$logs->execute(array($us_id));
		$logs->rowCount();
		$checks=$logs->fetch();
        if($checks >0){
            $file_name=$_FILES['image_name']['name'];
            $file_extension=strrchr($file_name, ".");
            $file_tmp_name=$_FILES['image_name']['tmp_name'];
            $path='photos/'.'-'.$file_name;
            $extension_allowed=array('.jpg','.png','.jpeg');
            if(in_array($file_extension,$extension_allowed)){
            if(move_uploaded_file($file_tmp_name, $path)){
            $updateuser=$my_bd->prepare("UPDATE tbl_users SET image_util=?, nom_utili=?,email_util=?,password_util=?,role_util=? WHERE id_user='$us_id'");
            $updateuser->execute(array($path,$us_username,$us_mail,$us_password,$us_role));
        }
    }

}
}
}

if(isset($_POST['suprimer'])){
    $us_id= htmlspecialchars($_POST['iduser']);
    if(isset($us_id)){
        $recupdeletdata=$my_bd->prepare("SELECT * FROM tbl_users WHERE id_user=?");
        $recupdeletdata->execute(array($us_id));
        $recupdeletdata->rowCount();
        $check=$recupdeletdata->fetch();
        if($check >0){
            $deleteuser=$my_bd->prepare("DELETE FROM tbl_users WHERE id_user=?");
            $deleteuser->execute(array($us_id));
        }

    }
}



if($my_bd==true){
    if(isset($utilisacookies) and !empty($utilisasession)){
        require('view/utilisateur.view.php');
    }
    else{
        header('location: ../logout.php');
    }
}
?>