<?php require_once('header.php'); ?>
    <section class="w3l-bottom-grids-6 py-5 bodys">
        <div class="container pt-lg-5 pt-md-4 pt-2">
            <div class="row justify-content-center py-5">
                <div class="col-lg-4 col-md-6 ">
                    <form method="POST">
                        <div class="area-box bg-cl">
                            <i class="fa fa-unlock" aria-hidden="true"></i>
                            <h4><a class="title-head">Credentials</a></h4>
                            <div class="">
                                <?php
                                    if (isset($log_failed)) {
                                    ?>
                                    <div class="alert alert-default alert-sm text-center alrto" role="alert"><i class="fa fa-exclamation-triangle fa-size" aria-hidden="true"></i> &nbsp;<?=$log_failed?></div>
                                    <?php
                                    }?>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <label>Email</label>
                                    <input  type="mail" class="form-control fms" placeholder="Email" name="email" required>
                                </div>
                                <div class="col-lg-12">
                                    <label>Password</label>
                                    <input type="password" class="form-control fms" placeholder="Password" name="passw" required>
                                </div>
                                <div class="col-lg-12 text-center"><br>
                                    <button class="btn btn-sm btn-style" type="submit" name="loginx">Sign In</button>
                                </div>
                            </div>
                            <p class="acnt_siz text-center">
                                Have you forget your password ? &nbsp;<br><a href="restore" class="logins"> Reset </a>
                            </p>
                            <hr>
                            <p class="acnt_siz">
                                Have you not registered ?&nbsp;<a href="signup" class="logins"> Create account </a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
            <br><br><br><br>
        </div>
    </section>
<?php require_once('footer.php'); ?>
  