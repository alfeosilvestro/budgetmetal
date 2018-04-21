<?php
include("dbcon.php");
include_once('lib/pdowrapper/class.pdowrapper.php');
$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
// get instance of PDO Wrapper object
$db = new PdoWrapper($dbConfig);
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



					<div class="row">
						<section>
							<div class="wizard">
								<div class="wizard-inner">
									<div class="connecting-line"></div>
									<ul class="nav nav-tabs" role="tablist">

										<li id="iconStep1" role="presentation" class="active">
											<a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
												<span class="round-tab">
													<i class="fa fa-user"></i>
												</span>
											</a>
										</li>

										<li id="iconSteptc" role="presentation" class="disabled">
											<a href="#steptc" data-toggle="tab" aria-controls="steptc" role="tab" title="Step Terms & Condition">
												<span class="round-tab">
													<i class="fa fa-book"></i>
												</span>
											</a>
										</li>

										<li id="iconStep2" role="presentation" class="disabled">
											<a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
												<span class="round-tab">
													<i class="fa fa-cube"></i>
												</span>
											</a>
										</li>

										<li id="iconStep5" role="presentation" class="disabled">
											<a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
												<span class="round-tab">
													<i class="fa fa-flag-checkered"></i>
												</span>
											</a>
										</li>
									</ul>
								</div>
								<div id="notify" class="alert alert-success" style="display:none;">
									<!--<a href="#" class="close" data-dismiss="alert">&times;</a>-->

									<div class="message"></div>
								</div>
								<form role="form" name="create_user" id="creat_user" method="get" action="">
									<div class="tab-content">
										<div class="tab-pane active" role="tabpanel" id="step1">

											<div class="row">
												<div class="col-md-12">

													<div class="box-body">

														<h3>Registration Details</h3>

													</div>

													<div class="row">
														<div class="col-md-6">
															<div class="box-body">

																<div class="form-group">
																	<label>Company Registration No. (UEN) <a href="https://www.uen.gov.sg/" target="_blank">?</a> </label>
																	<input id="txt_company_uen" name="company_uen" type="text"
																	class="form-control"
																	data-bind="value: company_uen, valueUpdate: 'blur'"
																	placeholder="Your Company UEN" maxlength="10">
																</div>

																<div class="form-group">
																	<label>Company Name</label>
																	<input id="txt_company_name" name="company_name" type="text"
																	class="form-control"
																	data-bind="value: company_name, valueUpdate: 'blur'"
																	placeholder="Your Company Name" >
																</div>

																<div class="form-group">
																	<label>Contact Number</label>
																	<input id="txt_contact_number" name="contact_number" type="number"
																	class="form-control"
																	data-bind="value: contact_number, valueUpdate: 'blur'"
																	placeholder="Enter Contact Number" maxlength="10">

																</div>

																<div class="form-group">
																	<label>Address</label>
																	<textarea id="txt_address" class="form-control" name="address" rows="4" cols="80"></textarea>

																</div>


																<div class="form-group">
																	<label>
																		<input id="chkRegisterAsSupplier" name="register_as_supplier"
																		data-bind="checked: register_as_supplier"
																		type="checkbox">
																		&nbsp;Register as Supplier and List My Services
																	</label>
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="box-body">

																<div class="form-group">
																	<label>Full Name</label>

																	<input id="txt_user_name" name="user_name" type="text" class="form-control"
																	data-bind="value: user_name, valueUpdate: 'blur'"
																	placeholder="Please enter your name" required>
																</div>

																<div class="form-group">
																	<label>Job Title</label>
																	<input id="txt_job_title" name="title" type="text" class="form-control"
																	data-bind="value: title, valueUpdate: 'blur'"
																	placeholder="Your job title at your company">
																</div>

																<div class="form-group">
																	<label>Email Address [Login User Name]</label>
																	<input id="txt_email_addr" name="email_address" type="email"
																	class="form-control"
																	data-bind="value: email_address, valueUpdate: 'blur'"
																	placeholder="Company email address">
																</div>

																<div class="form-group">
																	<label>Password</label>
																	<input id="txt_password" name="password" type="password"
																	class="form-control"
																	data-bind="value: user_password, valueUpdate: 'blur'"
																	placeholder="Password to sign in later">
																</div>
																<div id="selTags" class="form-group">
																	<label>Your Services and Business Segments (Multiple Entry Supported)</label>
																	<select class="form-control select2" multiple="multiple"
																	title="Please select services and business segment."
																	style="width: 100%;"
																	data-bind="value: tags, valueUpdate: 'blur'" name="tagList[]">
																	<?php
																	$sql2 = "SELECT * FROM `c_tags` where Status = 1 Order by Seq";
																	$result2 = $conn->query($sql2);
																	if (isset($result2)){
																		if ($result2->num_rows > 0) {
																			while($row2 = $result2->fetch_assoc()) {
																				$status = "";
																				if($row2["Selectable"] == "0"){
																					$status = "disabled";
																				}
																				echo "<option value='". $row2["Id"] ."' ".$status.">" . $row2["TagName"] ;
																				echo "</option>";
																			}
																		}
																	}
																	?>


																</select>
															</div>


														</div>
													</div>
												</div>

											</div>
										</div>


										<ul class="list-inline pull-right">
											<li>
												<button type="button" class="btn btn-primary next-step" id="step1btn">Save and continue</button>

											</li>
										</ul>
									</div>

									<div class="tab-pane" role="tabpanel" id="steptc">

										<div class="row">
											<div class="col-md-12">

												<div class="box-body">
													<h3>Terms & Condition</h3>
													<iframe src="tnc.php"  width="100%" height="400"></iframe>
												</div>

											</div>
										</div>


										<ul class="list-inline pull-right">
											<li>
												<button type="button" class="btn btn-default prev-step">Previous</button>
											</li>
											<li>

												<button type="button" class="btn btn-primary next-step next-step1  hide">Accept and Continue</button>
												<button type="submit" class="btn btn-primary buyer-step hide" id="btncreate_buyer">Accept and Register</button>
											</li>
										</ul>
									</div>

									<div class="tab-pane" role="tabpanel" id="step2">
										<div class="box-body">

											<h3>Please select services ...</h3>
											<div class="container">
												<div class="row">
													<div class="col-md-6">
														<div id="messageforsupplier"></div>
														<div id="treeview-checkbox-demo">
															<ul>
																<?php
																$sql = "SELECT * FROM `m_services` where Status = 1 and M_Parent_Services_Id is null  ";
																$result = $conn->query($sql);
																if (isset($result)){
																	if ($result->num_rows > 0) {
																		// output data of each row
																		while($row = $result->fetch_assoc()) {
																			echo "<li class='chkservice' data-value='". $row["Id"] ."'>" . $row["ServiceName"] ;
																			$servicecategory1id = $row["Id"];
																			$sql1 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id ;
																			$result1 = $conn->query($sql1);
																			if (isset($result1)){
																				if ($result1->num_rows > 0) {
																					echo "<ul>";
																					// output data of each row
																					while($row1 = $result1->fetch_assoc()) {
																						echo "<li class='chkservice' data-value='". $row1["Id"] ."'>" . $row1["ServiceName"] ;
																						$servicecategory1id1 = $row1["Id"];
																						$sql2 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id1 ;
																						$result2 = $conn->query($sql2);
																						if (isset($result2)){
																							if ($result2->num_rows > 0) {
																								echo "<ul>";
																								// output data of each row
																								while($row2 = $result2->fetch_assoc()) {
																									echo "<li class='chkservice' data-value='". $row2["Id"] ."'>" . $row2["ServiceName"] ;
																									$servicecategory1id2 = $row2["Id"];
																									$sql3 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id2 ;
																									$result3 = $conn->query($sql3);
																									if (isset($result3)){
																										if ($result3->num_rows > 0) {
																											echo "<ul>";
																											// output data of each row
																											while($row3 = $result3->fetch_assoc()) {
																												echo "<li class='chkservice' data-value='". $row3["Id"] ."'>" . $row3["ServiceName"] ;
																												$servicecategory1id3 = $row3["Id"];
																												$sql4 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id3 ;
																												$result4 = $conn->query($sql4);
																												if (isset($result4)){
																													if ($result4->num_rows > 0) {
																														echo "<ul>";
																														// output data of each row
																														while($row4 = $result4->fetch_assoc()) {
																															echo "<li class='chkservice' data-value='". $row4["Id"] ."'>" . $row4["ServiceName"] ;

																															echo "</li>";
																														}
																														echo "</ul>";
																													}

																												}
																												echo "</li>";
																											}
																											echo "</ul>";
																										}

																									}
																									echo "</li>";
																								}
																								echo "</ul>";
																							}

																						}
																						echo "</li>";
																					}
																					echo "</ul>";
																				}

																			}
																			echo "</li>";
																		}
																	}
																}
																?>

															</ul>
														</div>


														<input type="hidden" id="values" name="supported_service" value="">
													</div>
												</div>
											</div>

											<script src="dev/jquery.min.js"></script>
											<script src="dev/bootstrap.min.js"></script>
											<script src="dev/logger.js"></script>
											<script src="dev/treeview.js"></script>

											<script>
											$('#treeview-checkbox-demo').treeview({
												debug : true
											});
											</script>

										</div>
										<ul class="list-inline pull-right">
											<li>
												<button type="button" class="btn btn-default prev-step">Previous</button>
											</li>
											<li>
												<button type="button" id="btncreate_supplier" class="btn btn-success supplier-step">Register</button>
											</li>
										</ul>
									</div>


									<div class="tab-pane" role="tabpanel" id="complete">
										<div class="box-body">

											<h3>Completed</h3>
											<p>We have sent the link to your registration email for verification.</p>
											<ul class="list-inline pull-left">
												<li>
													<a href="../index.php"> <button type="button" class="btn btn-info prev-step">Go to Home Page</button></a>
												</li>



											</ul>
										</div>

									</div>
									<div class="clearfix"></div>
								</div>
							</form>
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
<script>

$(document).ready(function () {

	$("input[id='txt_company_uen']").blur(function() {
		var company_uen = $("input[id='txt_company_uen']").val();
		var message = "";
		if(company_uen == ""){
			message = message + "Singapore UEN format is 9 numeric digits followed by an alphabet (eg. 123456789A), if your company registration is not in this format, please email us at info@budgetmetal.com with attached scans or photos of your business card AND photo ID (driver license or NRIC) for us to help you create an account within 24-hour.";
		}else{
			var regex = new RegExp(/^[0-9]{9}[a-z]{1}$/i);
			if(regex.test(company_uen)){
				if (window.XMLHttpRequest) {
					// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else {
					// code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {

						if(this.responseText != ""){
							$("input[id='txt_company_name']").val(this.responseText);

						}
					}
				};
				xmlhttp.open("GET","market.php?company_uen="+company_uen+"&function=getcompanyname",true);
				xmlhttp.send();

				if (window.XMLHttpRequest) {
					// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else {
					// code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						if(this.responseText != ""){
							$("textarea[id='txt_address']").val(this.responseText);
						}
					}
				};
				xmlhttp.open("GET","market.php?company_uen="+company_uen+"&function=getcompanyaddress",true);
				xmlhttp.send();

			}else{
				message = message + "Company UEN field is invalid format! (eg.123456789s)";
			}
		}
		if(message != ""){
			$("input[id='txt_company_uen']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}

	});

	$("input[id='txt_company_name']").blur(function() {
		var company_name = $("input[id='txt_company_name']").val();
		var message = "";
		if(company_name == ""){
			message = message + "Company Name field is required!";
		}
		if(message != ""){
			$("input[id='txt_company_name']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}

	});
	document.querySelector("input[id='txt_contact_number']").addEventListener("keypress", function (evt) {
		if (evt.which < 48 || evt.which > 57)
		{
			evt.preventDefault();
		}
	});

	$("input[id='txt_contact_number']").blur(function() {
		var contact_number = $("input[id='txt_contact_number']").val();
		var message = "";
		if(contact_number == ""){
			message = message + "Contact Number field is required!";
		}else{
			var regex = new RegExp(/^[0-9]{1,8}$/);
			if(regex.test(contact_number)){}else{
				message = message + "Contact Number is invalid!";
			}
		}
		if(message != ""){
			$("input[id='txt_contact_number']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}

	});

	$("input[id='txt_user_name']").blur(function() {
		var user_name = $("input[id='txt_user_name']").val();
		var message = "";
		if(user_name == ""){
			message = message + "Name field is required!";
		}
		if(message != ""){
			$("input[id='txt_user_name']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}
	});

	$("input[id='txt_job_title']").blur(function() {
		var job_title = $("input[id='txt_job_title']").val();
		var message = "";
		if(job_title == ""){
			message = message + "Job Title field is required!";
		}
		if(message != ""){
			$("input[id='txt_job_title']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}
	});

	$("input[id='txt_email_addr']").blur(function() {
		var email = $("input[id='txt_email_addr']").val();
		var message = "";
		if(email == ""){
			message = message + "Email field is required!";
		}else{
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if(re.test(email)){
				//var yahoo_re = /@yahoo.com\s*$/;
				//var gmail_re = /@gmail.com\s*$/;
				//if(yahoo_re.test(email) || gmail_re.test(email)){
				//}
				if (window.XMLHttpRequest) {
					// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else {
					// code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						if(this.responseText != ""){
							message = message + "Please use your corporate email, public email domain like gmail, yahoo, etc are restricted to prevent fraudulent user on the platform. If your company uses public email domain as corporate email, please email us at info@budgetmetal.com with attached scans or photos of your business card AND photo ID (driver license or NRIC) for us to help you create an account within 24-hour.";
							$("input[id='txt_email_addr']").select();
							$("#notify .message").html("<strong>" + message + "</strong>");
							$("#notify").show();
							$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
							$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);

						}
					}
				};
				xmlhttp.open("GET","market.php?email="+email+"&function=checkEmail",true);
				xmlhttp.send();

			}else{
				message = message + "Email field is invalid format!";
			}
		}
		if(message != ""){
			$("input[id='txt_email_addr']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}
	});

	$("input[id='txt_password']").blur(function() {
		var password = $("input[id='txt_password']").val();
		var message = "";
		if(password == ""){
			message = message + "Password field is required!";
		}
		if(message != ""){
			$("input[id='txt_password']").select();
			$("#notify .message").html("<strong>" + message + "</strong>");
			$("#notify").show();
			$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
			$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		}else{
			$("#notify").hide();
		}
	});

	$('#iconStep2').hide();
	$('.wizard .wizard-inner .nav-tabs li').css('width', '33%');
	$('.connecting-line').css('width', '65%');
	$('.next-step1').addClass('hide');
	$('.buyer-step').removeClass('hide');
	$('#selTags').hide();
	var chkRegAsSup = $('#chkRegisterAsSupplier');
	chkRegAsSup.on('click', function (e) {

		var isChecked = chkRegAsSup.prop('checked');
		isRegisterAsSupplier = isChecked;

		if (isRegisterAsSupplier) {
			showAllSteps();
		}
		else {
			hideSupplierSteps();
		}
	});

	var step1btn = $('#step1btn');
	step1btn.on('click', function (e) {
		var company_uen = $("input[id='txt_company_uen']").val();

		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				$("#messageforsupplier").append(this.responseText);
				if(this.responseText != ""){
					$('#treeview-checkbox-demo').addClass('hide');
				}
			}
		};
		xmlhttp.open("GET","market.php?company_uen="+company_uen+"&function=checksupplierservice",true);
		xmlhttp.send();

	});
})

function hideSupplierSteps() {

	$('#iconStep2').hide();
	$('#btnNext').hide();
	$('#btnSubmit').show();
	$('#selTags').hide();
	$('.wizard .wizard-inner .nav-tabs li').css('width', '33%');
	$('.connecting-line').css('width', '65%');
	$('.next-step1').addClass('hide');
	$('.buyer-step').removeClass('hide');
}

function showAllSteps() {
	$('#iconStep2').show();

	$('#btnNext').show();
	$('#btnSubmit').hide();
	$('#selTags').show();

	$('.wizard .nav-tabs li').css('width', '25%');
	$('.connecting-line').css('width', '75%');
	$('.buyer-step').addClass('hide');
	$('.next-step1').removeClass('hide');
}

$("#btncreate_supplier").click(function (e) {
	$('#values').val(
		$('#treeview-checkbox-demo').treeview('selectedValues')
	);
	e.preventDefault();

	CreateSupplier();

});

$("#btncreate_buyer").click(function (e) {

	e.preventDefault();

	CreateBuyer();

});
function validateForm(){
	var message = "";
	var company_uen = $("input[id='txt_company_uen']").val();
	var company_name = $("input[id='txt_company_name']").val();
	var contact_number = $("input[id='txt_contact_number']").val();
	var user_name = $("input[id='txt_user_name']").val();
	var job_title = $("input[id='txt_job_title']").val();
	var email = $("input[id='txt_email_addr']").val();
	var password = $("input[id='txt_password']").val();
	if(company_uen == ""){
		message = message + "Company UEN field is required!<br/>";
	}else{
		var regex = new RegExp(/^[0-9]{9}[a-z]{1}$/i);
		if(regex.test(company_uen)){}else{
			message = message + "Company UEN field is invalid format! (eg.123456789s)<br/>";
		}
	}
	if(company_name == ""){
		message = message + "Company Name field is required!<br/>";
	}
	if(contact_number == ""){
		message = message + "Contact Number field is required!<br/>";
	}
	if(user_name == ""){
		message = message + "Name field is required!<br/>";
	}
	if(job_title == ""){
		message = message + "Job Title field is required!<br/>";
	}
	if(email == ""){
		message = message + "Email field is required!<br/>";
	}else{
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if(re.test(email)){
			var yahoo_re = /@yahoo.com\s*$/;
			var gmail_re = /@gmail.com\s*$/;
			if(yahoo_re.test(email) || gmail_re.test(email)){
				message = message + "Please enter company email!<br/>";
			}
		}else{
			message = message + "Email field is invalid format!<br/>";
		}
	}
	if(password == ""){
		message = message + "Password field is required!<br/>";
	}

	if(message == ""){
		return true;
	}
	else{
		$("#notify .message").html("<strong>" + message + "</strong>");
		$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
		$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
		return false;
	}

}

function CreateBuyer() {
	var validation = validateForm();
	if(validation){
		$.ajax({
			url: 'market.php?function=createbuyer',
			type: 'GET',
			data: $("#creat_user").serialize(),
			dataType: 'json',
			success: function (data) {
				if (data.success) {
					showLastStep();
					$("#notify .message").html("<strong>User Registration is successful.</strong>");
					$("#notify").removeClass("alert-danger").addClass("alert-success").fadeIn();
					$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
				} else {
					$("#notify .message").html("<strong>" + data.error + "</strong>");
					$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
					$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
				}
			},
			error: function (data) {
				//alert("System Error : Please contact to admin.");
				showLastStep();
				$("#notify .message").html("<strong>User Registration is successful.</strong>");
				$("#notify").removeClass("alert-danger").addClass("alert-success").fadeIn();
				$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
			}
		});
	}else{

	}


}

function CreateSupplier() {
	var validation = validateForm();
	if(validation){
		$.ajax({
			url: 'market.php?function=createsupplier',
			type: 'GET',
			data: $("#creat_user").serialize(),
			dataType: 'json',
			success: function (data) {
				if (data.success) {
					showLastStep();
					$("#notify .message").html("<strong>User Registration is successful.</strong>");
					$("#notify").removeClass("alert-danger").addClass("alert-success").fadeIn();
					$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
				} else {
					$("#notify .message").html("<strong>" + data.error + "</strong>");
					$("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
					$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
				}
			},
			error: function (data) {

				//alert("System Error : Please contact to admin.");
				showLastStep();
				$("#notify .message").html("<strong>User Registration is successful.</strong>");
				$("#notify").removeClass("alert-danger").addClass("alert-success").fadeIn();
				$("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
			}
		});
	}
}

function showLastStep() {
	var $active = $('.wizard .nav-tabs li');
	$active.addClass('disabled');
	$active.parent().children().last().removeClass('disabled');
	lastTab($active);
}
function lastTab(elem) {
	$(elem).parent().children().last().find('a[data-toggle="tab"]').click();
}

$(document).ready(function() {
	$('.select2').select2();
});


$("[id*=treeview-checkbox-demo] input[type=checkbox]").bind("click", function () {

	//Is Parent CheckBox
	var isChecked = $(this).is(":checked");
	$(this).parent().find("input[type=checkbox]").each(function () {
		if (isChecked) {
			$(this).prop( "checked", true );
		} else {
			$(this).removeAttr("checked");
		}
	});

});

</script>
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
