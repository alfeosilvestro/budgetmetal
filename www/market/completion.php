<?php
// Start the session
session_start();
?>

<!DOCTYPE html>
<html style="height: auto; min-height: 100%;"><head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BudgetMetal Marketplace</title>
	<link rel="shortcut icon" type="image/png" href="../fav.ico"/>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link type="text/css" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">

	<!-- Select2 -->
	<link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css">

	<!-- bootstrap datepicker -->
	<link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="style.css" >
	<link rel="stylesheet" href="register/register_style.css" >

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">



	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="js/knockout-3.4.2.js"></script>
	<link rel="stylesheet" href="typeahead/typeaheadStyle.css" >



</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="skin-black-light layout-top-nav" style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">



		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="../index.php" class="navbar-brand"><b>BudgetMetal</b>&nbsp;marketplace</a>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->

				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- Full Width Column -->
		<div class="content-wrapper" style="min-height: 130px;">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header">

				</section>

				<!-- Main content -->
				<section class="content">
                <div class="wizard" style="padding:15px;">
                    <div class="row">
                        <div class="col-md-12">
                            <?php 
                            $email = "";
                            $name = "";
                            $company_name = "";
                            if(isset($_SESSION["email"])){
                                if(isset($_SESSION["email"])){
                                    $email = $_SESSION["email"];
                                }
                                if(isset($_SESSION["name"])){
                                    $name = $_SESSION["name"];
                                }
                                if(isset($_SESSION["company_name"])){
                                    $company_name = $_SESSION["company_name"];
                                    session_destroy();
                                }
                            }else{
                                if(isset($_GET["email"])){
                                    $email = $_GET["email"];
                                    $_SESSION["email"] = $email;
                                }
                                if(isset($_GET["name"])){
                                    $name = $_GET["name"];
                                    $_SESSION["name"] = $name;
                                }
                                if(isset($_GET["company_name"])){
                                    $company_name = $_GET["company_name"];
                                    $_SESSION["company_name"] = $company_name;
                                    header("location:completion.php");
                                }
                            }
                            

                            
                            ?>
                            <h1>User Registration is successful.</h1>
                            <div class="col-md-12">
                            <div class="col-md-1">Email</div>
                            <div class="col-md-1"> - </div>
                            <div class="col-md-1"><?php echo $email;?></div>
                            </div>
                           <div class="col-md-12">
                           <div class="col-md-1">Name</div>
                            <div class="col-md-1"> - </div>
                            <div class="col-md-1"><?php echo $name;?></div>
                            </div>
                            <div class="col-md-12">
                           <div class="col-md-1">Company</div>
                            <div class="col-md-1"> - </div>
                            <div class="col-md-1"><?php echo $company_name;?></div>
                            </div>
                            <div class="col-md-12">
                            <br><span class="text-danger">We have sent the link to your registration email for verification.</span><br><br>
                            <a href="../index.php"> <button type="button" class="btn btn-info prev-step">Go to Home Page</button></a>
                            </div>
                           
                        </div>

                    </div>

                            </div>
				</section>
				</div>

				<!-- AdminLTE for demo purposes -->
				<script src="register/register_wizard.js"></script>
				<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
				<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="container">
			<div class="pull-right hidden-xs">

			</div>
			<strong>Copyright © 2017 <a href="#">BudgetMetal</a>.</strong> All rights
			reserved.
		</div>
		<!-- /.container -->
	</footer>
</div>
<!-- ./wrapper -->
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/demo.js"></script>
<!-- Select2 -->
<script src="bower_components/select2/dist/js/select2.min.js"></script>


</body>
</html>
