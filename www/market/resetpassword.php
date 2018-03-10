

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
  <link rel="stylesheet" href="css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="style.css" >
    <link rel="stylesheet" href="register/register_style.css" >



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
              <h3 class="box-title">Reset Password</h3>

              <div class="box-tools pull-right">

              </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
              <div class="row">

                  <div class="col-sm-6">
                    <?php if (!empty($_POST)){ ?>
                      <?php

                      $email = htmlspecialchars($_POST["email"]);
                      include("dbcon.php"); //including config.php in our file
                      include_once('lib/pdowrapper/class.pdowrapper.php');


                    $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
                    // get instance of PDO Wrapper object
                    $db = new PdoWrapper($dbConfig);
                    $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$email . "' Limit 1";
                    $result = $conn->query($sql);
                    if (isset($result)){
                      if ($result->num_rows > 0) {
                        $radompass = randomPassword();
                        $sql = "Update `m_user` Set Password = '". $radompass . "'  where 	EmailAddress = '".$email . "'";
                        $result = $conn->query($sql);
                        sendEmailForNewPassword($email,$radompass);
                        echo "Your account has been reset password. Please check your new password at your email.  <a href='../index.php'>Click here</a> to login.";
                      }else{
                        ?>
                            <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
                              <div class="col-md-6">
                                Please enter your registered email to reset password: <input class="form-control" type="email" name="email" value="<?php echo htmlspecialchars($email); ?>"><br>
                                <?php echo "<span class='text-danger'>There is no account registered with this email, " .$email .". Please enter a correct registered email.</span>";?>
                                <br><br><input type="submit" class="btn btn-info" value="Reset">
                              </div>
                            </form>
                        <?php
                      }
                    }
                      ?>.<br>

                  <?php }else{ ?>
                      <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
                        <div class="col-md-6">
                          Please enter your registered email to reset password:
                          <input class="form-control" type="email" name="email" placeholder="Email"><br>
                          <input type="submit" class="btn btn-info" value="Reset">
                        </div>
                      </form>
                  <?php } ?>
                  <?php
                  function randomPassword() {
                      $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
                      $pass = array(); //remember to declare $pass as an array
                      $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
                      for ($i = 0; $i < 8; $i++) {
                          $n = rand(0, $alphaLength);
                          $pass[] = $alphabet[$n];
                      }
                      return implode($pass); //turn the array into a string
                  }

                  function sendEmailForNewPassword($email,$radompass){
                		$mail_to = $email;
                		$message1 = "<h1>BudgetMetal Marketplace</h1> <br> Dear, <br> Your password has been reset to: $radompass ".PHP_EOL;
                		$date = date('Y-m-d', strtotime("+2 days"));

                		$email_encode = base64_encode($email);
                		$date_encode = base64_encode($date);


                		//error_reporting(E_STRICT);
                		error_reporting(E_ERROR);
                		date_default_timezone_set('Asia/Singapore');

                		require_once('../class.phpmailer.php');

                		$from_mail = "info@metalpolis.com";
                		$from_name = "BudgetMetal";
                		$to_address = $email;
                		$to_name = "Info";
                		$subject = "Reset Password at BudgetMetal";
                		$message = $message1;
                		$smtp_host = "127.0.0.1";
                		$smtp_port = 25;
                		// $smtp_username = "info@metalpolis.com";
                		// $smtp_password = "12345678";
                		$smtp_username = "";
                		$smtp_password = "";
                		//$smtp_debug = 2;

                		$mail             = new PHPMailer();

                		//$message             = file_get_contents('contents.html');
                		//$message             = eregi_replace("[\]",'',$message);

                		$mail->IsSMTP(); // telling the class to use SMTP
                		$mail->Host       = $smtp_host; // SMTP server
                		//$mail->SMTPDebug  = $smtp_debug;                     // enables SMTP debug information (for testing)
                																							 // 1 = errors and messages
                																							 // 2 = messages only
                		$mail->SMTPAuth   = false;                  // enable SMTP authentication
                		$mail->Port       = $smtp_port;                    // set the SMTP port for the GMAIL server
                		//$mail->Username   = $smtp_username;       // SMTP account username
                		//$mail->Password   = $smtp_password;        // SMTP account password

                		$mail->SetFrom($from_mail, $from_name);

                		$mail->AddReplyTo($from_mail, $from_name);

                		$mail->Subject    = $subject;

                		$mail->AltBody    = $message; // optional, comment out and test

                		$mail->MsgHTML($message);

                		$mail->AddAddress($to_address, $to_name);

                    $mail->IsHTML(true);


                		try {

                			if(!$mail->Send()) {

                			} else {

                			}
                		}
                		catch(Exception $e) {

                		}


                	}

                  ?>
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
