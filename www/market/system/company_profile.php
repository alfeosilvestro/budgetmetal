
<?php
include_once('lib/pdowrapper/class.pdowrapper.php');
$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
// get instance of PDO Wrapper object
$db = new PdoWrapper($dbConfig);
$companyid= "";
if(isset($_SESSION['userid'])){
  $userid = $_SESSION['userid'];
}else{
  echo "no userid";
}

if(isset($_GET['companyid'])){
  $companyid = $_GET['companyid'];
}else{
  echo "no companyid";
}

$company_admin = 0;
if(isset($_SESSION['Company_Admin']) && isset($_SESSION['M_Company_Id'])){
  if($_SESSION['M_Company_Id'] == $companyid){
    $company_admin = $_SESSION['Company_Admin'];
  }
}



$sql = "SELECT * From m_company  where id = ".$companyid;
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $company_name = $row["Name"];
      $reg_no = $row["Reg_No"];
      $Address = $row["Address"];
      $About = $row["About"];
      $supplierRating= $row["SupplierAvgRating"];
      $IsVerified = $row["IsVerified"];
    }
  }
}

$Is_supplier_company = "0";
$sql = "SELECT *  FROM `m_user` WHERE `C_UserType` = 2 AND `Status` = 1 AND `Confirmed` = 1 AND `M_Company_Id` = ".$companyid;
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    $Is_supplier_company = "1";
  }
}
?>
<!-- Main content -->
<section class="content">
  <h1 style="font-variant: small-caps; text-transform: uppercase;">
    <?php echo $company_name; ?>
  </h1>

  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
        <div class="box-header">

          <div class="row">
            <div class="col-md-10">
              <strong style="font-size: 16px;">About</strong>
                <span class='text-sm text-primary'>
                <?php

                  // if($IsVerified)
                  // {
                  //     echo "(This company has been verified by BudgetMetal.)";
                  // }
                  // else
                  // {
                  //     echo "(This company has not been verified by BudgetMetal yet.)";
                  // }

                ?>
                </span>
              </div>
              <div class="col-md-2">
                <div class="pull-right">
                  <?php

                  if($company_admin == 1){
                    ?>
                    <a href="#" id="btnEditAbout" class="btn btn-info"  onclick="EditAbout()">
                      <i class="fa fa-pencil-square-o"></i>
                    </a>
                    <?php
                  }

                  ?>
                </div>
              </div>
            </div>

        </div>
          <div class="box-body">
            <div class="row">
              <div class="col-md-12">
                  <!--AMK- Added for Tags-->
                <?php
                  if($About == null || $About == "")
                  {
                    echo "<textarea style='width:100%; resize: none; border: 0px solid white;' readonly='' placeholder='About company. (Your company description here)'></textarea>";
                  }
                  else
                  {
                    echo "<textarea style='width:100%; height: 250px; border: 0px solid white;' readonly='' placeholder='About company. (Your company description here)'>". $About ."</textarea>";
                  }

                  //echo nl2br($About);
                ?>
              </div>
            </div>

          </div>
        </div>

      </div>
    </div>
    <style>
    .row-flex {
  display: flex;
  flex-wrap: wrap;
}


 .content {
  height: 85%;
}
    </style>
    <div class="row">
      <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="box box-primary">
          <div class="box-header">
          <div class="row">
              <div class="col-md-6">
                <h4><i class="fa fa-book margin-r-5"></i> Details</h4>
              </div>
              <div class="col-md-6">
                <div class="pull-right">
                  <?php

                  if($company_admin == 1){
                    ?>
                    <a href="#" id="btnEditProfile" class="btn btn-info"  onclick="EditProfile()">
                      <i class="fa fa-pencil-square-o"></i>
                    </a>
                    <?php
                  }

                  ?>
                </div>
              </div>
            </div>
            
          </div>
          <div class="box-body">
            <strong>UEN No.</strong> : <?php echo $reg_no; ?>
            <br><br>
            <strong>Address</strong> : <br>
            <?php echo $Address; ?>
            <br>
            <br>

            <?php
            if($Is_supplier_company == "1"){
              echo '<strong>Tags:</strong> <br/>';
              $sql = "SELECT t2.TagName FROM `md_suppliertags` t1 INNER JOIN c_tags t2 on t2.Id = t1.`C_Tags_Id` WHERE t2.Status = 1 AND t1.`M_User_Id` = ".$companyid;
              $result = $conn->query($sql);
              if (isset($result)){
                if ($result->num_rows > 0) {
                  
                  echo '<br/><table class="smaller_font_table"><tr><td>';
                  while($row = $result->fetch_assoc()) {
                    $TagName = $row["TagName"];
                    echo '<span class="badge badge-sm bg-primary" style="margin: 2px;">'. $TagName .'</span>';
                  }
                  echo '</td></tr></table>';
                  
                }
              }
            }
            ?>

          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="box box-primary">
          <div class="box-header">
            <h4><i class="glyphicon glyphicon-star"></i> Rating</h4>
          </div>
          <div class="box-body">
            <style media="screen">
              span.stars, span.stars span {
                display: block;
                background: url(img/stars.png) 0 -16px repeat-x;
                width: 80px;
                height: 16px;
              }

              span.stars span {
                background-position: 0 0;
              }
            </style>
            
            <table width="100%" class="table smaller_font_table">
              <tbody>
                <?php
                $tmpSOQ = "0.0";
                $tmpSOD = "0.0";
                $tmpSQ = "0.0";
                $tmpPrice = "0.0";
                $sql = "SELECT AVG(`SpeedOfQuotation`) as SOQ, AVG(`SpeedofDelivery`) as SOD, AVG( `ServiceQuality`) as SQ, AVG(`Price`) as Price, AVG(`Payment`) as Payment FROM `md_companyrating` WHERE `Company_Id` = ".$companyid. " GROUP BY Company_Id";
                $result = $conn->query($sql);
                if (isset($result)){
                  if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                      $tmpSOQ = number_format($row["SOQ"],2);
                      $tmpSOD = number_format($row["SOD"],2);
                      $tmpSQ = number_format($row["SQ"],2);
                      $tmpPrice = number_format($row["Price"],2);
                    }
                  }else{

                  }
                }
                //if($Is_supplier_company =="1"){
                  ?>
                  <tr>
                    <td>Overall Rating :</td>
                    <td><span class="stars"><?php echo  number_format($supplierRating); ?></span></td>
                  </tr>

                  <tr>
                    <td>Speed of Quotation :</td>
                    <td><span class="stars"><?php echo $tmpSOQ; ?></span></td>
                  </tr>
                  <tr>
                    <td>Speed of Delivery :</td>
                    <td><span class="stars"><?php echo $tmpSOD; ?></span></td>
                  </tr>
                  <tr>
                    <td>Service Quality :</td>
                    <td><span class="stars"><?php echo $tmpSQ; ?></span></td>
                  </tr>
                  <tr>
                    <td>Price :</td>
                    <td><span class="stars"><?php echo $tmpPrice; ?></span></td>
                  </tr>
                  <?php
                //}else{
                  ?>
                  <!-- <tr>
                    <td>Overall Rating</td>
                    <td><?php //echo number_format(0,2); ?></td>
                  </tr> -->

                  <?php
                //}
                ?>

              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="box box-primary">
          <div class="box-header">
            <h4><i class="glyphicon glyphicon-bullhorn"></i> Feedbacks</h4>
          </div>
          <div class="box-body">
            <div class="text-center">

                <?php
                $query = "SELECT * FROM md_companyrating Where Company_Id = $companyid";
                $count = 0;
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  foreach ($results as $row) {
                    $count = $count+1;
                  }
                }
                echo "<h1><a href='#fb'>".$count."</a></h1>";
                ?>
                &nbsp; Feedbacks
            </div>

          </div>
        </div>
      </div>
    </div>

<?php

if($Is_supplier_company == "1"){

?>
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">

            <div class="row">
              <div class="col-md-6">
                <h3 class="box-title">Services</h3>
              </div>
              <div class="col-md-6">
                <div class="pull-right">
                  <?php

                  if($company_admin == 1){
                    ?>
                    <a href="#" id="btnEditService" class="btn btn-info"  onclick="EditService()">
                      <i class="fa fa-pencil-square-o"></i>
                    </a>
                    <?php
                  }

                  ?>
                </div>
              </div>
            </div>
          </div>
          <div class="box-body" style="height: 250px; overflow-y: auto;">
            
            <ul>
              <?php
              $sql = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t2.M_Parent_Services_Id is null and t1.`M_Company_Id` = ".$companyid;
              $result = $conn->query($sql);
              if (isset($result)){
                if ($result->num_rows > 0) {
                  // output data of each row
                  while($row = $result->fetch_assoc()) {
                    $service_id = $row["M_Services_Id"];
                    $service_name = $row["ServiceName"];
                    echo "<li type='square'>".$service_name;
                    echo "<ul>";
                    $sql1 = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t2.M_Parent_Services_Id = ".$service_id." and t1.`M_Company_Id` = ".$companyid;
                    $result1 = $conn->query($sql1);
                    if (isset($result1)){
                      if ($result1->num_rows > 0) {
                        // output data of each row
                        while($row1 = $result1->fetch_assoc()) {
                          $service_id1 = $row1["M_Services_Id"];
                          $service_name1 = $row1["ServiceName"];
                          echo "<li type='square'>".$service_name1;
                          echo "<ul>";
                          $sql2 = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t2.M_Parent_Services_Id = ".$service_id1." and t1.`M_Company_Id` = ".$companyid;
                          $result2 = $conn->query($sql2);
                          if (isset($result2)){
                            if ($result2->num_rows > 0) {
                              // output data of each row
                              while($row2 = $result2->fetch_assoc()) {
                                $service_id2 = $row2["M_Services_Id"];
                                $service_name2 = $row2["ServiceName"];
                                echo "<li type='square'>".$service_name2;

                                echo "</li>";
                              }
                            }
                          }
                          echo "</ul>";
                          echo "</li>";
                        }
                      }
                    }
                    echo "</ul>";
                    echo "</li>";
                  }
                }
              }

              ?>
            </ul>
          </div>
        </div>

      </div>
    </div>
    <?php
}
  if($_SESSION['M_Company_Id'] == $companyid){
    ?>

    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
              <h3 class="box-title">User List</h3>

              <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
              </div>
          </div>
          <div class="box-body">
            <table id="rfq" class="table table-bordered table-striped smaller_font_table">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Job Title</th>
                  <th>Type</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php

                $query = "SELECT * FROM m_user Where M_Company_Id = $companyid";

                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $row["UserName"];?></td>
                      <td><?php echo $row["EmailAddress"];?></td>
                      <td><?php echo $row["Title"];?></td>
                      <td><?php
                      if($row["C_UserType"] == "2"){
                        echo "Supplier";
                      }elseif($row["C_UserType"] == "3"){
                        echo "Buyer";
                      }
                      ?></td>
                      <td><?php
                      $out = "";
                      $u_id = $row["Id"];;
                      $btnAdminText = "";
                      $btnAdminFun = "";
                      $btnDisableText = "";
                      $btnDisableFun = "";
                      if($row["Status"] == 1){
                        if($row["Confirmed"] == 1){
                          if($row["Company_Admin"] == 1){
                            $out = "Admin";
                            $btnAdminText = "Revoke Admin Rights";
                            $btnAdminFun = "RemoveFromAdmin";
                          }else{
                            $out = "Normal User";
                            $btnAdminText = "Make as Admin";
                            $btnAdminFun = "MakeAdmin";
                          }
                        }else{
                          $out= "Unconfirmed";
                        }
                        $btnDisableText = "Disable";
                        $btnDisableFun = "disableUser";
                      }else{
                        $out= "Disable";
                        $btnDisableText = "Enable";
                        $btnDisableFun = "enableUser";
                      }
                      echo $out;
                      ?></td>
                      <td><?php
                      if($company_admin == 1){
                        if($userid != $u_id){
                          if($btnAdminFun != ""){
                            $out = '<button class="btn btn-success btn-sm" onclick="'.$btnAdminFun.'('.$u_id.');">'.$btnAdminText.'</button> &nbsp;&nbsp;&nbsp;';
                            echo $out;
                          }
                          $out = '<button class="btn btn-danger btn-sm" onclick="'.$btnDisableFun.'('.$u_id.');">'.$btnDisableText.'</button> &nbsp;&nbsp;&nbsp;';
                          echo $out;
                        }
                      }
                      ?></td>
                    </tr>

                    <?php
                  }
                }
                ?>

              </tbody>
            </table>
          </div>
        </div>

      </div>
    </div>
    <?php
  }


    ?>

    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
              <h3 class="box-title" id="fb">Feedback</h3>

              <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
              </div>
          </div>
          <div class="box-body">
            <?php
            $query = "SELECT t1.*, t2.UserName, t3.Name FROM md_companyrating t1 inner join m_user t2 on t2.ID = t1.User_Id inner join m_company t3 on t3.ID = t2.M_Company_Id Where Company_Id =  $companyid";
            ?>
            <table id="list_fb" class="table table-bordered table-striped smaller_font_table">
              <thead>
                <tr>
                <th style="width:5%;">No.</th>
                <th style="width:30%;">Rating</th>
                <th  style="width:10%;">User</th>
                <th  style="width:55%;">Feedback</th>
              </tr>
              </thead>
              <tbody>
                <?php
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  $tmpSOQ = "0.0";
                    $tmpSOD = "0.0";
                    $tmpSQ = "0.0";
                    $tmpPrice = "0.0";
                  foreach ($results as $row) {
                    $count = $count + 1;
                    $tmpSOQ = number_format($row["SpeedOfQuotation"],2);
                    $tmpSOD = number_format($row["SpeedofDelivery"],2);
                    $tmpSQ = number_format($row["ServiceQuality"],2);
                    $tmpPrice = number_format($row["Price"],2);
                    ?>
                    <tr>
                      <td><?php echo $count;?></td>
                      <td>
                        <table width="200px" class="table smaller_font_table">
                          <tbody>
                            <tr>
                              <td>Speed of Quotation :</td>
                              <td><span class="stars"><?php echo $tmpSOQ; ?></span></td>
                            </tr>
                            <tr>
                              <td>Speed of Delivery :</td>
                              <td><span class="stars"><?php echo $tmpSOD; ?></span></td>
                            </tr>
                            <tr>
                              <td>Service Quality :</td>
                              <td><span class="stars"><?php echo $tmpSQ; ?></span></td>
                            </tr>
                            <tr>
                              <td>Price :</td>
                              <td><span class="stars"><?php echo $tmpPrice; ?></span></td>
                            </tr>
                          </tbody>

                        </table>
                      </td>
                      <td><?php  echo $row["UserName"] ."<br> (".$row["Name"].")";?></td>
                      <td> <?php echo $row["Title"];?></b> <p><?php echo $row["Description"];?> </td>
                    </tr>
                    <?php
                    //echo $row["Description"];
                    //echo "<hr>";
                  }
                }
                ?>
              </tbody>
            </table>

          </div>
        </div>

      </div>
    </div>




    <!-- /.row -->
  </section>
  <div class="modal fade" id="aboutbox" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">About Company</h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="form-group col-md-12">
            <form id="update_about" action="update_about" method="get">
              <textarea name="about" id="txt_about"   rows="5" style="width:100%; resize: none;"><?php echo $About;?></textarea>
            </form>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btnSubmit" >Save</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="profilebox" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Company Profile</h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <form id="update_profile" action="update_profile" method="post">
              <input type="hidden" name="companyid" value="<?php echo $companyid; ?>">

            <div class="form-group col-md-12">
              <strong>Address</strong>
              <textarea name="address" id="txt_address"  class="form-control" rows="5" cols="50"><?php echo $Address;?></textarea>
            </div>

            <!--AMK- Added for Tags-->
            <!-- <div class="form-group col-md-12">
              <strong>Tags</strong>
              <select class="form-control select2" multiple="multiple"
                  style="width: 100%;"
                  data-bind="value: tags, valueUpdate: 'blur'" name="tagList[]">
                  <?php
                  // $sql2 = "SELECT * FROM `c_tags` where Status = 1 Order by Seq";
                  // $result2 = $conn->query($sql2);
                  // if (isset($result2)){
                  //   if ($result2->num_rows > 0) {
                  //     while($row2 = $result2->fetch_assoc()) {
                  //       $status = "";
                  //       if($row2["Selectable"] == "0"){
                  //         $status = "disabled";
                  //       }
                  //       echo "<option value='". $row2["Id"] ."' ".$status.">" . $row2["TagName"] ;
                  //       echo "</option>";
                  //     }
                  //   }
                  // }
                  ?>


                </select>
            </div> -->


            <?php if($Is_supplier_company == "1"){ ?>
            <div class="form-group col-md-9">
              <strong>Tags</strong>
              <select class="form-control select2" multiple="multiple"
                  style="width: 100%;"
                  data-bind="value: tags, valueUpdate: 'blur'" name="tagList[]" id="tagselect">
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
                        $selected = "";
                          $sql = "SELECT C_Tags_Id FROM `md_suppliertags` WHERE `M_User_Id` = ".$companyid;
                          $result = $conn->query($sql);
                          if (isset($result)){
                            if ($result->num_rows > 0) {
                              while($row = $result->fetch_assoc()) {
                                if($row["C_Tags_Id"] ==  $row2["Id"]) { $selected = "Selected"; }
                              }
                            }
                          }
                        echo "<option value='". $row2["Id"] ."' ".$selected." ".$status.">" . $row2["TagName"] ;
                        echo "</option>";
                      }
                    }
                  }
                  ?>
              </select>
            </div>
          <?php } ?>
          </form>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btnSubmit_Profile" >Save</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="servicebox" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Company Services</h4>
        </div>
        <div class="modal-body">
          <div class="row">

            <input type="hidden" name="companyid" value="<?php echo $companyid; ?>">

            <div class="form-group col-md-9">
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

              <!--  <script src="dev/jquery.min.js"></script>
                <script src="dev/bootstrap.min.js"></script>-->
               <script src="dev/logger.js"></script>
                <script src="dev/treeview.js"></script>


            </div>


          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btnSubmit_Service" >Save</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
  <?php
  $sql = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t1.`M_Company_Id` = ".$companyid;
  $result = $conn->query($sql);
  $supplier_service = "'0'";
  if (isset($result)){
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        $service_id = $row["M_Services_Id"];
        $supplier_service = $supplier_service. ", '" . $service_id . "'";
      }
    }
  }


   ?>
  <script>

  $(function () {
    $('#treeview-checkbox-demo').treeview({
      debug : true,
      data : [<?php echo $supplier_service; ?>]
    });
    $('#rfq').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    });
    $('#btnSubmit').on('click', function(){
      var about = $('#txt_about').val();
      $.ajax({
        type: 'POST',
        url: "market.php?function=EditAbout&companyid=<?php echo $companyid;?>",
        data: $("#update_about").serialize(),
        dataType: "json",
        success: function (response) {
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


  });
  $('#btnSubmit_Profile').on('click', function(){
    var address = $('#txt_address').val();
    var x = $('#tagselect').find(":selected").text();
    if(x == ""){
      alert("Please maintain at least one tag.");
    }
   else{
    $.ajax({
      type: 'POST',
      url: "market.php?function=EditProfile",
      data: $("#update_profile").serialize(),
      dataType: "json",
      success: function (response) {
        location.reload();
      },
      failure: function (response) {
        alert(response);
      },
      error: function (response) {
        alert(response);
      }
    });
   }
  });

  $('#btnSubmit_Service').on('click', function(){
    var services = $('#treeview-checkbox-demo').treeview('selectedValues');
    $.ajax({
      type: "GET",
      url: "market.php?function=EditService&companyid=<?php echo $companyid;?>&services=" + services,
      dataType: "json",
      success: function (response) {
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

  function MakeAdmin(id){
    $.ajax({
      url: 'market.php?function=UserAdministration&act=MakeAdmin&id='+id,
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        location.reload();
      },
      error: function (data) {
        location.reload();
      }

    });
  }
  function RemoveFromAdmin(id){
    $.ajax({
      url: 'market.php?function=UserAdministration&act=RemoveFromAdmin&id='+id,
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        location.reload();
      },
      error: function (data) {
        location.reload();
      }

    });
  }
  function disableUser(id){
    $.ajax({
      url: 'market.php?function=UserAdministration&act=disableUser&id='+id,
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        location.reload();
      },
      error: function (data) {
        location.reload();
      }

    });
  }
  function enableUser(id){
    $.ajax({
      url: 'market.php?function=UserAdministration&act=enableUser&id='+id,
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        location.reload();
      },
      error: function (data) {
        location.reload();
      }

    });
  }

  function EditAbout(){
    $('#aboutbox').modal('show');
  }

  function EditProfile(){
    $('#profilebox').modal('show');
  }

  function EditService(){

    $('#servicebox').modal('show');
  }

  $(document).ready(function() {
		$('.select2').select2();


	});
  $(function() {
      $('span.stars').stars();
  });

  $.fn.stars = function() {
      return $(this).each(function() {
          // Get the value
          var val = parseFloat($(this).html());
          // Make sure that the value is in 0 - 5 range, multiply to get width
          var size = Math.max(0, (Math.min(5, val))) * 16;
          // Create stars holder
          var $span = $('<span />').width(size);
          // Replace the numerical value with stars
          $(this).html($span);
      });
  }


  $(function () {
    $('#list_fb').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    });
	});

  </script>
