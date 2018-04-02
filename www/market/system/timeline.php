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

	$sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No,t1.M_Company_Id FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$username = $row["username"];
				$email =  $row["EmailAddress"];
				$company_name = $row["Name"];
				$reg_no = $row["Reg_No"];
				$M_Company_Id = $row["M_Company_Id"];
			}
		}
	}
	?>

 <!-- Main content -->
      <section class="content">

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
           Timeline
        </h1>

    </section>

    <!-- Main content -->
    <section class="content">

        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <!-- The time line -->
                <ul class="timeline">
				<?php
				$sql = "SELECT DISTINCT CAST(`Created_Date` AS DATE) as Created_Date FROM `company_notification` WHERE `Receiving_Company` =".$M_Company_Id ." Order by `Created_Date` Desc ";
				$result = $conn->query($sql);
					if (isset($result)){
						if ($result->num_rows > 0) {
						// output data of each row
						while($row = $result->fetch_assoc()) {
							?>
							 <li class="time-label">
							  <span class="bg-red">
								<?php
								echo date('d M.Y', strtotime($row["Created_Date"])) ;
								?>
							  </span>
							</li>
							<?php
							$sql1 = "SELECT * FROM `company_notification` WHERE `Receiving_Company` =".$M_Company_Id ." AND CAST(`Created_Date` AS DATE) = '". $row["Created_Date"] ."'  Order by `Created_Date` Desc ";
							$result1 = $conn->query($sql1);
							if (isset($result1)){
								if ($result1->num_rows > 0) {
								// output data of each row
									while($row1 = $result1->fetch_assoc()) {
										$doc_id = $row1["Document"];
										$query4 = "SELECT * FROM `t_document` WHERE `Id` = $doc_id";
										$typeid = "0";
										$rfq_ref = "";
										$result4 = $conn->query($query4);
										if (!empty($result4)){
											foreach ($result4 as $row4) {
												$typeid =  $row4["C_DocumentType"];
												$rfq_ref = $row4["DocumentNo"];
                        $quotationStatus =  $row4["C_QuotationStatus"];
											}
										}
										?>
										<li>
											<?php
												if($typeid == 6){
												echo '<i class="fa fa-envelope bg-blue"></i>';
											}elseif($typeid == 7){
												echo '<i class="fa fa-file bg-green"></i>';
											}

											?>

											<div class="timeline-item">
												<span class="time"><i class="fa fa-clock-o"></i> <?php echo date('h:i', strtotime($row1["Created_Date"])) ; ?></span>
												<?php
												$sql2 = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No,t1.M_Company_Id FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ". $row1["First_Opened_User"]." Limit 1";
												$result2 = $conn->query($sql2);
												if (isset($result2)){
													if ($result2->num_rows > 0) {
													// output data of each row
														while($row2 = $result2->fetch_assoc()) {
															$First_Opened_User = $row2["Name"];
														}
													}
												}
												?>
												<h3 class="timeline-header"><a href="#"><?php echo $First_Opened_User;?></a>
												<?php
												//if($row1["Type"] == "Invited"){
												//	echo "has invited for their RFQ";
											//	}else{

											//	}

												?>

											</h3>

												<div class="timeline-body">
													<?php echo $row1["Message"];?>
												</div>
												<div class="timeline-footer">
													<?php
													if($typeid == 6){
														echo '<a href="index.php?rdp=view_rfq&rfq_ref='.$rfq_ref.'" class="btn btn-primary btn-xs">View Document</a>';
													}elseif($typeid == 7){
                            if($quotationStatus != 15){
                              echo '<a href="index.php?rdp=view_quotation&id='.$doc_id.'" class="btn btn-primary btn-xs">View Document</a>';
                            }
													}

													?>


													<!--<a class="btn btn-danger btn-xs">Delete</a>-->
												</div>
											</div>
										</li>
										<?php
									}
								}
							}
						}
					}
				}
				?>

                    <li>
                        <i class="fa fa-clock-o bg-gray"></i>
                    </li>
                </ul>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->



    </section>


      </section>
      <!-- /.content -->
