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
	.deleteclass{
		font-weight: bold;
		color: #EB8153!important;
		font-size: 17px;
	}
	.modal-title{
		font-weight:bold;
		color: #889096!important;
	}
</style>
<body>
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <div id="main-wrapper">
		<div class="nav-header">
				<a href="#" class="brand-logo">
					<svg class="logo-abbr" width="50" height="50" viewbox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect class="svg-logo-rect" width="50" height="50" rx="6" fill="#EB8153"></rect>
						<path class="svg-logo-path" d="M17.5158 25.8619L19.8088 25.2475L14.8746 11.1774C14.5189 9.84988 15.8701 9.0998 16.8205 9.75055L33.0924 22.2055C33.7045 22.5589 33.8512 24.0717 32.6444 24.3951L30.3514 25.0095L35.2856 39.0796C35.6973 40.1334 34.4431 41.2455 33.3397 40.5064L17.0678 28.0515C16.2057 27.2477 16.5504 26.1205 17.5158 25.8619ZM18.685 14.2955L22.2224 24.6007L29.4633 22.6605L18.685 14.2955ZM31.4751 35.9615L27.8171 25.6886L20.5762 27.6288L31.4751 35.9615Z" fill="white"></path>
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
									<input type="text" class="form-control" placeholder="Faire recherche...">
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
										<img src="../images/profile/pic1.jpg" width="20" alt="">
										<div class="header-info">
											<span><?=$nomuser?></span>
											<small><?=$roleuser?></small>
										</div>
									</a>
									<div class="dropdown-menu dropdown-menu-right">
										<a href="../logout.php" class="dropdown-item ai-icon">
											<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
											<span class="ml-2">Se Deconnecter </span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</nav>
					<div class="sub-header">
						<div class="d-flex align-items-center flex-wrap mr-auto">
							<h5 class="dashboard_bar">Gestion Formation Tao</h5>
						</div>
						<div class="d-flex align-items-center">
							<a href="javascript:void(0);" class="btn btn-xs btn-primary light mr-1"><?=$day?></a>
							<a href="javascript:void(0);" class="btn btn-xs btn-primary light mr-1"><?=$month?></a>
							<a href="javascript:void(0);" class="btn btn-xs btn-primary light">20<?=$year?></a>
						</div>
					</div>
				</div>
			</div>
			<div class="deznav">
				<div class="deznav-scroll">
					<div class="main-profile">
						<div class="image-bx">
							<img src="../images/Untitled-1.jpg" alt="">
							<a href="javascript:void(0);"></a>
						</div>
						<h5 class="name"><span class="font-w400">Bienvenu,&nbsp;</span><?=$nomuser?></h5>
						<p class="email"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f69b97848783938c8c8c8cb69b979f9ad895999b"><?=$mailuser?></a></p>
					</div>
					<ul class="metismenu" id="menu">
						<li class="nav-label">Menu Principal</li>
						<li><a href="index.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-077-menu-1"></i>
								<span class="nav-text">Accueil</span>
							</a>
						</li>
						<li><a href="utilisateur.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-077-menu-1"></i>
								<span class="nav-text">utilisateurs</span>
							</a>
						</li>
						<li><a href="departement.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-settings-2"></i>
								<span class="nav-text">Departement</span>
							</a>
						</li>
						<li><a href="module.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-settings-2"></i>
								<span class="nav-text">Modules</span>
							</a>
						</li>
						<li><a href="paiement.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-settings-2"></i>
								<span class="nav-text">Paiement</span>
							</a>
						</li>
						<li><a href="stagiaire.php" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-settings-2"></i>
								<span class="nav-text">Stagiaire</span>
							</a>
						</li>
						<li>
						</li>
					</ul>
				</div>
			</div>
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
								<button type="submit" class="buton_add" data-bs-toggle="modal" data-bs-target="#exampleModal">&nbsp;&nbsp;<i class="fa fa-plus icon_bo"></i>&nbsp;&nbsp;</button>&nbsp;&nbsp;
								</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-responsive-md">
											<thead>
												<tr>
													<th><strong>Photo</strong></th>
													<th><strong>Nom Utilisateur </strong></th>
													<th><strong>Email</strong></th>
													<th><strong>Mot de passe</strong></th>
													<th><strong>Role</strong></th>
													<th>Action</th>
												</tr>
											</thead>
											<?php
											$recupdata=$my_bd->query("SELECT * FROM tbl_users");
											if($recupdata->rowCount()>0){
												while($checkdata=$recupdata->fetch()){
													$idus=$checkdata['id_user'];
													$imaguti=$checkdata['image_util'];
													$nomuti=$checkdata['nom_utili'];
													$mail=$checkdata['email_util'];
													$password=$checkdata['password_util'];
													$role=$checkdata['role_util'];
											?>
											<tbody>
												<tr>
													<td><img src="<?=$imaguti?>" width="50" height="50"></td>
													<td><?=$nomuti?></td>
													<td><?=$mail?></a>	</td>
													<td><?=$password?></td>
													<td><?=$role?></td>
													<td>
														<div class="d-flex">
															<button type="submit" class="buton_add" data-bs-toggle="modal" data-bs-target="#modi<?=$idus?>">&nbsp;&nbsp;<i class="fa fa-pencil icon_bo"></i>&nbsp;&nbsp;</button>&nbsp;&nbsp;
															<button type="submit" class="buton_close" data-bs-toggle="modal" data-bs-target="#supri<?=$idus?>">&nbsp;&nbsp;<i class="fa fa-trash icon_bo"></i>&nbsp;&nbsp;</button>
														</div>
													</td>
												</tr>
											</tbody>
																	<!-- Modal Update-->
												<div class="modal fade" id="modi<?=$idus?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel"><strong>Modifier Utilisateur</strong></h5>
															<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
														</div>
														<form method="POST" enctype="multipart/form-data">
															<div class="modal-body">
																<div class="row">
																	<div class="col-12 col-lg-12  py-2">
																		<input type="file" class="form-control" name="image_name" value="<?=$imaguti?>">
																	</div>
																	<div class="col-12 col-lg-6  py-2">
																		<input type="text" class="form-control" name="input_nonutili" value="<?=$nomuti?>" placeholder="Nom Utilisateur">
																		<input type="hidden" name="input_idutili" value="<?=$idus?>">
																	</div>
																	<div class="col-12 col-lg-6 py-2">
																		<input type="email" class="form-control" name="input_mail" value="<?=$mail?>" placeholder="E-mail">
																	</div>
																	<div class="col-12 col-lg-6  py-2">
																		<input type="text" class="form-control" name="input_password" value="<?=$password?>" placeholder="Password">
																	</div>
																	<div class="col-12 col-lg-6  py-2">
																		<select name="input_role" class="form-control">
																			<option value="#">Chosie le role</option>
																			<option value="Administrateur">Administrateur</option>
																			<option value="secretaire">Secretaire</option>
																		</select>
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
												<div class="modal fade" id="supri<?=$idus?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel"><strong>suprimer Utilisateur</strong></h5>
															<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
														</div>
														<form method="POST">
															<div class="modal-body">
																<div class="row">
																<input type="hidden" value="<?=$idus?>" name="iduser">
																<p class="deleteclass">Veux-tu supprimer l'utilisateur <span class="utinom"><?=$nomuti?></span></p>
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
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"><strong>Ajouter Utilisateur</strong></h5>
						<button type="button" class="btn-close btn_modalclose" data-bs-dismiss="modal" aria-label="Close">close</button>
					</div>
					<form method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="row">
								<div class="col-12 col-lg-12  py-2">
									<input type="file" name="image_name"  class="form-control">
								</div>
								<div class="col-12 col-lg-6  py-2">
									<input type="text" class="form-control" name="input_nonutili" placeholder="Nom Utilisateur">
								</div>
								<div class="col-12 col-lg-6 py-2">
									<input type="email" class="form-control" name="input_mail" placeholder="E-mail">
								</div>
								<div class="col-12 col-lg-6  py-2">
									<input type="text" class="form-control" name="input_password" placeholder="Password">
								</div>
								<div class="col-12 col-lg-6  py-2">
									<select name="input_role" class="form-control">
										<option value="#">Chosie le role</option>
										<option value="Administrateur">Administrateur</option>
										<option value="secretaire">Secretaire</option>
									</select>
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
			<!--**********************************
				Content body end
			***********************************-->


			<!--**********************************
				Footer start
			***********************************-->
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


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
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
</html>