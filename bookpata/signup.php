<?php
 require('config/database.php');
 error_reporting(0);
 session_start();
 $today_date=date('Y-'.'m-'.'d');
 if($my_db){
     if (isset($_POST['create'])) {
         $o_names=htmlspecialchars($_POST['names']);
         $o_gender=htmlspecialchars($_POST['gender']);
         $o_country=htmlspecialchars($_POST['country']);
         $o_city=htmlspecialchars($_POST['city']);
         $o_mail=htmlspecialchars($_POST['mail']);
         $o_passw=htmlspecialchars($_POST['passw']);
         if (isset($o_mail)) {
             $logs=$my_db->prepare("SELECT * FROM users where emails=?");
             $logs->execute(array($o_mail));
             $logs->rowCount();
             $checks=$logs->fetch();
             if ($checks >0) {
                $log_failed = 'There is a user who have the same email';
             }else{    
                 setcookie('log_user',$o_mail, time() + (86400 * 30), "/");
                $insert_cookies=$my_db->prepare("INSERT INTO users (emails,fllname,gender,countri,citi,passwords) VALUES(?,?,?,?,?,?)");
                $insert_cookies->execute(array($o_mail,$o_names,$o_gender,$o_country,$o_city,$o_passw)); 
                header('Location: in');
             }  
         }
     }
     require_once('view/signup.view.php');
 }
?>