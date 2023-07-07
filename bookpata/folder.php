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
    if(isset($o_mail_cookies)){
        if (isset($_GET['x'])) {
            $folder_id_rands=$_GET['x'];
            if(isset($folder_id_rands)){
                $select=$my_db->query("SELECT * FROM user_folder WHERE email='$o_mail_cookies' AND folder_id='$folder_id_rands'");
                $select->rowCount();
                $check=$select->fetch();
                if ($check >0) {
                    $fdr_folder_name=$check['folder_name'];
                } 
            }
        }
    }
    

    function rand_string( $length ) {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return substr(str_shuffle($chars),0,$length);
    }
    $doc_rand_id= rand_string(50);


    if($my_db || $cookies_mail){
    
        if (isset($_POST['new_file'])) {
            $file_name=htmlspecialchars($_POST['file_name']);
            $select=$my_db->query("SELECT * FROM user_document WHERE email='$o_mail_cookies' AND folder_id='$folder_id_rands' AND doc_name='$file_name'");
            $select->rowCount();
            $check=$select->fetch();
            if ($check >0) {
                ?>
                    <script>
                        alert("Sorry the document name entered existed");
                    </script>
                <?php
            } 
            else{
                $filex=time() . '_' . $_FILES['filex']['name'];
                $file_extension=strrchr($filex, "."); 
                $file_tmp_name= $_FILES['filex']['tmp_name'];
                $path='MyFolder/'.basename($filex);
                $extension_allowed=array('.png','.PNG','.jpeg','.JPEG','.jpg','.JPG','.jif','.JIF','.pdf','.PDF','.xls','.XLS','.xlsx','.XLSX','.docx','.DOCX','.odp','.ODP');          
                if (in_array($file_extension, $extension_allowed)) {
                    if (move_uploaded_file($file_tmp_name, $path)){
                            if (isset($filex)) {
                                $new_doc=$my_db->prepare("INSERT INTO user_document (email,folder_id,doc_name,doc_link,doc_ext,doc_date) VALUES (?,?,?,?,?,?)");
                                $new_doc->execute(array($cookies_mail,$folder_id_rands,$filex,$doc_rand_id,$file_extension,$today_date));
                                header("Refresh:0");
                            }
                    }
                }
            }  
        }
        if (isset($_POST['delete_file'])) {
            $id_file=htmlspecialchars($_POST['id_file']);
            $select=$my_db->query("SELECT * FROM user_document WHERE id='$id_file'");
            $select->rowCount();
            $check=$select->fetch();
            if ($check >0) {
                $delete_file=$my_db->prepare("DELETE FROM user_document WHERE id=?");
                $delete_file->execute(array($id_file));
                header("Refresh:0");
            } 
        }
        if($cookies_mail){
            require('view/folder.view.php');
        }
        else{
            header('location:../'); 
        }    
    } 
?>