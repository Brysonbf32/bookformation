<?php require_once('header.php'); ?>
    <section class="w3l-bottom-grids-6 py-5 bodys">
        <div class="container pt-lg-5 pt-md-4 pt-2">
            <div class="row justify-content-center py-5">
                <div class="col-lg-4 col-md-6 ">
                    <div class="area-box bg-cl">
                        <i class="fa fa-user-plus" aria-hidden="true"></i>
                        <h4><a class="title-head">Create account</a></h4>
                        <div class="">
                            <?php
                                if (isset($log_failed)) {
                                ?>
                                <div class="alert alert-default alert-sm text-center alrto" role="alert"><i class="fa fa-exclamation-triangle fa-size" aria-hidden="true"></i> &nbsp;<?=$log_failed?></div>
                                <?php
                            }?>
                        </div>
                        <form method="POST">
                            <div class="row">
                                <div class="col-lg-12">
                                    <label>Full name</label>
                                    <input  type="text" class="form-control fms" placeholder="Name" name="names" required>
                                </div>
                                <div class="col-lg-12">
                                    <label>Gender</label>
                                    <select type="text" class="form-control fms" placeholder="Name" name="gender" required>
                                        <option value="">... Select ...</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                                <div class="col-lg-6">
                                    <label>Country</label>
                                    <select type="text" class="form-control fms" name="country" required>
                                        <option value="">... Select ...</option>
                                        <option value="Burundi">Burundi</option>
                                        <option value="RD Congo">RD Congo</option>
                                        <option value="Rwanda">Rwanda</option>
                                        <option value="Uganda">Uganda</option>
                                        <option value="Tanzania">Tanzania</option>
                                        <option value="Kenya">Kenya</option>
                                        <option value="Soudan">Soudan</option>
                                    </select>
                                </div>
                                <div class="col-lg-6">
                                    <label>City</label>
                                    <input  type="text" class="form-control fms" placeholder="Town" name="city" required>
                                </div>
                                <div class="col-lg-12">
                                    <label>Email</label>
                                    <input  type="mail" class="form-control fms" placeholder="Email" name="mail" required>
                                </div>
                                <div class="col-lg-12">
                                    <label>Password</label>
                                    <input type="password" class="form-control fms" placeholder="Password" name="passw" required>
                                </div>
                                <div class="col-lg-12 text-center"><br>
                                    <button class="btn btn-sm btn-style" type="submit" name="create">Create account</button>
                                </div>
                            </div>
                        </form>
                        <p class="acnt_siz">
                            Have you an account &nbsp;<a href="signin" class="logins"> Login </a></p>
                    </div>
                </div>
            </div>
            <br><br><br><br>
        </div>
    </section>
<?php require_once('footer.php'); ?>
  