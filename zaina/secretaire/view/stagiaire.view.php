<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="robots" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="Zenix - Crypto Admin Dashboard">
	<meta property="og:title" content="Zenix - Crypto Admin Dashboard">
	<meta property="og:description" content="Zenix - Crypto Admin Dashboard">
	<meta property="og:image" content="https://zenix.dexignzone.com/xhtml/social-image.png">
	<meta name="format-detection" content="telephone=no">
    <title>like </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon.png">
    <link rel="stylesheet" href="../vendor/chartist/css/chartist.min.css">
	<link href="../vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <script rel="stylesheet" type="text/javascript" src="../vendor/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
    <link href="../css/style.css" rel="stylesheet">
</head>
<style>
	.icon_bo{
		font-size: 15px!important;
		color: white!important;
	}
	.buton_add{
		background-color: #7E7E7E!important;
		padding: 1px!important;
		border: 1px solid #7E7E7E;
		border-radius: 5px;
	}
	.buton_close{
		background-color: #EB8153!important;
		padding: 1px!important;
		border: 1px solid #EB8153;
		border-radius: 5px;
	}
	.btn_modalclose{
		font-size: 13px!important;
		border: 1px solid white!important;
		background-color: transparent!important;
	}
	.modal-title{
		font-weight:bold;
		color: #889096!important;
	}
</style>
<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <a href="../index.html" class="brand-logo">
                <svg class="logo-abbr" width="50" height="50" viewbox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
					<rect class="svg-logo-rect" width="50" height="50" rx="6" fill="#EB8153"></rect>
					<path class="svg-logo-path" d="M17.5158 25.8619L19.8088 25.2475L14.8746 11.1774C14.5189 9.84988 15.8701 9.0998 16.8205 9.75055L33.0924 22.2055C33.7045 22.5589 33.8512 24.0717 32.6444 24.3951L30.3514 25.0095L35.2856 39.0796C35.6973 40.1334 34.4431 41.2455 33.3397 40.5064L17.0678 28.0515C16.2057 27.2477 16.5504 26.1205 17.5158 25.8619ZM18.685 14.2955L22.2224 24.6007L29.4633 22.6605L18.685 14.2955ZM31.4751 35.9615L27.8171 25.6886L20.5762 27.6288L31.4751 35.9615Z" fill="white"></path>
				</svg>
                <svg class="brand-title" width="74" height="22" viewbox="0 0 74 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path class="svg-logo-path" d="M0.784 17.556L10.92 5.152H1.176V1.12H16.436V4.564L6.776 16.968H16.548V21H0.784V17.556ZM25.7399 21.28C24.0785 21.28 22.6599 20.9347 21.4839 20.244C20.3079 19.5533 19.4025 18.6387 18.7679 17.5C18.1519 16.3613 17.8439 15.1293 17.8439 13.804C17.8439 12.3853 18.1519 11.088 18.7679 9.912C19.3839 8.736 20.2799 7.79333 21.4559 7.084C22.6319 6.37467 24.0599 6.02 25.7399 6.02C27.4012 6.02 28.8199 6.37467 29.9959 7.084C31.1719 7.79333 32.0585 8.72667 32.6559 9.884C33.2719 11.0413 33.5799 12.2827 33.5799 13.608C33.5799 14.1493 33.5425 14.6253 33.4679 15.036H22.6039C22.6785 16.0253 23.0332 16.7813 23.6679 17.304C24.3212 17.808 25.0585 18.06 25.8799 18.06C26.5332 18.06 27.1585 17.9013 27.7559 17.584C28.3532 17.2667 28.7639 16.8373 28.9879 16.296L32.7959 17.36C32.2172 18.5173 31.3119 19.46 30.0799 20.188C28.8665 20.916 27.4199 21.28 25.7399 21.28ZM22.4919 12.292H28.8759C28.7825 11.3587 28.4372 10.6213 27.8399 10.08C27.2612 9.52 26.5425 9.24 25.6839 9.24C24.8252 9.24 24.0972 9.52 23.4999 10.08C22.9212 10.64 22.5852 11.3773 22.4919 12.292ZM49.7783 21H45.2983V12.74C45.2983 11.7693 45.1116 11.0693 44.7383 10.64C44.3836 10.192 43.9076 9.968 43.3103 9.968C42.6943 9.968 42.069 10.2107 41.4343 10.696C40.7996 11.1813 40.3516 11.8067 40.0903 12.572V21H35.6103V6.3H39.6423V8.764C40.1836 7.90533 40.949 7.23333 41.9383 6.748C42.9276 6.26267 44.0663 6.02 45.3543 6.02C46.3063 6.02 47.0716 6.19733 47.6503 6.552C48.2476 6.888 48.6956 7.336 48.9943 7.896C49.3116 8.43733 49.517 9.03467 49.6103 9.688C49.7223 10.3413 49.7783 10.976 49.7783 11.592V21ZM52.7548 4.62V0.559999H57.2348V4.62H52.7548ZM52.7548 21V6.3H57.2348V21H52.7548ZM63.4657 6.3L66.0697 10.444L66.3497 10.976L66.6297 10.444L69.2337 6.3H73.8537L68.9257 13.608L73.9657 21H69.3457L66.6017 16.884L66.3497 16.352L66.0977 16.884L63.3537 21H58.7337L63.7737 13.692L58.8457 6.3H63.4657Z" fill="black"></path>
				</svg>
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
							<div class="input-group search-area right d-lg-inline-flex d-none">
								<input type="text" id="searchda" class="form-control" placeholder="Faire Recherche...">
								<div class="input-group-append">
									<span class="input-group-text">
										<a href="javascript:void(0)">
											<i class="flaticon-381-search-2"></i>
										</a>
									</span>
								</div>
							</div>
                        </div>
                        <ul class="navbar-nav header-right main-notification">
                            <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <img src="images/profile/pic1.jpg" width="20" alt="">
									<div class="header-info">
										<span><?=$nomuser?></span>
										<small><?=$roleuser?></small>
									</div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="app-profile.html" class="dropdown-item ai-icon">
                                        <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                        <span class="ml-2">Profile </span>
                                    </a>
                                    <a href="../logout.php" class="dropdown-item ai-icon">
                                        <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                        <span class="ml-2">Logout </span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
				<div class="sub-header">
					<div class="d-flex align-items-center flex-wrap mr-auto">
						<h5 class="dashboard_bar">Dashboard</h5>
					</div>
					<div class="d-flex align-items-center">
						<a href="javascript:void(0);" class="btn btn-xs btn-primary light mr-1">Today</a>
						<a href="javascript:void(0);" class="btn btn-xs btn-primary light mr-1">Month</a>
						<a href="javascript:void(0);" class="btn btn-xs btn-primary light">Year</a>
					</div>
				</div>
			</div>
        </div>

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="deznav">
            <div class="deznav-scroll">
				<div class="main-profile">
					<div class="image-bx">
						<img src="images/Untitled-1.jpg" alt="">
						<a href="javascript:void(0);"><i class="fa fa-cog" aria-hidden="true"></i></a>
					</div>
					<h5 class="name"><span class="font-w400">Bienvenu,</span><?=$nomuser?></h5>
					<p class="email"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f69b97848783938c8c8c8cb69b979f9ad895999b">[email&#160;protected]</a></p>
				</div>
				<ul class="metismenu" id="menu">
					<li class="nav-label first">Main Menu</li>
					<li><a href="index.php" class="ai-icon" aria-expanded="false">
							<i class="flaticon-381-settings-2"></i>
							<span class="nav-text">Index</span>
						</a>
					</li>
					<li><a href="secretaire.php" class="ai-icon" aria-expanded="false">
							<i class="flaticon-381-settings-2"></i>
							<span class="nav-text">Profile</span>
						</a>
					</li>
					<li><a href="stagiaire.php" class="ai-icon" aria-expanded="false">
							<i class="flaticon-381-settings-2"></i>
							<span class="nav-text">Stagiaire</span>
						</a>
					</li>
					<li><a href="sta_depa.php" class="ai-icon" aria-expanded="false">
							<i class="flaticon-381-settings-2"></i>
							<span class="nav-text">Stagiaire et Departemt</span>
						</a>
					</li>
                </ul>
			</div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
			<div class="container-fluid">

				<div class="modal fade" id="addProjectSidebar">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Create Project</h5>
								<button type="button" class="close" data-dismiss="modal"><span>&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-group">
										<label class="text-black font-w500">Project Name</label>
										<input type="text" class="form-control">
									</div>
									<div class="form-group">
										<label class="text-black font-w500">Deadline</label>
										<input type="date" class="form-control">
									</div>
									<div class="form-group">
										<label class="text-black font-w500">Client Name</label>
										<input type="text" class="form-control">
									</div>
									<div class="form-group">
										<button type="button" class="btn btn-primary">CREATE</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
                <div class="row">
					<div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
							<div class="d-flex">
							<button type="submit" class="buton_add" data-bs-toggle="modal" data-bs-target="#addsecretaire">&nbsp;&nbsp;<i class="fa fa-plus icon_bo"></i>&nbsp;&nbsp;</button>&nbsp;&nbsp;
							</div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-responsive-md">
                                        <thead>
                                            <tr>
                                                <th><strong>Nom</strong></th>
                                                <th><strong>Date N</strong></th>
                                                <th><strong>Mail</strong></th>
                                                <th><strong>Sexe</strong></th>
												<th><strong>Address</strong></th>
												<th><strong>Universite</strong></th>
												<th><strong>Faculte</strong></th>
												<th><strong>Niveau E</strong></th>
												<th>Action</th>
                                            </tr>
                                        </thead>
										<?php
										$recupdata=$my_bd->query("SELECT * FROM tbl_stagiares ORDER BY id_sta DESC");
										if($recupdata->rowCount()>0){
											while($checkdata=$recupdata->fetch()){
												$idsta=$checkdata['id_sta'];
												$nomsta=$checkdata['nom_sta'];
												$datnai=$checkdata['date_naissa'];
												$mailsta=$checkdata['mail_sta'];
												$sexe=$checkdata['sta_sexe'];
												$adressta=$checkdata['address_stag'];
												$stauniv=$checkdata['sta_univ'];
												$satfac=$checkdata['sta_fac'];
												$stani=$checkdata['sta_nivee'];
										?>
                                        <tbody id="searchosx">
                                            <tr>
                                                <td><?=$nomsta?></td>
                                                <td><?=$datnai?></a></td>
                                                <td><?=$mailsta?></td>
                                                <td><?=$sexe?></td>
												<td><?=$adressta?></td>
                                                <td><?=$stauniv?></td>
                                                <td><?=$satfac?></td>
												<td><?=$stani?></td>
                                                <td>
													<div class="d-flex">
													<button type="submit" class="buton_add" data-bs-toggle="modal" data-bs-target="#modi<?=$idsta?>">&nbsp;&nbsp;<i class="fa fa-pencil icon_bo"></i>&nbsp;&nbsp;</button>&nbsp;&nbsp;
													<button type="submit" class="buton_close" data-bs-toggle="modal" data-bs-target="#supr<?=$idsta?>">&nbsp;&nbsp;<i class="fa fa-trash icon_bo"></i>&nbsp;&nbsp;</button>
													</div>
												</td>
                                            </tr>
                                        </tbody>
																				        				<!-- Modal Update-->
										<div class="modal fade" id="modi<?=$idsta?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel"><strong>Modifier Stagiaire</strong></h5>
														<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
													</div>
													<form method="POST">
														<div class="modal-body">
															<div class="row">
																<div class="col-12 col-lg-6 py-2">
																<input type="hidden" class="form-control" name="input_idsta" value="<?=$idsta?>">
																	<input type="text" class="form-control" name="input_nom" value="<?=$nomsta?>" placeholder="Nom">
																</div>
																<div class="col-12 col-lg-6 py-2">
																	<input type="date" class="form-control" name="input_daten" value="<?=$datnai?>">
																</div>
																<div class="col-12 col-lg-6 py-2">
																	<input type="text" class="form-control" name="input_mail" value="<?=$mailsta?>" placeholder="Email">
																</div>
																<div class="col-12 col-lg-6  py-2">
																	<select name="input_sexe" class="form-control">
																		<option value="M">Masculin</option>
																		<option value="F">Feminin</option>
																	</select>
																</div>
																<div class="col-12 col-lg-6  py-2">
																	<input type="text" class="form-control" name="input_addrsss" value="<?=$adressta?>" placeholder="Addres">
																</div>
																<div class="col-12 col-lg-6  py-2">
																	<input type="text" class="form-control" name="input_univer" value="<?=$stauniv?>" placeholder="University">
																</div>
																<div class="col-12 col-lg-6  py-2">
																	<input type="text" class="form-control" name="input_fac" value="<?=$satfac?>" placeholder="Faculty">
																</div>
																<div class="col-12 col-lg-6  py-2">
																	<input type="text" class="form-control" name="input_niveau" value="<?=$stani?>" placeholder="Niveau Etude">
																</div>
															</div>
														</div>
														<div class="modal-footer">
															<button type="submit" name="modifier" class="buton_add">&nbsp;&nbsp;<i class="fa fa-plus icon_bo"></i>&nbsp;&nbsp;</button>
															<button type="button"class="buton_close" data-bs-dismiss="modal">&nbsp;&nbsp;<i class="fa fa-close icon_bo"></i>&nbsp;&nbsp;</button>
														</div>
													</form>
												</div>
											</div>
                                        </div>
											<!-- Modal suprimer-->
											<div class="modal fade" id="supr<?=$idsta?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel"><strong>suprimer Utilisateur</strong></h5>
														<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
													</div>
													<form method="POST">
														<div class="modal-body">
															<div class="row">
                                                            <input type="hidden" class="form-control" name="input_sta" value="<?=$idsta?>">
															<p class="deleteclass">Veux-tu supprimer le module le secretaire&nbsp;<span class="utinom"><?=$nomsta?></span></p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="submit" name="suprimer" class="buton_add">&nbsp;&nbsp;<i class="fa fa-trash icon_bo"></i>&nbsp;&nbsp;</button>
															<button type="button"class="buton_close" data-bs-dismiss="modal">&nbsp;&nbsp;<i class="fa fa-close icon_bo"></i>&nbsp;&nbsp;</button>
														</div>
													</form>
													</div>
												</div>
											</div>
										<?php
											}	
										}																								
										?>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>

									<!-- Modal Add-->
	<div class="modal fade" id="addsecretaire" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"><strong>Ajouter Stagiaire</strong></h5>
					<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
				</div>
				<form method="POST">
					<div class="modal-body">
						<div class="row">
							<div class="col-12 col-lg-6 py-2">
								<input type="text" class="form-control" name="input_nom" placeholder="Nom Complet">
							</div>
							<div class="col-12 col-lg-6  py-2">
                            <select name="input_depa" class="form-control">
                                <option>Choisie Departement</option>
                                <?php
                                    $recudata=$my_bd->query("SELECT * FROM tbl_departement ORDER BY id_depart DESC");
                                    if($recudata->rowCount()>0){
                                        while($checkdata=$recudata->fetch()){
                                        $id_cours=$checkdata['id_depart'];
                                        $nom_cours=$checkdata['nom_depart'];
                                    ?>
                                    <option value="<?=$id_cours?>"><?=$nom_cours?></option>
                                    <?php
                                        }
                                        }
                                ?>
                            </select>
							</div>
							<div class="col-12 col-lg-6 py-2">
								<input type="date" class="form-control" name="input_daten">
							</div>
							<div class="col-12 col-lg-6  py-2">
								<select name="input_sexe" class="form-control">
									<option value="M">Masculin</option>
									<option value="F">Feminin</option>
								</select>
							</div>
							<div class="col-12 col-lg-6  py-2">
								<input type="text" class="form-control" name="input_phone" placeholder="Telephone">
							</div>
							<div class="col-12 col-lg-6 py-2">
								<input type="text" class="form-control" name="input_mail" placeholder="E-mail">
							</div>
							<div class="col-12 col-lg-6  py-2">
								<input type="text" class="form-control" name="input_addrsss" placeholder="Address">
							</div>
							<div class="col-12 col-lg-6  py-2">
								<input type="text" class="form-control" name="input_univer" placeholder="Universite">
							</div>
							<div class="col-12 col-lg-6  py-2">
								<input type="text" class="form-control" name="input_fac" placeholder="faculte">
							</div>
							<div class="col-12 col-lg-6  py-2">
								<input type="text" class="form-control" name="input_niveau" placeholder="Niveau Etude">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" name="ajouter" class="buton_add">&nbsp;&nbsp;<i class="fa fa-plus icon_bo"></i>&nbsp;&nbsp;</button>
						<button type="button"class="buton_close" data-bs-dismiss="modal">&nbsp;&nbsp;<i class="fa fa-close icon_bo"></i>&nbsp;&nbsp;</button>
					</div>
				</form>
			</div>
		</div>
	</div>

        <div class="footer">
            <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="../index.htm" target="_blank">DexignZone</a> 2021</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->

        <!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->

        
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="../vendor/global/global.min.js"></script>
	<script src="../vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="../vendor/chart.js/Chart.bundle.min.js"></script>


    <!-- Chart Chartist plugin files -->
    <script src="../vendor/chartist/js/chartist.min.js"></script>
    <script src="../vendor/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>
    <script src="../js/plugins-init/chartist-init.js"></script>

    <script src="../js/custom.min.js"></script>
	<script src="../js/deznav-init.js"></script>
    <script src="../js/demo.js"></script>
    <script src="../js/styleSwitcher.js"></script>
</body>
<script>
      $(document).ready(function(){
        $("#searchda").on("keyup", function(){
          var value = $(this).val().toLowerCase();
          $("#searchosx tr").filter(function(){
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
          });
        });
      });
  </script>
</html>