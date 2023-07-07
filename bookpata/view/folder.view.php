<?php require_once('headers.php'); ?>

<section class="w3l-clients" id="testimonials">
    <div class="container">
        <div class="row w3-testimonial-grids align-items-center">
            <div class="col-lg-12 w3-testimonial-content-top">
                <div class="testimonial">
                    <div class="testi-des">
                        <?php
                        if($cookies_gender == "Male"){
                        ?>
                            <div class="test-img rds-img"><img src="icon/avatar.jpg" class="img-fluid" alt="client-img"> </div>
                        <?php
                        }
                        else{
                            ?>
                                <div class="test-img rds-img"><img src="icon/avatarh.png" class="img-fluid" alt="client-img"> </div>
                            <?php
                        }
                        ?>
                        <div class="peopl align-self">
                            <h3><?=$cookies_flname?></h3>
                            <p class="indentity"><?=$cookies_gender?> | <?=$cookies_countri?>, <?=$cookies_citi?></p>
                        </div>
                    </div>
                    <div class="fdr_v">
                        <h3 class="fdr_my text-center py-2"><?=$fdr_folder_name?></h3>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</section>
<div class="w3-stats pt-4">
    <div class="container pb-lg-5 pb-md-4 pb-2">
        <div class="row text-center"> 
            <div class="col-lg-4 col-12">
                <div class="form_inter rds">
                    <form method="POST" enctype="multipart/form-data">
                        <div class="row container py-2" align="left">
                            <h5>New document</h5>
                            <hr>
                            <div class="col-lg-12">
                                <label class="">File name</label>
                                <input class="form-control fms" placeholder="File name" type="text" name="file_name" required>
                            </div>
                            <div class="col-lg-12"><br>
                                <label class="">Document a docuemnt</label>
                                <input class="form-control fms" type="file" name="filex" required>
                            </div>
                            <div class="col-lg-12">
                                <hr>
                                <button type="submit" name="new_file" class="btn-sm pull-right btn-default">&nbsp;&nbsp;Add file&nbsp;&nbsp;</button>
                                <br><br>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-8 col-12">
                <div class="row form_inter container rds py-3">
                    <?php
                        $classO=$my_db->query("SELECT * from user_document WHERE email='$o_mail_cookies' AND folder_id='$folder_id_rands' ORDER by id DESC");
                        if ($classO->rowCount()>0) {
                            while ($checkO=$classO->fetch()) {
                                $s_add=$checkO['id'];
                                $s_doc_name=$checkO['doc_name'];
                                $s_doc_link=$checkO['doc_link'];
                                $s_doc_ext=$checkO['doc_ext'];
                                $s_doc_date=$checkO['doc_date'];
                                ?>
                                <div class="modal fade" id="files<?=$s_add?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-body">
                                            <form method="POST">
                                                <div class="area-box bg-cl">
                                                    <?php 
                                                        if($s_doc_ext == ".DOCX" || $s_doc_ext == ".docx"){
                                                            ?>
                                                                <img class="img-fluid rounded" src="icon/words.png" alt="">
                                                            <?php
                                                        }
                                                        elseif($s_doc_ext == ".XLS" || $s_doc_ext == ".xls" || $s_doc_ext == ".XLSX" || $s_doc_ext == ".xlsx"){
                                                            ?>
                                                                <img class="img-fluid rounded" src="icon/excels.png" alt="">
                                                            <?php
                                                        }
                                                        elseif($s_doc_ext == ".ODP" || $s_doc_ext == ".odp"){
                                                            ?>
                                                                <img class="img-fluid rounded" src="icon/pdf.png" alt="">
                                                            <?php
                                                        }
                                                        elseif($s_doc_ext == ".PDF" || $s_doc_ext == ".pdf"){
                                                            ?>
                                                                <img class="img-fluid rounded" src="icon/pdf.png" alt="">
                                                            <?php
                                                        }
                                                        else{
                                                            ?>
                                                                <img class="img-fluid rounded" src="icon/image.png" alt="">
                                                            <?php
                                                        }

                                                        ?>
                                                    <h4><a class="title-head"><strong class="siz_dow">Would like to delete</strong><br><strong><?=$s_doc_name?></strong></a></h4>
                                                    <br>
                                                    <input type="hidden" value="<?=$s_add?>" name="id_file">
                                                    <div class="row">
                                                        <div class="col-lg-12 pull-right" align="center"><br>
                                                            <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                                                            <button class="btn btn-sm btn-danger" type="submit" name="delete_file">Delete</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                    ?>
                        <div class="col-lg-3 col-6 pt-2">
                            <div class="contentx" id="contentx">
                                <a onclick = "createPopupWin('MyFolder/<?=$s_doc_name?>','<?=$s_doc_link?>', 800, 500);" class="">
                                    <div class="timer count-title count-number" data-to="6370" data-speed="1500"></div>
                                    <?php 
                                     if($s_doc_ext == ".DOCX" || $s_doc_ext == ".docx"){
                                        ?>
                                            <img class="img-fluid rounded" src="icon/words.png" alt="">
                                        <?php
                                     }
                                     elseif($s_doc_ext == ".XLS" || $s_doc_ext == ".xls" || $s_doc_ext == ".XLSX" || $s_doc_ext == ".xlsx"){
                                        ?>
                                            <img class="img-fluid rounded" src="icon/excels.png" alt="">
                                        <?php
                                     }
                                     elseif($s_doc_ext == ".ODP" || $s_doc_ext == ".odp"){
                                        ?>
                                            <img class="img-fluid rounded" src="icon/pdf.png" alt="">
                                        <?php
                                     }
                                     elseif($s_doc_ext == ".PDF" || $s_doc_ext == ".pdf"){
                                        ?>
                                            <img class="img-fluid rounded" src="icon/pdf.png" alt="">
                                        <?php
                                     }
                                     else{
                                        ?>
                                            <img class="img-fluid rounded" src="icon/image.png" alt="">
                                        <?php
                                     }

                                    ?>
                                    <p class="count_textxx"><?=$s_doc_name?></p>
                                    <p class="count_textxx_low"><?=$s_doc_date?></p>
                                </a>
                                <div class="">
                                    <button data-toggle="modal" data-target="#files<?=$s_add?>"  class="btn-sm btn btn-default deletex" type="submit" name="">Delete</button>
                                </div>
                            </div>
                        </div>
                        <?php
                                }
                            }
                            else{
                                $emptox = "This folder is empty";
                                ?>
                                    <div class="text-center">
                                        <div class="timer count-title count-number" data-to="6370" data-speed="1500"></div>
                                        <i class="fa fa-folder-open fdr" aria-hidden="true"></i>
                                        <p class="count-text"><?=$emptox?></p>
                                    </div>
                                <?php
                            }
                            ?> 
                    </div>
            </div>
        </div>
    </div>
</div>
<?php require_once('footers.php'); ?>


<script>
        function createPopupWin(pageURL, pageTitle,
                    popupWinWidth, popupWinHeight) {
            var left = (screen.width - popupWinWidth) / 2;
            var top = (screen.height - popupWinHeight) / 4;
             
            var myWindow = window.open(pageURL, pageTitle,
                    'resizable=yes, width=' + popupWinWidth
                    + ', height=' + popupWinHeight + ', top='
                    + top + ', left=' + left);
        }
    </script>
    

  