
<?php
 include_once('lib/pdowrapper/class.pdowrapper.php');
	 $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
    if(isset($_SESSION['userid'])){
		$userid = $_SESSION['userid'];
	}else{
		echo "no userid";
	}
  $sql = "SELECT * FROM `m_user`  where 	Id = ".$userid." and Confirmed  = 1  Limit 1";
  $result = $conn->query($sql);
$userid = "";
$usertype = "";
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    unset($_SESSION['usertype']);
    while($row = $result->fetch_assoc()) {
      if($row["C_UserType"] == "3"){
        $_SESSION['usertype']  = "Buyer";
      }elseif($row["C_UserType"] == "2"){
        $_SESSION['usertype']  = "Supplier";
      }elseif($row["C_UserType"] == "1"){
        $_SESSION['usertype']  = "Admin";
      }
      $userid = $row["Id"];
      $num_rows = 1;
    }
  }
}

   if(($_SESSION['usertype'] == 'Buyer')){
		 $sql = "SELECT t1.username, t1.EmailAddress,t1.ContactNumbers, t3.Name, t3.Reg_No, t3.Address FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
     $changeto = "Supplier";
     $changetypeid = "2";
	}elseif(($_SESSION['usertype'] == 'Supplier')){
		$sql = "SELECT t1.username, t1.EmailAddress,t1.ContactNumbers, t3.Name, t3.Reg_No, t3.Address FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
    $changeto = "Buyer";
    $changetypeid = "3";
	}

    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$username = $row["username"];
				$email =  $row["EmailAddress"];
				$company_name = $row["Name"];
				$reg_no = $row["Reg_No"];
				$Address = $row["Address"];
				$ContactNumbers = $row["ContactNumbers"];
			}
		}
	}
?>
 <!-- Main content -->
      <section class="content">



    <h1>
        <?php echo $_SESSION['usertype'];?> Profile
    </h1>

    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle"
                             src="img/user2-160x160.png" alt="User profile picture">

                        <h3 class="profile-username text-center"><?php echo $username;?></h3>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">About Me</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i> Company</strong>

                        <p class="text-muted">
                            <?php echo $company_name."( Reg No. ". $reg_no.")";?>
                        </p>

                        <hr>

                        <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                        <p class="text-muted"><?php echo $Address;?></p>
<hr>

                        <strong><i class="fa fa-phone"></i> Contact No.</strong>

                        <p class="text-muted"><?php echo $ContactNumbers;?></p>
                        <hr>

                        <strong><i class="fa fa-pencil margin-r-5"></i> Services Tags</strong>

                        <p>
						<?php
						$sql = "SELECT * FROM `c_tags` WHERE`Id` in (SELECT c_tags_Id FROM `md_suppliertags` WHERE `M_User_Id` = " . $userid. ")";
						$result = $conn->query($sql);
							if (isset($result)){
								if ($result->num_rows > 0) {
									// output data of each row
									while($row = $result->fetch_assoc()) {
										$TagName = $row["TagName"];
										?>
										<span class="label label-info"><?php echo $TagName;?></span>
										<?php
									}
								}
							}
						?>


                        </p>

  <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#changeAccountType">Change to <?php echo $changeto;?></button>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div class="nav-tabs-custom">


                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>



  <!-- Modal -->
  <div class="modal fade" id="changeAccountType" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change Account Type</h4>
        </div>
        <div class="modal-body">
          <p>Are you sure to change accout type as <?php echo $changeto;?>? </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="yesbtn" >Yes</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        </div>
      </div>
    </div>
    </div>
<script>

$("#yesbtn").click(function (e) {
  if (window.XMLHttpRequest) {
   // code for IE7+, Firefox, Chrome, Opera, Safari
   xmlhttp = new XMLHttpRequest();
  } else {
   // code for IE6, IE5
   xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    sessionStorage.clear();
   }
  };
  xmlhttp.open("GET","market.php?user_id=<?php echo $userid;?>&function=changeaccounttype&type_id=<?php echo $changetypeid;?>",true);
  xmlhttp.send();
  <?php //session_destroy(); ?>
  window.location.href="logout.php";
// location.reload();
		});
</script>
