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
$rfq_ref = "";
if(isset($_GET["rfq_ref"])){
  $rfq_ref = $_GET["rfq_ref"];
}
$rfq_id = 0;
$FinalClosingDate = "";
$sql = "SELECT * FROM `t_document` t1 where Status = 1 and C_DocumentType = 6 and t1.DocumentNo = '".$rfq_ref."'";
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $rfq_id = $row["Id"];
      $rfq_ref = $row["DocumentNo"];
      $rfq_statusid = $row["C_RfqStatus"];
      $rfq_userid = $row["M_User_Id"];
      $rfq_createddate = $row["CreatedDate"];
      $rfq_subject = $row["Title"];
      $FName = $row["ContactPersonFName"];
      $LName = $row["ContactPersonLName"];
    }




    $sql = "SELECT * FROM `t_requestforquotation` t1 where t1.Document_Id = ".$rfq_id;
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $FinalClosingDate = $row["FinalClosingDate"];
          if($row["Supplier_Provide_Material"]== "1"){
            $Supplier_Provide_Material = "Yes";
          }else{
            $Supplier_Provide_Material =  "No";
          }
          if($row["Supplier_Provide_Transport"]== "1"){
            $Supplier_Provide_Transport =  "Yes";
          }else{
            $Supplier_Provide_Transport =  "No";
          }
          $Remark = $row["Remark"];
        }
      }
    }

    $sql = "SELECT t1.username, t1.EmailAddress,  t3.Name, t3.Reg_No,t3.Id FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$rfq_userid;
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $username = $row["username"];
          $email =  $row["EmailAddress"];
          $company_name = $row["Name"];
          $company_id = $row["Id"];
          $reg_no = $row["Reg_No"];
        }
      }
    }

    ?>
    <Style>
    .post-comments {
      padding-bottom: 9px;
      margin: 5px 0 5px;
    }

    .comments-nav {
      border-bottom: 1px solid #eee;
      margin-bottom: 5px;
    }

    .post-comments .comment-meta {
      border-bottom: 1px solid #eee;
      margin-bottom: 5px;
    }

    .post-comments .media {
      margin-bottom: 5px;
      padding-left: 10px;
    }

    .post-comments .media-heading {
      font-size: 12px;
      color: grey;
    }

    .post-comments .comment-meta a {
      font-size: 12px;
      color: grey;
      font-weight: bolder;
      margin-right: 5px;
    }
  </Style>
  <div class="row">
    <div class="col-sm-12">
      <h3>
        View RFQ
      </h3>
      <div id="notify" class="alert alert-success" style="display:none;">
        <a href="#" class="close" data-dismiss="alert">&times;</a>

        <div class="message"></div>
      </div>
    </div>
  </div>

  <form action="#" method="post" id="view_rfq" >

    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">RFQ Info</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>RFQ Ref: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $rfq_ref; ?>
                  <input name="rfq_ref" type="hidden" readonly class="form-control" value="<?php echo $rfq_ref; ?>" >
                  <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Company Name: </label>
                </div>
                <div class="col-sm-6">
                <a href="index.php?rdp=company_profile&companyid=<?php echo $company_id; ?>" target="_blank"> <?php echo $company_name; ?> </a>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Contact Person First Name: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $FName; ?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>RFQ Date: </label>
                </div>
                <div class="col-sm-6">
                  <input type="hidden" name="rfq_createddate" id="rfq_datepicker" value="<?php 	 echo date('d-m-Y', strtotime($rfq_createddate));?>">
                  <?php 	 echo date('d-m-Y', strtotime($rfq_createddate));?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Project Name/ No.: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $rfq_subject;?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Supplier Provide Material: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $Supplier_Provide_Material;?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Supplier Provide Transport: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $Supplier_Provide_Transport;?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Status: </label>
                </div>
                <div class="col-sm-6">
                  <?php
                  $sql = "SELECT t1.Name FROM `c_codetable` t1 where t1.id = ".$rfq_statusid;
                  $result = $conn->query($sql);
                  if (isset($result)){
                    if ($result->num_rows > 0) {
                      // output data of each row
                      while($row = $result->fetch_assoc()) {
                        $rfq_status = $row["Name"];
                        echo $rfq_status;
                      }
                    }
                  }


                  ?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Business Registration No.: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $reg_no; ?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Contact Person Last Name: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $LName; ?>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Due Date: </label>
                </div>
                <div class="col-sm-6">
                  <?php
                  if ($FinalClosingDate != ""){
                    echo date('d-m-Y', strtotime($FinalClosingDate));
                  }
                  ?>
                  <?php

                  if($rfq_statusid == 10){
                    if(($_SESSION['usertype'] == 'Buyer')){
                      ?>
                      &nbsp;  <a href="#" id="btnEditDueDate" class="btn btn-info"  onclick="editFinalDate()">
                        <i class="fa fa-pencil-square-o"></i>
                        Edit Due Date
                      </a>
                      <?php
                    }
                  }

                  ?>
                </div>
              </div>
            </div>

            <div class="form-group">
              <div class="row">
                <div class="col-sm-6">
                  <label>Remark: </label>
                </div>
                <div class="col-sm-6">
                  <?php echo $Remark; ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /.box-body -->
    </div>


    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">File Attachments</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>

      </div>
      <!-- /.box-header -->
      <div class="box-body">

        <div class="row">
          <div class="col-sm-12">
            <table class="table table-hover" id="fileList">
              <thead>
                <tr>
                  <th>No.</th>
                  <th style="width:40%">File</th>
                  <th>Description</th>

                </tr>
              </thead>
              <tbody>
                <?php
                $query = "SELECT t2.* FROM t_document t1 Inner Join t_fileattachments t2 on t2.T_Document_Id = t1.Id Where t2.Status = 1 and C_DocumentType = 6 and t1.DocumentNo = '". $rfq_ref."'";
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>

                      <td><?php
                      $out = '<a href="attachment/' . $row["FileName"] .'" target="_blank">'.$row["FileName"].'</a>';
                      echo $out;
                      ?></td>

                      <td><?php
                      $out = $row["Message"];
                      echo $out;
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



    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Selected Services</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="row">
          <div class="col-sm-12">
            <input type="hidden" id="serviceno" value="0">
            <table class="table table-hover" id="servicelist">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Service Level 1</th>
                  <th>Service Level 2</th>
                  <th>Service Level 3</th>
                  <th>Service Level 4</th>
                  <th>Service Level 5</th>
                  <th width="10%">Metal Type</th>


                </tr>
              </thead>
              <tbody>
                <?php
                $query = "SELECT t1.Id, t1.`M_Service_Id`, t3.ServiceName, t3.C_Metal_Type, t3.M_Parent_Services_Id FROM `td_requiredservices` t1 INNER JOIN m_services t3 on t3.Id = t1.M_Service_Id Where t1.Status= 1 and  `T_RFQ_Id` = ".$rfq_id;
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;

                    ?>
                    <tr id="trservice_<?php echo $count;?>" align="left" >
                      <td><?php echo $count; ?></td>
                      <?php
                      $parent_id =$row["M_Service_Id"];
                      $c = 0;
                      $servicename = "";
                      $a=array();
                      $a_blank=array();
                      for($i=1;$i<=5;$i++){
                        $q = "SELECT t3.ServiceName, t3.M_Parent_Services_Id FROM  m_services t3 Where `Id` = ".$parent_id." Limit 1";
                        if(null !== $db->pdoQuery($q)){
                          $r = $db->pdoQuery($q)->results();
                          if (!empty($r)){
                            foreach ($r as $ro) {
                              if($ro["M_Parent_Services_Id"] == ""){
                                $parent_id =  0;
                              }else{
                                $parent_id =  $ro["M_Parent_Services_Id"];
                              }
                              $servicename = $ro["ServiceName"];
                            }
                          }else{
                            $servicename = "";
                          }

                        }
                        if($servicename != ""){
                          array_push($a,$servicename);

                        }else{
                          array_push($a_blank,$servicename);
                        }


                      }
                      $a_reversed = array();
                      $a_reversed = array_reverse($a);
                      foreach ($a_reversed as $value) {
                        echo "<td>".$value."</td>";
                      }
                      foreach ($a_blank as $value) {
                        echo "<td>".$value."</td>";
                      }

                      ?>

                      <td ></td>


                    </tr>
                    <?php
                  }
                }
                ?>
              </tbody>
            </tbody>
          </table>
        </div>


      </div>
    </div>
  </div>
  <?php
  if(($_SESSION['usertype'] == 'Buyer')){
    ?>
    <div class="box box-danger">
      <div class="box-header with-border">
        <h3 class="box-title">Selected Supplier</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="row">
          <div class="box-body">
            <table id="quotations" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Ref No.</th>
                  <th>Company</th>
                  <th>Address</th>
                  <th>Tags</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $query = "SELECT * FROM m_company Where Id in (Select M_Company_Id From t_targetedsuppliers where T_Document_Id = $rfq_id)";
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    $tags = "";
                    $sql1 = "SELECT * FROM `c_tags` WHERE `Id` IN (SELECT `C_Tags_Id` FROM `md_suppliertags` WHERE `M_User_Id` in (".$row["Id"] ."))";
                    $result1 = $conn->query($sql1);
                    if (isset($result1)){
                      if ($result1->num_rows > 0) {
                        // output data of each row
                        while($row_tag = $result1->fetch_assoc()) {
                          if($tags == "" ){
                            $tags = $row_tag["TagName"];
                          }else{
                            $tags = $tags . "," .  $row_tag["TagName"];
                          }
                        }
                      }
                    }
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $row["Reg_No"];?></td>
                      <td><?php echo $row["Name"];?></td>
                      <td><?php echo $row["Address"];?></td>
                      <td><?php echo $tags;?></td>
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

    <div class="box box-danger">
      <div class="box-header with-border">
        <h3 class="box-title">Quotations</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="row">
          <div class="box-body">
            <table id="quotations" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Ref No.</th>
                  <th>Company</th>
                  <th>Contact Person</th>
                  <th>Submitted Date</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php
                $query = "SELECT t1.Id, t1.DocumentNo, t1.CreatedDate, t2.Name as Status, t4.Name As CompanyName, t1.ContactPersonFName, t1.ContactPersonLName FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_QuotationStatus INNER JOIN m_user t3 on t3.Id = t1.M_User_Id  Inner JOIN m_company t4 on t4.Id = t3.M_Company_Id Where t1.C_QuotationStatus IN (15,16,17,18,19) and t1.DocumentNo = '$rfq_ref'";
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $row["DocumentNo"];?></td>
                      <td><?php echo $row["CompanyName"];?></td>
                      <td><?php echo $row["ContactPersonFName"].' '. $row["ContactPersonLName"];?></td>
                      <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                      <td><?php echo $row["Status"];?></td>
                      <td><?php
                      $out = '<a href="index.php?rdp=view_quotation&op=view&id=' . $row["Id"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a>';
                      echo $out;
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

    <div class="col-sm-6">
      <?php
      $invited = "";
      $interested = "";
      if(($_SESSION['usertype'] == 'Buyer')){
        $sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No,t1.M_Company_Id FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
      }else{
        $sql = "SELECT t1.username, t1.EmailAddress,  t3.Name, t3.Reg_No,t1.M_Company_Id FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
      }

      $result = $conn->query($sql);
      if (isset($result)){
        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            $user_company_id = $row["M_Company_Id"];
          }
        }
      }
      $query4 = "SELECT * FROM `t_targetedsuppliers` WHERE `T_Document_Id` = ".$rfq_id." and `M_Company_Id` = ". $user_company_id ."  Limit 1";
      $results4 = $db->pdoQuery($query4)->results();
      if (!empty($results4)){
        foreach ($results4 as $row4) {
          $invited = "yes";
        }
      }

      $query4 = "SELECT * FROM `t_document` WHERE 	C_QuotationStatus in (15,16) and Status =  1 and C_DocumentType = 7 and `DocumentNo` = '".$rfq_ref."' and `M_User_Id` = ". $userid ."  Limit 1";
      $results4 = $db->pdoQuery($query4)->results();
      if (!empty($results4)){
        foreach ($results4 as $row4) {
          $interested = "yes";
          $qid = $row4["Id"];
        }
      }
      ?>
      <div class="btn-group pull-left">
        <?php if(($_SESSION['usertype'] == 'Supplier') &&  ($rfq_statusid == '10') && ($invited == 'yes') && ($interested != 'yes' )){

          ?>
          <a href="index.php?rdp=create_quotation&rfq_ref=<?php echo $rfq_ref;?>" class="btn btn-info">
            <i class="fa fa-pencil-square-o"></i>
            Register Interest &amp; Draft Quotation
          </a>
        <?php }elseif(($_SESSION['usertype'] == 'Supplier') &&  ($rfq_statusid == '10') && ($invited == 'yes') && ($interested == 'yes' )){
          ?>
          <a href="index.php?rdp=edit_quotation&id=<?php echo $qid;?>" class="btn btn-warning">
            <i class="fa fa-pencil-square-o"></i>
            Edit Quotation
          </a>
          <?php
        }?>
        <?php
        $ownerrfq = "0";
        if(($_SESSION['usertype'] == 'Buyer')){
          $ownerrfq = "1";
          if($rfq_statusid == '10'){
            ?>
            <a href="#" class="btn btn-danger" onclick="withdrawn_rfq(<?php echo $rfq_id;?>)">
              <i class="fa fa-pencil-square-o"></i>
              Withdrawn
            </a>
            <?php
          }elseif($rfq_statusid == '9'){
            ?>
            <a href="index.php?rdp=edit_rfq&rfq_ref=<?php echo $rfq_ref;?>" class="btn btn-warning">
              <i class="fa fa-pencil-square-o"></i>
              Edit RFQ
            </a>
            <a href="#" class="btn btn-danger" onclick="withdrawn_rfq(<?php echo $rfq_id;?>)">
              <i class="fa fa-pencil-square-o"></i>
              Withdrawn
            </a>
            <?php
          }
        }
        ?>

      </div>

    </div>

  </div>
  <br />

</form>
<div class="box box-default">
  <div class="box-header with-border">
    <h3 class="box-title">Clarification</h3>

    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
    <div >
      <div class="post-comments">

        <div class="row">
          <?php
          if(($_SESSION['usertype'] == 'Supplier') ){
            $sql = "SELECT * FROM `t_clarifications` t1 where Status = 1 and  t1.T_Document_Id = ".$rfq_id ." AND (t1.M_Asking_Person_Id = " . $userid." OR t1.make_public = 1)";

          }elseif(($_SESSION['usertype'] == 'Buyer') ){
            $sql = "SELECT * FROM `t_clarifications` t1 where Status = 1 and  t1.T_Document_Id = ".$rfq_id;
          }
          $result = $conn->query($sql);
          if (isset($result)){
            if ($result->num_rows > 0) {
              ?>
              <div class="comments-nav">
                <ul class="nav nav-pills">
                  <li role="presentation" class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                      there are <?php echo $result->num_rows; ?> comments <span class="caret"></span>
                    </a>
                  </li>
                </ul>
              </div>
              <?php
              // output data of each row
              while($row = $result->fetch_assoc()) {
                //$FinalClosingDate = $row["FinalClosingDate"];
                ?>
                <div class="media">
                  <!-- first comment -->

                  <div class="media-heading">
                    <?php
                    $asking_person = "";
                    $sql_user = "SELECT * FROM `m_user` t1 where Status = 1 and  t1.Id = ".$row["M_Asking_Person_Id"];
                    $result_user = $conn->query($sql_user);
                    if (isset($result_user)){
                      if ($result_user->num_rows > 0) {
                        while($row_user = $result_user->fetch_assoc()) {
                          $asking_person = "";
                          if($row["make_public"] != "1"){
                            $asking_person = $row_user["UserName"];
                          }
                          if($row_user["C_UserType"] == 2 ){
                            $asking_type = "Supplier";
                          }elseif($row_user["C_UserType"] == 3 ){
                            $asking_type = "Buyer";
                          }
                        }
                      }
                    }
                    ?>
                    <button class="btn btn-default btn-xs" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info"><?php echo $asking_type;?></span>
                    <?php if($row["make_public"] != "1"){echo $asking_person;} ?> asked:
                    </div>

                    <div class="panel-collapse collapse in" id="collapseThree">

                      <div class="media-left">
                        <div class="vote-wrap">
                          <div class="save-post">
                            <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
                          </div>
                          <div class="vote up">
                            <i class="glyphicon glyphicon-menu-up"></i>
                          </div>
                          <div class="vote inactive">
                            <i class="glyphicon glyphicon-menu-down"></i>
                          </div>
                        </div>
                        <!-- vote-wrap -->
                      </div>
                      <!-- media-left -->


                      <div class="media-body">
                        <p><?php echo $row["ClarificationQuestion"];?></p>
                        <div class="comment-meta">
                          <?php
                          if($row["M_Asking_Person_Id"] == $userid){


                            ?>
                            <span><a href="#" class="del_comment" onclick="del_comment(<?php echo $row["Id"];?>)" value="<?php echo $row["Id"];?>">Delete</a></span>
                            <?php

                          }
                          if($row["ClarificationAnswer"] == ""){
                            if(($_SESSION['usertype'] == 'Buyer') ){
                              if($row["M_Asking_Person_Id"] == $userid){}else{
                                ?>
                                <span><a style="font-size:15px;" class="" role="button" data-toggle="collapse" href="#replyComment<?php echo $row["Id"];?>" aria-expanded="false" aria-controls="collapseExample"><b>Reply</b></a>      </span>
                                <?php
                              }
                            }
                          }
                          ?>
                          <div class="collapse" id="replyComment<?php echo $row["Id"];?>">
                            <form id="RFQReply<?php echo $row["Id"];?>">
                              <div class="form-group">

                                <input type="hidden" name="comment_id" value="<?php echo $row["Id"];?>">
                                <input type="hidden" name="askinguser_id" value="<?php echo $row["M_Asking_Person_Id"];?>">
                                <input type="hidden" name="document_id" value="<?php echo $rfq_id;?>">
                                <input type="hidden" name="replyuser_id" value="<?php echo $userid;?>">
                                <div class="col-md-12">
                                  <!-- <label for="comment">Reply</label> -->
                                  <input type="text" name="replyComment" value="" class="form-control">
                                  <br>
                                  <button type="button" id="Send_Reply" class="btn btn-default" onclick="reply_Comment(<?php echo $row["Id"];?>)">Send</button>
                                </div>

                                <!-- <textarea name="replyComment" class="" rows="3" cols="50"></textarea> -->
                              </div>

                            </form>
                          </div>
                        </div>
                        <!-- comment-meta -->
                        <?php
                        if($row["ClarificationAnswer"] != ""){
                          ?>
                          <div class="media">
                            <!-- answer to the first comment -->
                            <div class="media-heading">
                              <button class="btn btn-default btn-collapse btn-xs" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> answered:
                            </div>

                            <div class="panel-collapse collapse in" id="collapseTwo">

                              <div class="media-left">
                                <div class="vote-wrap">
                                  <div class="save-post">
                                    <a href="#"><span class="glyphicon glyphicon-star" aria-label="Save"></span></a>
                                  </div>
                                  <div class="vote up">
                                    <i class="glyphicon glyphicon-menu-up"></i>
                                  </div>
                                  <div class="vote inactive">
                                    <i class="glyphicon glyphicon-menu-down"></i>
                                  </div>
                                </div>
                                <!-- vote-wrap -->
                              </div>
                              <!-- media-left -->
                              <div class="media-body">
                                <p><?php echo $row["ClarificationAnswer"];?></p>
                                <div class="comment-meta">
                                  <?php
                                  if(($_SESSION['usertype'] == 'Supplier') ){ }elseif(($_SESSION['usertype'] == 'Buyer') ){
                                    if($row["make_public"] != "1"){
                                      ?>
                                      <span><a href="#" class="public_comment" onclick="make_public_comment(<?php echo $row["Id"];?>)" value="<?php echo $row["Id"];?>">Mark as public</a></span>
                                      <?php
                                    }else{
                                      ?>
                                      <span>This comment has been published to other.</span>
                                      <?php
                                    }
                                  }
                                  ?>
                                </div>
                              </div>
                            </div>
                            <!-- comments -->

                          </div>
                          <!-- comments -->
                          <?php
                        }
                        ?>


                      </div>

                    </div></div>

                    <?php
                  }
                }
              }

              ?>

              <!-- first comment -->

              <!-- first comment -->
            </div>
            <?php
            if(($rfq_statusid == '10')){?>
              <form  id="frm_comment">
                <div class="form-group">
                  <label for="comment">
                    <?php
                    if(($_SESSION['usertype'] == 'Supplier') ){
                      echo "Clarifications";
                    }elseif(($_SESSION['usertype'] == 'Buyer') ){
                      echo "Announcement (To all suppliers)";
                    }
                    ?>


                  </label><br>
                  <input type="hidden" name="document_id" value="<?php echo $rfq_id;?>">
                  <input type="hidden" name="askinguser_id" value="<?php echo $userid;?>">
                  <input type="hidden" id="txt_ownerrfq"  name="ownerrfq" value="<?php echo $ownerrfq;?>">
                  <textarea id="txt_comment" name="comment"  rows="3" cols="50"></textarea>
                </div>
                <button type="button" id="btn_Send" class="btn btn-warning">Send</button>

              </form >
            <?php }?>
          </div>
          <!-- post-comments -->
        </div>
      </div>
    </div>
    <?php
  }else{
    ?>
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">This is invalid ID</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>

      </div>
    </div>

    <?php
  }
}?>


<div class="modal fade" id="editFinalDatebox" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Due Date</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="padding:10px;">
          <div class="input-group date col-sm-5">
            <div class="input-group-addon">
              <i class="fa fa-calendar"></i>
            </div>
            <input type="text" name="due_date" class="form-control pull-right" id="due_datepicker" value="<?php
            if ($FinalClosingDate != ""){
              echo date('d-m-Y', strtotime($FinalClosingDate));
            }

            ?>">
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
<script>


$(function () {
  var rfq_date = $("#due_datepicker").val();
  var res = rfq_date.split("-");
  var tmp = res[1] + "-" + res[0] + "-" + res[2];
  //alert(tmp);
  $('#due_datepicker').datepicker({
    startDate : new Date(tmp),
    format: "dd-mm-yyyy",
    autoclose: true,
    todayHighlight: true
  });


  $('[data-toggle="collapse"]').on('click', function() {
    var $this = $(this),
    $parent = typeof $this.data('parent')!== 'undefined' ? $($this.data('parent')) : undefined;
    if($parent === undefined) { /* Just toggle my  */
      $this.find('.glyphicon').toggleClass('glyphicon-plus glyphicon-minus');
      return true;
    }

    /* Open element will be close if parent !== undefined */
    var currentIcon = $this.find('.glyphicon');
    currentIcon.toggleClass('glyphicon-plus glyphicon-minus');
    $parent.find('.glyphicon').not(currentIcon).removeClass('glyphicon-minus').addClass('glyphicon-plus');

  });

  $("#btn_Send").click(function (e) {
    var txt_comment = $("#txt_comment").val();
    var txt_ownerrfq = $("#txt_ownerrfq").val();
    if (txt_comment == ""){
      alert("Please Enter Comment");
    }else{
      $.ajax({

        url: 'market.php?function=RFQComment&act=save&ownerrfq='+txt_ownerrfq,
        type: 'GET',
        data: $("#frm_comment").serialize(),
        dataType: 'json',
        success: function (data) {
          // alert("success");
          location.reload();
        },
        error: function (data) {
          //	 alert("error");
          location.reload();
        }

      });
    }

  });


  $('#btnSubmit').on('click', function(){
    var due_date = $('input[name=due_date]').val();
    $.ajax({
      type: "GET",
      url: "market.php?function=EditDueDate&rfq_id=<?php echo $rfq_id;?>&due_date=" + due_date,
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


  $('#quotations').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : false,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });

})

function del_comment(id){
  $.ajax({

    url: 'market.php?function=RFQComment&act=del&id='+id,
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

function make_public_comment(id){
  $.ajax({

    url: 'market.php?function=RFQComment&act=make_public&id='+id,
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

function reply_Comment(id){
  $.ajax({

    url: 'market.php?function=RFQComment&act=reply&id='+id,
    type: 'GET',
    data: $("#RFQReply"+id).serialize(),
    dataType: 'json',
    success: function (data) {
      location.reload();
    },
    error: function (data) {
      location.reload();
    }

  });
}

function withdrawn_rfq(rfq_id){
  $.ajax({

    url: 'market.php?function=UpdateStatus&type=rfq&Status=14&ModifiedBy='+<?php echo $userid;?>+'&id='+rfq_id,
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

function editFinalDate(){
  $('#editFinalDatebox').modal('show');
}
</script>
