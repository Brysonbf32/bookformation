<?php
 require('config/database.php');
 error_reporting(0);
 session_start();
 $today_date=date('Y-'.'m-'.'d');
 if($my_db){
     if (isset($_POST['loginx'])) {
         $o_mail=htmlspecialchars($_POST['email']);
         $o_passw=htmlspecialchars($_POST['passw']);
         if (isset($o_mail) and !empty($o_passw)) {
             $logs=$my_db->prepare("SELECT * FROM users where emails=? AND passwords=?");
             $logs->execute(array($o_mail,$o_passw));
             $logs->rowCount();
             $checks=$logs->fetch();
             if ($checks >0) {
                setcookie('log_user',$o_mail, time() + (86400 * 30), "/"); 
                header('Location: in');
             }else{    
                $log_failed = 'Unknow credentials...';
             }  
         }
     }
     require_once('view/signin.view.php');
 }
?>