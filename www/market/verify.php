

<!DOCTYPE html>
<html style="height: auto; min-height: 100%;"><head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>BudgetMetal Marketplace</title>
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
          <a href="" class="navbar-brand"><b>BudgetMetal</b>&nbsp;marketplace</a>
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
      <div class="box box-default">
          <div class="box-header with-border">
              <h3 class="box-title">Email Verification</h3>

              <div class="box-tools pull-right">

              </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
              <div class="row">

                  <div class="col-sm-6">
                    <?php
                        session_start();
                        $email_encode = $_GET["a"]; //Storing username in $username variable.
                        $date_encode = $_GET["b"]; //Storing password in $password variable.

                        $email = base64_decode($email_encode);

                        $date_decode = base64_decode($date_encode);
                        include("dbcon.php"); //including config.php in our file
                        include_once('lib/pdowrapper/class.pdowrapper.php');


                      $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
                      // get instance of PDO Wrapper object
                      $db = new PdoWrapper($dbConfig);
                        $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$email . "' Limit 1";
                        $result = $conn->query($sql);
                      $userid = "";
                      $usertype = "";
                      if (isset($result)){
                        if ($result->num_rows > 0) {
                          // output data of each row
                          while($row = $result->fetch_assoc()) {
                            $Confirmed = $row["Confirmed"];
                            if($Confirmed == 0){
                              $expire_dt = date_format(date_create($date_decode),"Y-m-d");

                              $today_dt = date("Y-m-d");

                              if ($expire_dt < $today_dt) {
                                echo "Expired link!";
                              }else{
                                 $sql = "Update `m_user` Set Confirmed = 1  where 	EmailAddress = '".$email . "'";
                                 $result = $conn->query($sql);
                                 echo "Your account has been verified. <a href='../index.php'>Click here</a> to login.";
                                 break;
                              }
                            }else{
                              echo "Your account has been verified. <a href='../index.php'>Click here</a> to login.";
                            }
                          }
                        }else{
                          echo "Invalid link!";
                        }
                      }
                    ?>

                    <br/>
                  </div>
              </div>
          </div>
          <!-- /.box-body -->
      </div>
        
    </div>

    <!-- AdminLTE for demo purposes -->

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
  <strong>Copyright © 2017 <a href="https://adminlte.io">BudgetMetal</a>.</strong> All rights
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
