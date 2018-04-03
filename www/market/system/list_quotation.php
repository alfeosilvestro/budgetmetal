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

?>
 <div class="row">
        <div class="col-sm-12">
            <h3>
                List Quotations
            </h3>
			<div id="notify" class="alert alert-success" style="display:none;">
				<a href="#" class="close" data-dismiss="alert">&times;</a>

				<div class="message"></div>
			</div>
        </div>
    </div>


	<div class="box box-warning">
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
                            <th>Company</th>
                            <th>RFQ Ref No.</th>
                            <th>Bid Price</th>
                            <th>Created Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
						</thead>
						<tbody>
						<?php
						if(($_SESSION['usertype'] == 'Supplier')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t2.Name as Status, t4.Name as CompanyName, t5.QuotedFigure FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_QuotationStatus Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Inner Join t_supplierquotation t5 on t5.Document_Id = t1.Id  Where t1.Status = 1 and C_DocumentType = 7 and t1.C_QuotationStatus in (15,16,17,18,19,20) and t1.M_User_Id = ". $userid;
						}elseif(($_SESSION['usertype'] == 'Buyer')){
							$query = "SELECT t1.Id, t1.DocumentNo, t1.Title, t1.CreatedDate, t2.Name as Status, t4.Name as CompanyName, t5.QuotedFigure FROM t_document t1 Inner Join c_codetable t2 on t2.Id = t1.C_QuotationStatus Inner Join m_user t3 on t3.Id = t1.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Inner Join t_supplierquotation t5 on t5.Document_Id = t1.Id Where t1.Status = 1 and C_DocumentType = 7 and t1.C_QuotationStatus in (16,17,18,19,20) and t1.DocumentNo in (SELECT DocumentNo From t_document Where Status = 1 and C_DocumentType = 6 and M_User_Id = ". $userid.")";

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
                                    <td>$<?php echo number_format($row["QuotedFigure"], 2); ?></td>
									<td><?php echo date('d-m-Y', strtotime($row["CreatedDate"]));?></td>
									<td><?php echo $row["Status"];?></td>
									<td><?php
        					$out = '<a href="index.php?rdp=view_quotation&id=' . $row["Id"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
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


	<script>
  $(function () {
    $('#quotations').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    });

	})
</script>
