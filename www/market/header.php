
<!DOCTYPE html>
<html style="height: auto; min-height: 100%;"><head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>BudgetMetal Marketplace</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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

 <!-- DataTables -->
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="style.css" >

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
    <!-- <script src="js/js-webshim/minified/polyfiller.js"></script> -->
    <link rel="stylesheet" href="typeahead/typeaheadStyle.css" >



</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="skin-black-light layout-top-nav" style="height: auto; min-height: 100%;">
<div class="wrapper" style="height: auto; min-height: 100%;">



<header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a href="index.php?rdp=dashboard" class="navbar-brand"><b>BudgetMetal</b>&nbsp;marketplace</a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <!-- /.navbar-collapse -->
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li><a href="index.php?rdp=dashboard">Dashboard <span class="sr-only">(current)</span></a></li>
                    <li><a href="index.php?rdp=timeline">Timeline</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Documents <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="index.php?rdp=list_rfq">RFQ Lists</a></li>
                            <li><a href="index.php?rdp=list_quotation">Quotations</a></li>
                        </ul>
                    </li>
					<?php
					if(($_SESSION['usertype'] == 'Buyer')){
					?>
          <li><a href="index.php?rdp=list_supplier">Supplier List</a></li>
					 <li><a href="index.php?rdp=create_rfq">Create RFQ</a></li>

					<?php
					}
					?>
 <li><a href="index.php?rdp=company_profile&companyid=<?php echo $_SESSION['M_Company_Id'];?>">Company Profile</a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="img/user2-160x160.png" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs"><?php echo $_SESSION['user'];?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="img/user2-160x160.png" class="img-circle"
                                     alt="User Image">

                                <p>
                                   <?php echo $_SESSION['user'];?>
                                </p>
                            </li>

                            <!-- Menu Body -->
							               <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="index.php?rdp=profile" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                   <button class="btn btn-primary" type="submit"  onClick="parent.location='logout.php'"><i class="icon-off icon-white"></i>  &nbsp;Logout </button>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-custom-menu -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>
  <!-- Full Width Column -->
