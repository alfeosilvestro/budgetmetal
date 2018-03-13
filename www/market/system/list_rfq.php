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
	<?php
		if(($_SESSION['usertype'] == 'Buyer')){
					?>
		<div class="box box-danger">
        <div class="box-header with-border">
            <h3 class="box-title">Draft RFQs</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="box-body">
              <table id="draft_rfqs" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th>No.</th>
                            <th>Company</th>
                            <th>Ref No.</th>
							<th>Subject</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php
						$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 9 and t1.M_User_Id = ". $userid;
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

            </div>
        </div>
    </div>

					<?php
					}
					?>

	<div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">Bidding RFQs</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="box-body">
              <table id="bidding_rfqs" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th>No.</th>
                            <th>Company</th>
                            <th>Ref No.</th>
							<th>Subject</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php
						if(($_SESSION['usertype'] == 'Buyer')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 10 and t1.M_User_Id = ". $userid;
						}elseif(($_SESSION['usertype'] == 'Supplier')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 10 and t3.M_Company_Id = ". $company_id;
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

            </div>
        </div>
    </div>
    <div class="box box-success">
        <div class="box-header with-border">
            <h3 class="box-title">Closed RFQs</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="box-body">
              <table id="closed_rfqs" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th>No.</th>
                            <th>Company</th>
                            <th>Ref No.</th>
							<th>Subject</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php
            $query = "Update t_document SET C_RfqStatus = 11 Where C_RfqStatus = 10  and  Id IN (SELECT Document_Id FROM t_requestforquotation Where FinalClosingDate < '" . date("Y-m-d") . "')";
            $db->pdoQuery($query);
						if(($_SESSION['usertype'] == 'Buyer')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 11 and t1.M_User_Id = ". $userid;
						}elseif(($_SESSION['usertype'] == 'Supplier')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus = 11 and t3.M_Company_Id = ". $company_id;
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

            </div>
        </div>
    </div>

	<div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">Awards or No Awards RFQs</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="box-body">
              <table id="awards_rfqs" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th>No.</th>
                            <th>Company</th>
                            <th>Ref No.</th>
							<th>Subject</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php
						if(($_SESSION['usertype'] == 'Buyer')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (12,13) and t1.M_User_Id = ". $userid;
						}elseif(($_SESSION['usertype'] == 'Supplier')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (12,13) and t3.M_Company_Id = ". $company_id;
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

            </div>
        </div>
    </div>


	<?php
					if(($_SESSION['usertype'] == 'Buyer')){
					?>
					<div class="box box-danger">
        <div class="box-header with-border">
            <h3 class="box-title">Withdrawn RFQs</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="box-body">
              <table id="witdrawn_rfqs" class="table table-bordered table-striped">
					<thead>
                        <tr>
                            <th>No.</th>
                            <th>Company</th>
                            <th>Ref No.</th>
							<th>Subject</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php

						if(($_SESSION['usertype'] == 'Buyer')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus  Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (14) and t1.M_User_Id = ". $userid;
						}elseif(($_SESSION['usertype'] == 'Supplier')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t4.Name as CompanyName, t2.Name as Status FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_RfqStatus Inner Join t_targetedsuppliers t3 on t3.T_Document_Id = t1.Id  Inner Join m_user t5 on t5.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t5.M_Company_Id Where C_DocumentType = 6 and t1.C_RfqStatus in (14) and t3.M_Company_Id = ". $company_id;
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

            </div>
        </div>
    </div>

					<?php
					}
					?>

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
