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
      $username = $row["username"];
      $email =  $row["EmailAddress"];
      $company_name = $row["Name"];
      $company_id = $row["M_Company_Id"];
      $reg_no = $row["Reg_No"];
    }
  }
}

$list = "bidding";
if(isset($_GET["list"])){
  $list = $_GET["list"];
}


?>
<div class="row">
  <div class="col-sm-12">
    <h3>
      List RFQs
    </h3>
    <div id="notify" class="alert alert-success" style="display:none;">
      <a href="#" class="close" data-dismiss="alert">&times;</a>

      <div class="message"></div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-sm-12">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <?php
        if(($_SESSION['usertype'] == 'Buyer')){
          ?>
          <li <?php
          if($list == "draft"){
            echo 'class="active"';
          }
          ?>>
            <a href="#draftRFQ" data-toggle="tab">Draft RFQs</a></li>
          <?php
        }
        ?>
        <li <?php
        if($list == "bidding"){
          echo 'class="active"';
        }
        ?>><a href="#biddingRFQ" data-toggle="tab">RFQ in Progress</a></li>
        <li  <?php
        if($list == "closed"){
          echo 'class="active"';
        }
        ?>><a href="#closedRFQ" data-toggle="tab">Closed RFQs (No Award)</a></li>
        <li <?php
        if($list == "award"){
          echo 'class="active"';
        }
        ?>><a href="#awardRFQ" data-toggle="tab">Awarded RFQs</a></li>
        <?php
        if(($_SESSION['usertype'] == 'Buyer')){
          ?>
          <li <?php
          if($list == "withdrawn"){
            echo 'class="active"';
          }
          ?>><a href="#withdrawnRFQ" data-toggle="tab">Withdrawn RFQs</a></li>
          <?php
        }
        ?>
      </ul>

      <div class="tab-content">
        <?php
        if(($_SESSION['usertype'] == 'Buyer')){
          ?>
          <div class="<?php
          if($list == "draft"){
            echo 'active ';
          }
          ?>tab-pane" id="draftRFQ">
            <table id="draft_rfqs" class="table table-bordered table-striped smaller_font_table">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Company</th>
                  <th>Ref No.</th>
                  <th>Subject</th>
                  <th>Due Date</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php
                $query = "SELECT t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join t_requestforquotation q on t1.Id = q.Document_ID Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 9 and t1.M_User_Id = ". $userid . " order by t1.Id DESC";
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $row["CompanyName"];?></td>
                      <td><?php echo $row["DocumentNo"];?></td>
                      <td><?php echo $row["Title"];?></td>
                      <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                      <td><?php echo $row["Status"];?></td>
                      <td><?php
                      $out = '<a href="index.php?rdp=view_rfq&op=view&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> <a href="index.php?rdp=edit_rfq&op=edit&rfq_ref=' . $row["DocumentNo"] .
                      '" class="btn btn-primary btn-xs"><span class="icon-pencil"></span>Edit</a> <a class="btn btn-danger btn-xs delete-xc_type"><span class="icon-bin" onclick="withdrawn_rfq(' . $row['Id'] . ')">Withdrawn</span></a>';
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
          <?php
        }
        ?>
        <div class="<?php
        if($list == "bidding"){
          echo 'active ';
        }
        ?>tab-pane" id="biddingRFQ">
          <table id="bidding_rfqs" class="table table-bordered table-striped smaller_font_table">
            <thead>
              <tr>
                <th>No.</th>
                <th>Company</th>
                <th>Ref No.</th>
                <th>Subject</th>
                <th>Due Date</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
              if(($_SESSION['usertype'] == 'Buyer')){
                $query = "SELECT t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join t_requestforquotation q on t1.Id = q.Document_ID Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 10 and t1.M_User_Id = ". $userid . " order by t1.Id DESC";
              }elseif(($_SESSION['usertype'] == 'Supplier')){
                $query = "SELECT 
                t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status 
                FROM t_document t1 
                Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Inner Join t_requestforquotation q on t1.Id = q.Document_ID
                Where C_DocumentType = 6 and t1.C_RfqStatus = 10 and t3.M_Company_Id = ". $company_id  . " order by t1.Id DESC";
              }
              $results = $db->pdoQuery($query)->results();
              if (!empty($results)){
                $count = 0;
                foreach ($results as $row) {
                  $count = $count+1;
                  ?>
                  <tr>
                    <td><?php echo $count; ?></td>
                    <td><?php echo $row["CompanyName"];?></td>
                    <td><?php echo $row["DocumentNo"];?></td>
                    <td><?php echo $row["Title"];?></td>
                    <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                    <td><?php echo $row["Status"];?></td>
                    <td><?php
                    if(($_SESSION['usertype'] == 'Buyer')){
                      $out = '<a href="index.php?rdp=view_rfq&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
                    }elseif(($_SESSION['usertype'] == 'Supplier')){
                      $out = '<a href="index.php?rdp=view_rfq&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
                    }

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

        <div class="<?php
        if($list == "closed"){
          echo 'active ';
        }
        ?>tab-pane" id="closedRFQ">
          <table id="closed_rfqs" class="table table-bordered table-striped smaller_font_table">
            <thead>
              <tr>
                <th>No.</th>
                <th>Company</th>
                <th>Ref No.</th>
                <th>Subject</th>
                <th>Due Date</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
              $query = "Update t_document SET C_RfqStatus = 11 Where C_RfqStatus = 10  and  Id IN (SELECT Document_Id FROM t_requestforquotation Where FinalClosingDate < '" . date("Y-m-d") . "')";
              $db->pdoQuery($query);
              if(($_SESSION['usertype'] == 'Buyer')){
                $query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 11 and t1.M_User_Id = ". $userid . " order by t1.Id DESC";
              }elseif(($_SESSION['usertype'] == 'Supplier')){
                $query = "SELECT 
                t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status 
                FROM t_document t1 
                Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Inner Join t_requestforquotation q on t1.Id = q.Document_ID
                Where C_DocumentType = 6 and t1.C_RfqStatus = 11 and t3.M_Company_Id = ". $company_id  . " order by t1.Id DESC";
              }
              $results = $db->pdoQuery($query)->results();
              if (!empty($results)){
                $count = 0;
                foreach ($results as $row) {
                  $count = $count+1;
                  ?>
                  <tr>
                    <td><?php echo $count; ?></td>
                    <td><?php echo $row["CompanyName"];?></td>
                    <td><?php echo $row["DocumentNo"];?></td>
                    <td><?php echo $row["Title"];?></td>
                    <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                    <td><?php echo $row["Status"];?></td>
                    <td><?php
                    $out = '<a href="index.php?rdp=view_rfq&op=view&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a>';
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

        <div class="<?php
        if($list == "award"){
          echo 'active ';
        }
        ?>tab-pane" id="awardRFQ">
          <table id="awards_rfqs" class="table table-bordered table-striped smaller_font_table">
            <thead>
              <tr>
                <th>No.</th>
                <th>Company</th>
                <th>Ref No.</th>
                <th>Subject</th>
                <th>Due Date</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
              if(($_SESSION['usertype'] == 'Buyer')){
                $query = "SELECT t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join t_requestforquotation q on t1.Id = q.Document_ID Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (12,13) and t1.M_User_Id = ". $userid . " order by t1.Id DESC";
              }elseif(($_SESSION['usertype'] == 'Supplier')){
                $query = "SELECT 
                t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status 
                FROM t_document t1 
                Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Inner Join t_requestforquotation q on t1.Id = q.Document_ID
                Where C_DocumentType = 6 and t1.C_RfqStatus in (12,13) and t3.M_Company_Id = ". $company_id  . " order by t1.Id DESC";
              }
              $results = $db->pdoQuery($query)->results();
              if (!empty($results)){
                $count = 0;
                foreach ($results as $row) {
                  $count = $count+1;
                  ?>
                  <tr>
                    <td><?php echo $count; ?></td>
                    <td><?php echo $row["CompanyName"];?></td>
                    <td><?php echo $row["DocumentNo"];?></td>
                    <td><?php echo $row["Title"];?></td>
                    <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                    <td><?php echo $row["Status"];?></td>
                    <td><?php
                    $out = '<a href="index.php?rdp=view_rfq&op=view&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a>';
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

        <?php
        if(($_SESSION['usertype'] == 'Buyer')){
          ?>
          <div class="<?php
          if($list == "withdrawn"){
            echo 'active ';
          }
          ?>tab-pane" id="withdrawnRFQ">
            <table id="witdrawn_rfqs" class="table table-bordered table-striped smaller_font_table">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Company</th>
                  <th>Ref No.</th>
                  <th>Subject</th>
                  <th>Due Date</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php

                if(($_SESSION['usertype'] == 'Buyer')){
                  $query = "SELECT t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join t_requestforquotation q on t1.Id = q.Document_ID Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (14) and t1.M_User_Id = ". $userid . " order by t1.Id DESC";
                }elseif(($_SESSION['usertype'] == 'Supplier')){
                  $query = "SELECT 
                  t1.Id, t1.DocumentNo, t1.Title, q.FinalClosingDate as CreatedDate, t4.Name as CompanyName, t2.Name as Status 
                  FROM t_document t1 
                  Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Inner Join t_requestforquotation q on t1.Id = q.Document_ID
                  Where C_DocumentType = 6 and t1.C_RfqStatus in (14) and t3.M_Company_Id = ". $company_id  . " order by t1.Id DESC";
                }
                $results = $db->pdoQuery($query)->results();
                if (!empty($results)){
                  $count = 0;
                  foreach ($results as $row) {
                    $count = $count+1;
                    ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $row["CompanyName"];?></td>
                      <td><?php echo $row["DocumentNo"];?></td>
                      <td><?php echo $row["Title"];?></td>
                      <td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                      <td><?php echo $row["Status"];?></td>
                      <td><?php
                      $out = '<a href="index.php?rdp=view_rfq&op=view&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
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
          <?php
        }
        ?>
      </div>
      <!-- /.tab-content -->
    </div>
  </div>
</div>


<script>
$(function () {
  $('#draft_rfqs').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : true,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });
  $('#bidding_rfqs').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : true,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });
  $('#closed_rfqs').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : true,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });
  $('#awards_rfqs').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : true,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });

  $('#witdrawn_rfqs').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : true,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false
  });
})

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

</script>
