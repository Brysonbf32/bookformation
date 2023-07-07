<?php
    require('config/database.php');
    //error_reporting(0);
    session_start();
    $today_date=date('Y-'.'m-'.'d');
    $o_mail_cookies=$_COOKIE['log_user'];
    if(isset($o_mail_cookies)){
        $select=$my_db->query("SELECT * FROM users WHERE emails='$o_mail_cookies'");
        $select->rowCount();
        $check=$select->fetch();
        if ($check >0) {
            $cookies_mail=$check['emails'];
            $cookies_flname=$check['fllname'];
            $cookies_gender=$check['gender'];
            $cookies_countri=$check['countri'];
            $cookies_citi=$check['citi'];
        }
        else{
            header('Location: logout');
        } 
    }

    function rand_string( $length ) {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return substr(str_shuffle($chars),0,$length);
    }
    $folder_id= rand_string(5000);
    if($my_db || $cookies_mail){
    
        if (isset($_POST['folder'])) {
            $folders=htmlspecialchars($_POST['folders']);
            if (isset($folders)) {
                $task_check=$my_db->prepare("SELECT * FROM user_folder email=? WHERE folder_id=?");
                $task_check->execute(array($o_mail_cookies,$folder_id));
                $task_check->rowCount();
                $checks=$task_check->fetch();
                if ($checks >0) {
                }else{ 
                    $new_folder=$my_db->prepare("INSERT INTO user_folder (email,folder_id,folder_name) VALUES(?,?,?)");
                    $new_folder->execute(array($o_mail_cookies,$folder_id,$folders));
                    if($new_folder){
                        header("location:folder?x={$folder_id}");
                        exit;
                    }
                }  
            }
        }
        if($cookies_mail){
            require('view/in.view.php');
        }
        else{
            header('location:../'); 
        }    
    } 
?>