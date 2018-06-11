
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
  $sql = "SELECT t1.username, t1.EmailAddress,t1.ContactNumbers, t3.Name, t3.Reg_No, t3.Address, t1.Title FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
  $changeto = "Supplier";
  $changetypeid = "2";
}elseif(($_SESSION['usertype'] == 'Supplier')){
  $sql = "SELECT t1.username, t1.EmailAddress,t1.ContactNumbers, t3.Name, t3.Reg_No, t3.Address, t1.Title FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
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
      $jobtitle = $row["Title"];
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

              </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
      <div class="col-md-9">
        <div class="nav-tabs-custom">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#updatePassword" data-toggle="tab">Update Password</a></li>
            <li><a href="#updateProfile" data-toggle="tab">Update Profile</a></li>
          </ul>

          <div class="tab-content">
            
            <div class="active tab-pane" id="updatePassword">
            
              <div style="height:300px;">
              <form id="frm_updatePassword">
                <div class="row">
                  <div class="col-md-3">
                    New Password :
                  </div>
                  <div class="col-md-9">
                    <input type="password" name="newpass" value="" class="form-control" id="txt_password">
                  </div>
                </div>
                <br/>
                <div class="row">
                  <div class="col-md-3">
                    Confirm Password :
                  </div>
                  <div class="col-md-9">
                    <input type="password" name="cfpassword" value="" class="form-control" id="txt_cfpassword">
                    <span class="text-danger" id="error_password"></span>
                  </div>
                </div>
                <br>
                <div class="col-md-12">
                  <button type="button" name="button" id="btnUpdatePassword" class="btn btn-info pull-right">Update</button>
                </div>
              </div>
              </form>
                

            </div>

            <div class="tab-pane" id="updateProfile">
                <div style="height:300px;">
                <form id="frm_UpdateUserProfile">
                  <div class="col-md-3">
                    Name :
                  </div>
                  <div class="col-md-9">
                    <input type="text" name="name" value="<?php echo $username?>" class="form-control" id="txtName">
                  </div>
                  <div class="col-md-12">
                    <br>
                  </div>
                  <div class="col-md-3">
                    Job Title :
                  </div>
                  <div class="col-md-9">
                    <input type="text" name="jobtitle" value="<?php echo $jobtitle?>" class="form-control" id="txtJobTitle">
                  </div>
                  <div class="col-md-12">
                    <br>
                  </div>
                  <div class="col-md-3">
                    Contact No. :
                  </div>
                  <div class="col-md-9">
                    <input type="text" name="contactno" value="<?php echo $ContactNumbers?>" class="form-control" id="txtContactNo">
                  </div>
                  <div class="col-md-12">
                    <br>
                  </div>
                
                  <div class="col-md-12">
                    <button type="button" name="button" id="btnUpdateUserProfile" class="btn btn-info pull-right">Update</button>
                  </div>
                  </form>
            </div>
            </div>
          </div>
          <!-- /.tab-content -->
        </div>
        <!-- /.nav-tabs-custom -->
        <!-- /.nav-tabs-custom -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>




  <script>
  $('#btnUpdatePassword').on('click', function(){
    var newpass = $('#txt_password').val();
    var cfpass = $('#txt_cfpassword').val();

    if(newpass == cfpass){
      $.ajax({
        type: "POST",
        url: "market.php?function=UpdatePassword&user_id=<?php echo $userid;?>",
        data: $("#frm_updatePassword").serialize(),
        dataType: "json",
        success: function (response) {
          alert("Password has been updated successfully.")
          location.reload();
        },
        failure: function (response) {
          alert(response);
        },
        error: function (response) {
          alert(response);
        }
      });
    }else{
      $("#error_password").text("Password and Confirm Password does not match.");
    }

  });

  $('#btnUpdateUserProfile').on('click', function(){
    var name = $('#txtName').val();
    var jobtitle = $('#txtJobTitle').val();
    var contactno = $('#txtContactNo').val();
    $.ajax({
      type: "POST",
      url: "market.php?function=UpdateUserProfile&user_id=<?php echo $userid;?>",
      data: $("#frm_UpdateUserProfile").serialize(),
      dataType: "json",
      success: function (response) {
        alert("Profile has been updated successfully.")
        location.reload();
      },
      failure: function (response) {
        alert(response);
      },
      error: function (response) {
        alert(response);
      }
    });
  });


</script>
