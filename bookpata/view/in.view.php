<?php require_once('headers.php'); ?>
<section class="w3l-clients" id="testimonials">
    <div class="container">
        <div class="row w3-testimonial-grids align-items-center">
            <div class="col-lg-12 w3-testimonial-content-top">
                <div class="testimonial pb-1">
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
                            <p class="indentity"><?=$cookies_gender?> | <?=$cookies_countri?>, <?=$cookies_citi?>
                            <br>
                            <a data-toggle="modal" data-target="#folder" class="btn-sm pull-right btn-success flder-btn" align="right">&nbsp;&nbsp;New folder&nbsp;&nbsp;</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="fdr_v">
                    <h3 class="fdr_my text-center py-2">My folders</h3>
                </div><br> 
            </div>
        </div>
    </div>
</section>
<div class="w3-stats">
    <div class="container pb-lg-5 pb-md-4 pb-2">
        <div class="row text-center">
            <?php
                $classO=$my_db->query("SELECT * from user_folder WHERE email='$o_mail_cookies' ORDER by id DESC");
                if ($classO->rowCount()>0) {
                    while ($checkO=$classO->fetch()) {
                        $s_id_add=$checkO['id'];
                        $s_folder_id=$checkO['folder_id'];
                        $s_folder_name=$checkO['folder_name'];
                        
                        $total_docx = current($my_db->query("SELECT count(*) FROM user_document WHERE email='$o_mail_cookies' AND folder_id='$s_folder_id'")->fetch());
            ?>
            <div class="col-md-3 col-6 pb-2">
                <a href="folder?x=<?=$s_folder_id?>">
                    <div class="counter container bc-clr">
                        <div class="timer count-title count-number" data-to="6370" data-speed="1500"></div>
                        <i class="fa fa-folder-open fdr" aria-hidden="true"></i>
                        <p class="count-text"><?=$s_folder_name?></p>
                        <p class="count-text"><?=$total_docx?></p>
                    </div>
                </a>
            </div>
            <?php
                }
            }
            ?> 
        </div>
    </div>
</div>

<div class="modal fade" id="folder" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <form method="POST">
            <div class="area-box bg-cl">
                <i class="fa fa-folder-open fdr-clr" aria-hidden="true"></i>
                <h4><a class="title-head">Create folder</a></h4>
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <label>Folder name</label>
                        <input  type="mail" class="form-control fms" placeholder="Folder" name="folders" required>
                    </div>
                    <div class="col-lg-12 pull-right" align="right"><br>
                        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                        <button class="btn-sm pull-right btn-default" type="submit" name="folder">Save</button>
                    </div>
                </div>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php require_once('footers.php'); ?>
  