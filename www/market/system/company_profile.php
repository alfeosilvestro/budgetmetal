
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
			}
		}
	}
?>
 <!-- Main content -->
      <section class="content">
    <h1>
        Company Profile
    </h1>

    <section class="content">

        <div class="row">
            <div class="col-md-3">
                <!-- About Me Box -->
                <div class="box box-primary">

                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i> Name</strong>

                        <p class="text-muted">
                            <?php echo $company_name;?>
                        </p>

                        <hr>

                        <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                        <p class="text-muted"><?php echo $Address;?></p>
<hr>

                        <strong><i class="glyphicon glyphicon-registration-mark"></i> Reg No.</strong>

                        <p class="text-muted"><?php echo $reg_no;?></p>
                        <hr>
                          <strong><i class="glyphicon glyphicon-star"></i> Rating</strong>
                          <?php
                          $sql = "SELECT AVG(`SpeedOfQuotation`) as SOQ, AVG(`SpeedofDelivery`) as SOD, AVG( `ServiceQuality`) as SQ, AVG(`Price`) as Price, AVG(`Payment`) as Payment FROM `md_companyrating` WHERE `Company_Id` = ".$companyid. " GROUP BY Company_Id";
                          $result = $conn->query($sql);
                          if (isset($result)){
                            if ($result->num_rows > 0) {
                                while($row = $result->fetch_assoc()) {
                                  echo "<br><b>Speed of Quotation :</b> ". number_format($row["SOQ"],2);
                                  echo "<br><b>Speed of Delivery :</b> ". number_format($row["SOD"],2);
                                  echo "<br><b>Service Quality :</b> ". number_format($row["SQ"],2) ;
                                  echo "<br><b>Price :</b> ". number_format($row["Price"],2);
                          			}
                            }else{

                            }
                          }

                          ?>
                          <p class="text-muted"></p>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <?php
              $rfq_count = 0;
              $sql = "SELECT * FROM `t_document` WHERE `Status` = 1 AND `C_DocumentType` = 6 AND `M_User_Id` IN (SELECT Id FROM m_user WHERE M_Company_Id = $companyid)";
              $result = $conn->query($sql);
              if (isset($result)){
                if ($result->num_rows > 0) {
                  while($row = $result->fetch_assoc()) {
                    $rfq_count = $rfq_count +1;
                  }
                }
              }

              $supplier_services = 0;
              $sql = "SELECT * FROM `md_supplierservices` WHERE M_Company_Id = $companyid";
              $result = $conn->query($sql);
              if (isset($result)){
                if ($result->num_rows > 0) {
                  while($row = $result->fetch_assoc()) {
                    $supplier_services = $supplier_services +1;
                  }
                }
              }
            ?>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">


                          <li class="active"><a href="#activity" data-toggle="tab">About</a></li>

<?php
                        if($rfq_count != 0){
                            ?>
                          <li><a href="#rfqList" data-toggle="tab">RFQ List</a></li>

                          <?php
                        }

                        if($company_admin == 1){
                            ?>
                          <li><a href="#userList" data-toggle="tab">User List</a></li>
                          <?php
                        }

                        ?>
                          <li><a href="#feedbacklist" data-toggle="tab">Feedback</a></li>
                    </ul>

                    <div class="tab-content">

                        <div class="active tab-pane" id="activity">
                          <div>
                            <h4>
                              About Company
                            </h4>
                            <p><?php echo $About;?></p>
                            <?php

                          if($company_admin == 1){
                              ?>
                              <a href="#" id="btnEditAbout" class="btn btn-info"  onclick="EditAbout()">
                                  <i class="fa fa-pencil-square-o"></i>
                                Edit About
                              </a>
                            <?php
                          }

                          ?>
                          </div>
                          <hr>
                          <h4>
                            Services
                          </h4>
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
              																echo "<ul>";
              																$sql3 = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t2.M_Parent_Services_Id = ".$service_id2." and t1.`M_Company_Id` = ".$companyid;
              																$result3 = $conn->query($sql3);
              																if (isset($result3)){
              																	if ($result3->num_rows > 0) {
              																		// output data of each row
              																		while($row3 = $result3->fetch_assoc()) {
              																			$service_id3 = $row3["M_Services_Id"];
              																			$service_name3 = $row3["ServiceName"];
              																			echo "<li type='square'>".$service_name3;
              																			echo "<ul>";
              																			$sql4 = "SELECT t1.`M_Services_Id`, t2.ServiceName FROM `md_supplierservices` t1 INNER JOIN m_services t2 ON t1.`M_Services_Id` = t2.Id Where t2.Status = 1 and t2.M_Parent_Services_Id = ".$service_id3." and t1.`M_Company_Id` = ".$companyid;
              																			$result4 = $conn->query($sql4);
              																			if (isset($result4)){
              																				if ($result4->num_rows > 0) {
              																					// output data of each row
              																					while($row4 = $result4->fetch_assoc()) {
              																						$service_id4 = $row4["M_Services_Id"];
              																						$service_name4 = $row4["ServiceName"];
              																						echo "<li type='square'>".$service_name4;

              																						echo"</li>";
              																					}
              																				}
              																			}
              																			echo "</ul>";
              																			echo"</li>";
              																		}
              																	}
              																}
              																echo "</ul>";
              																echo"</li>";
              															}
              														}
              													}
              													echo "</ul>";
              													echo"</li>";
              												}
              											}
              										}
              										echo "</ul>";
              										echo"</li>";
              									}
              								}
              							}

              							?>
              							</ul>
                        </div>

                        <!-- /.tab-pane -->
                          <?php
                          if($rfq_count != 0){
                              ?>
                              <div class="tab-pane" id="rfqList">
                                <table id="rfq" class="table table-bordered table-striped">
                  					           <thead>
                                          <tr>
                                              <th>No.</th>
                                              <th>Ref No.</th>
      						                             <th>Subject</th>
                                              <th>Created Date</th>
                                              <th>Status</th>
                                              <th></th>
                                          </tr>
                            						</thead>
                            						<tbody>
                            						<?php

                            							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Where t1.Status = 1 and C_DocumentType = 6 and t1.C_RfqStatus in (10,11,12,13,14) and t1.M_User_Id In (SELECT Id FROM m_user WHERE M_Company_Id = $companyid)";

                            						$results = $db->pdoQuery($query)->results();
                            						if (!empty($results)){
                            							$count = 0;
                            							foreach ($results as $row) {
                            								$count = $count+1;
                            								?>
                            								<tr>
                            									<td><?php echo $count; ?></td>
                            									<td><?php echo $row["DocumentNo"];?></td>
                            									<td><?php echo $row["Title"];?></td>
                            									<td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
                            									<td><?php echo $row["Status"];?></td>
                            									<td><?php
                            						            $out = '<a href="index.php?rdp=view_rfq&rfq_ref=' . $row["DocumentNo"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
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
                              <!-- /.tab-pane -->
                            <?php
                          }
                          ?>
                          <!-- /.tab-pane -->
                            <?php
                            if($company_admin ==1){
                                ?>
                                <div class="tab-pane" id="userList">
                                  <table id="rfq" class="table table-bordered table-striped">
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
                                                      $btnAdminText = "Remove from Admin";
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
                                                if($userid != $u_id){
                                                  if($btnAdminFun != ""){
                                                    $out = '<button class="btn btn-success btn-sm" onclick="'.$btnAdminFun.'('.$u_id.');">'.$btnAdminText.'</button>';
                                                    echo $out;
                                                  }
                                                    $out = '<button class="btn btn-danger btn-sm" onclick="'.$btnDisableFun.'('.$u_id.');">'.$btnDisableText.'</button>';
                                                  echo $out;
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
                                <!-- /.tab-pane -->
                              <?php
                            }
                            ?>
                            <div class="tab-pane" id="feedbacklist">
                            <h3>Feedback List</h3>
                            <?php
                            $query = "SELECT * FROM md_companyrating Where Company_Id = $companyid";

                          $results = $db->pdoQuery($query)->results();
                          if (!empty($results)){
                            $count = 0;
                            foreach ($results as $row) {
                              echo $row["Description"];
                              echo "<hr>";
                            }
                          }
                            ?>
                            </div>
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
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
              <div class="form-group col-md-9">
                <textarea name="txt_about" id="txt_about"  class="form-control" rows="5" cols="50"><?php echo $About;?></textarea>
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
               type: "GET",
               url: "market.php?function=EditAbout&companyid=<?php echo $companyid;?>&about=" + about,
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


 </script>
