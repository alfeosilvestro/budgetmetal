<?php
include("dbcon.php");
include_once('lib/pdowrapper/class.pdowrapper.php');
$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
date_default_timezone_set("Asia/Singapore");
// get instance of PDO Wrapper object
$db = new PdoWrapper($dbConfig);
$function = $_GET["function"];

if ($function == "UpdatePassword"){
	$newpass = $_GET["newpass"];
	$user_id = $_GET["user_id"];
	$where = array('Id' => $user_id);
	$dataArray = array( 'Password' => $newpass);
	$db->update('m_user', $dataArray,$where);

	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "UpdateUserProfile"){
	$name = $_GET["name"];
	$jobtitle = $_GET["jobtitle"];
	$contactno = $_GET["contactno"];

	$user_id = $_GET["user_id"];
	$where = array('Id' => $user_id);
	$dataArray = array( 'UserName' => $name);
	$db->update('m_user', $dataArray,$where);

	$dataArray = array( 'Title' => $jobtitle);
	$db->update('m_user', $dataArray,$where);

	$dataArray = array( 'ContactNumbers' => $contactno);
	$db->update('m_user', $dataArray,$where);

	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "changeaccounttype"){
	$type_id = $_GET["type_id"];
	$user_id = $_GET["user_id"];
	$where = array('Id' => $user_id);
	$dataArray = array( 'C_UserType' => $type_id);
	$db->update('m_user', $dataArray,$where);
}elseif ($function == "checksupplierservice"){
	$company_uen = $_GET["company_uen"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT * FROM `md_supplierservices` WHERE `M_Company_Id` in (SELECT Id FROM `m_company` WHERE `Reg_No` = '$company_uen' )";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			$company_name = "";
			$sql1 = "SELECT Name FROM `m_company` WHERE `Reg_No` = '$company_uen'";
			$result1 = $conn->query($sql1);
			if (isset($result1)){
				if ($result1->num_rows > 0) {
					while($row1 = $result1->fetch_assoc()) {
						$company_name = $row1["Name"];
					}
				}
			}
			$returntext = $company_name. " profile is already in our system. The company services profile can be change only by user with administrative rights. Please contact your company administrator for more details. If you are not able to identify the administrator, please contact our support team at '+65 87456321' or 'info@budgetmetal.com'.";
		}
	}
	echo $returntext;
}elseif ($function == "getcompanyname"){
	$company_uen = $_GET["company_uen"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT Name FROM `m_company` WHERE `Reg_No` = '$company_uen'";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$returntext = $row["Name"];
			}
		}
	}
	echo $returntext;
}elseif ($function == "getcompanyaddress"){
	$company_uen = $_GET["company_uen"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT Address FROM `m_company` WHERE `Reg_No` = '$company_uen'";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$returntext = $row["Address"];
			}
		}
	}
	echo $returntext;
}elseif ($function == "checkEmail"){
	$email = $_GET["email"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT domain FROM `public_email`";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				if(strpos($email, $row["domain"])>0){
					$returntext = $row["domain"];
				}
			}
		}
	}
	echo $returntext;
}elseif ($function == "servicecategory1"){
	$c = 0;
	$returntext = "";
	$sql = "SELECT * FROM `m_services` where Status = 1 and M_Parent_Services_Id is null  ";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$returntext= $returntext . "<option value='". $row["Id"] ."'>" . $row["ServiceName"] . "</option>" ;
			}
		}
	}
	echo $returntext;
}elseif ($function == "servicecategory2"){
	$servicecategory1id = $_GET["servicecategory1id"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT * FROM `m_services` where Status = 1 and M_Parent_Services_Id = ".$servicecategory1id ;
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$returntext= $returntext . "<option value='". $row["Id"] ."' style='white-space:pre-line;'>" . $row["ServiceName"] . "</option>" ;
			}
		}
	}
	echo $returntext;
}elseif ($function == "services"){
	$servicecategory1id = $_GET["servicecategory1id"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT t0.ParameterName, t0.ParameterDefaultValues, t0.Uom, t2.Name FROM `md_serviceparameter` t0 INNER JOIN `m_services` t1 on t0.`M_Services_Id`= t1.`Id` INNER JOIN `c_codetable` t2 on t1.`C_Metal_Type`= t2.`Id` where  t0.M_Services_Id = ".$servicecategory1id ;
	$result = $conn->query($sql);
	$thickness = "0, ";
	$length = "0, ";
	$width = "0, ";
	$metal_type = "";
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				if($row["ParameterName"] == "Thickness"){
					$thickness=  $row["ParameterDefaultValues"] ."," . $row["Uom"];
				}elseif($row["ParameterName"] == "Width"){
					$length=  $row["ParameterDefaultValues"] ."," . $row["Uom"];
				}elseif($row["ParameterName"] == "Length"){
					$width=  $row["ParameterDefaultValues"] ."," . $row["Uom"];
				}
				$metal_type = $row["Name"];
			}
		}
	}
	$returntext=  $thickness."," . $length."," . $width."," . $metal_type;
	echo $returntext;
}elseif ($function == "searchsupplierwithservicesid"){
	$servicesid = $_GET["servicesid"];
	$selectedsuppliersid = $_GET["selected_suppliers_id"];
	$c = 0;
	$returntext = "";
	$sql = "SELECT * FROM `m_company`  WHERE `Id` IN (SELECT `M_Company_Id` FROM `md_supplierservices` WHERE `M_Services_Id` in (".$servicesid .")) AND `Id` Not IN (".$selectedsuppliersid.") Order by SupplierAvgRating Desc";
	$result = $conn->query($sql);

	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
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

				echo "<tr id='trsupplier_".$row["Id"]."'>
				<td>".$row["Name"]."(Registration No. ".$row["Reg_No"].")<input type='hidden' value='0' name='selected_supplier_id[]'> <input type='hidden' value='".$row["Id"]."' name='search_supplier_id[]'></td>
				<td>".$row["Address"]."</td>
				<td>".$tags."</td>
				<td><span class='label label-success'>Verified</span></td>
				<td>
				<button type='button' value='".$row["Id"]."' class='btn btn-sm btn-info' Onclick='ViewProfile(this);'>              View Profile       </button>

				<button type='button' value='trsupplier_".$row["Id"]."' class='btn btn-sm btn-info' Onclick='AddtoRequestList(this);'>                Add to Selected Supplier List       </button>
				</td>
				</tr>";
			}
		}
	}
}
elseif ($function == "saverfq"){

	$act = $_GET['act'];
	$currentYear = date("Y");
	$current_UserId = $_GET['user_id'];

	$sql = "SELECT * FROM `document_number` t1 where t1.Name='RFQ' and t1.Prefix = '$current_UserId' and t1.Suffix = '$currentYear' ORDER BY Running_Number DESC Limit 1";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$number = sprintf('%05d', $row["Running_Number"] + 1);
				$twoYearFormat = date("y");
				$rfq_ref = "RFQ-" . $current_UserId . "-" . $twoYearFormat . $number;
				//$rfq_ref = "RFQ_Draft_".($row["Running_Number"]+1);
				$doc_id = $row["Id"] + 1;
				$running_number = $row["Running_Number"] + 1;
			}
		}else{
			$twoYearFormat = date("y");
			$rfq_ref = "RFQ-" . $current_UserId . "-" . $twoYearFormat . "00001";
			$doc_id = 1;
			$running_number = 1;
		}
	}

	$dataArray = array('Name' => "RFQ", 'Prefix' => "$current_UserId", 'Suffix' => "$currentYear",'Format' => " $rfq_ref ", 'Running_Number' => $running_number);

	$dt = $db->insert('document_number', $dataArray);



	$doc_id = 0;
	$row = $db->select('t_document', null, null, 'ORDER BY Id DESC')->results();
	if ($row) {
		$doc_id = $row["Id"]+1;
	}else{
		$doc_id = 1;
	}
	$Id = $doc_id;
	$title = $_GET['subject'];
	$C_DocumentType = "6";
	$ShortDescription = "";
	$LongDescription ="";
	$C_QuotationStatus = "8";
	if($act == 'draft'){
		$C_RfqStatus = "9";
	} else{
		$C_RfqStatus = "10";
	}
	//$CreatedDate = date('Y-m-d H:i:s');
	$RFQDate = date('Y-m-d', strtotime( $_GET['rfq_date']));
	$CreatedDate = date("Y-m-d H:i:s");
	$CreatedBy = $_GET['user_id'];
	$Status = "1";
	$M_User_Id = $_GET['user_id'];
	$DocumentNo = $rfq_ref;
	$company_name = $_GET['company_name'];
	$ContactPersonFName = $_GET['first_name'];
	$ContactPersonLName = $_GET['last_name'];
	if(isset($_GET['chk_material'])){
		$Supplier_Provide_Material = 1;
	}else{
		$Supplier_Provide_Material = 0;
	}
	if(isset($_GET['chk_material'])){
		$Supplier_Provide_Transport = 1;
	}else{
		$Supplier_Provide_Transport = 0;
	}

	$dataArray = array('Id' => $Id, 'Title' => $title, 'C_DocumentType' => $C_DocumentType, 'ShortDescription' => $ShortDescription, 'LongDescription' => $LongDescription, 'C_QuotationStatus' => $C_QuotationStatus, 'C_RfqStatus' => $C_RfqStatus, 'CreatedDate' => $RFQDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'M_User_Id' => $M_User_Id, 'DocumentNo' => $DocumentNo,'ContactPersonFName' => $ContactPersonFName,'ContactPersonLName' => $ContactPersonLName);

	$db->insert('t_document', $dataArray);

	$FinalClosingDate = date('Y-m-d', strtotime( $_GET['due_date']));
	$Remark = $_GET['remark'];
	//t_requestforquotation

	if($_GET['due_date'] == ""){
		$dataArray = array('Document_Id' => $Id, 'Title' => $title, 'Supplier_Provide_Material' => $Supplier_Provide_Material, 'Supplier_Provide_Transport' => $Supplier_Provide_Transport, 'Remark' => $Remark);
	}else{
		$dataArray = array('Document_Id' => $Id, 'Title' => $title, 'FinalClosingDate' => $FinalClosingDate, 'FirstClosingDate' => $FinalClosingDate, 'Supplier_Provide_Material' => $Supplier_Provide_Material, 'Supplier_Provide_Transport' => $Supplier_Provide_Transport, 'Remark' => $Remark);
	}
	$db->insert('t_requestforquotation', $dataArray);


	//file upload
	if(isset($_GET['attachment'] )){
		$count=0;

		foreach ($_GET['attachment'] as $filename)
		{
			$file_id = 0;
			$row = $db->select('t_fileattachments', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$file_id = $row["Id"]+1;
			}else{
				$file_id = 1;
			}
			$tmpfilename=$_GET['attachment'][$count];
			$tmpfilesubject = $_GET['attachment_message'][$count];
			$tmpfilemessage = $_GET['attachment_message'][$count];
			$dataArray = array('Id' => $file_id, 'T_Document_Id' => $Id, 'FileName' => $tmpfilename, 'Subject' => $tmpfilesubject, 'Message' => $tmpfilemessage, 'FileBinary' => "", 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status);
			$db->insert('t_fileattachments', $dataArray);

			$count=$count + 1;

		}

	}


	//service
	if(isset($_GET['serviceid'])){
		foreach ($_GET['serviceid'] as $index => $serviceid) {

			$requireService_id = 0;
			$row = $db->select('td_requiredservices', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$requireService_id = $row["Id"]+1;
			}else{
				$requireService_id = 1;
			}
			$service_name = $_GET['service'][$index];

			$dataArray = array('Id' => $requireService_id, 'M_ServiceName' => $service_name, 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'T_RFQ_Id' => $Id, 'M_Service_Id' => $serviceid);

			$db->insert('td_requiredservices', $dataArray);

		}
	}
	//selected supplier
	if(isset($_GET['selected_supplier_id'])){
		foreach ($_GET['selected_supplier_id'] as $index => $selected_supplier_id) {
			if( $selected_supplier_id != 0){
				$targetsupplier_id = 0;
				$row = $db->select('t_targetedsuppliers', null, null, 'ORDER BY Id DESC')->results();
				if ($row) {
					$targetsupplier_id = $row["Id"]+1;
				}else{
					$targetsupplier_id = 1;
				}

				$dataArray = array('Id' => $targetsupplier_id, 'T_Document_Id' => $Id, 'M_Company_Id' => $selected_supplier_id);

				$db->insert('t_targetedsuppliers', $dataArray);

				if($act != 'draft'){
					$Message = "$company_name has invited you to participate in RFQ, $rfq_ref";
					$dataArray = array('Document' => $doc_id, 'First_Opened_User' => $M_User_Id, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $CreatedBy,'Status' => "1", 'Type' => 'Invited');
					$dt = $db->insert('company_notification', $dataArray);

					$email = "";
					$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $selected_supplier_id;
					$result = $conn->query($sql);
					if (isset($result)){
						if ($result->num_rows > 0) {
							// output data of each row
							while($row = $result->fetch_assoc()) {
								$email = $email .  $row["EmailAddress"].";";
							}
							sendEmailforNotification($email,$Message, $Message,"RFQ",$rfq_ref);
						}
					}

				}
			}
		}
	}

	header('Content-Type: application/json');
	echo json_encode(array('status' => 'Success', 'message' =>"$DocumentNo has been successfully created."));
}elseif ($function == "editrfq"){
	$act = $_GET['act'];
	$rfq_id = $_GET['rfq_id'];
	$rfq_ref = $_GET['rfq_ref'];
	//if($act == 'draft'){

		/* $sql = "SELECT * FROM `document_number` t1 where t1.Prefix = 'Draft' ORDER BY Running_Number DESC Limit 1";
		$result = $conn->query($sql);
		if (isset($result)){
		if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
		$rfq_ref = "RFQ_Draft_".($row["Running_Number"]+1);
		$doc_id = $row["Id"]+1;
		$running_number = $row["Running_Number"]+1;
	}
}else{
$rfq_ref = "RFQ_Draft_1";
$doc_id = 1;
$running_number = 1;
}
}

$dataArray = array( 'Name' => "RFQ", 'Prefix' => 'Draft', 'Suffix' => 'RFQ','Format' => 'RFQ', 'Running_Number' => $running_number);

$dt = $db->insert('document_number', $dataArray); */
// } else{
// 	$sql = "SELECT * FROM `document_number` t1 where t1.Prefix = 'Submitted' ORDER BY Running_Number DESC Limit 1";
// 	$result = $conn->query($sql);
// 	if (isset($result)){
// 		if ($result->num_rows > 0) {
// 			// output data of each row
// 			while($row = $result->fetch_assoc()) {
// 				$rfq_ref = "RFQ_Submitted_".($row["Running_Number"]+1);
// 				$doc_id = $row["Id"]+1;
// 				$running_number = $row["Running_Number"]+1;
// 			}
// 		}else{
// 			$rfq_ref = "RFQ_Submitted_1";
// 			$doc_id = 1;
// 			$running_number = 1;
// 		}
// 	}
// 	$dataArray = array('Name' => "RFQ", 'Prefix' => 'Submitted', 'Suffix' => 'RFQ','Format' => 'RFQ', 'Running_Number' => $running_number);
// 	$dt = $db->insert('document_number', $dataArray);
// }

$Id = $rfq_id;
$title = $_GET['subject'];
$C_DocumentType = "6";
$ShortDescription = "";
$LongDescription ="";
$C_QuotationStatus = "8";
if($act == 'draft'){
	$C_RfqStatus = "9";
} else{
	$C_RfqStatus = "10";
}
$CreatedDate = date('Y-m-d H:i:s');
$CreatedBy = $_GET['user_id'];
$Status = "1";
$M_User_Id = $_GET['user_id'];
$DocumentNo = $rfq_ref;
$ContactPersonFName = $_GET['first_name'];
$ContactPersonLName = $_GET['last_name'];
$company_name = $_GET['company_name'];
if(isset($_GET['chk_material'])){
	$Supplier_Provide_Material = 1;
}else{
	$Supplier_Provide_Material = 0;
}
if(isset($_GET['chk_material'])){
	$Supplier_Provide_Transport = 1;
}else{
	$Supplier_Provide_Transport = 0;
}

$where = array('Id' => $Id);
$dataArray = array('Title' => $title, 'C_DocumentType' => $C_DocumentType, 'ShortDescription' => $ShortDescription, 'LongDescription' => $LongDescription, 'C_QuotationStatus' => $C_QuotationStatus, 'C_RfqStatus' => $C_RfqStatus, 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'M_User_Id' => $M_User_Id, 'DocumentNo' => $DocumentNo,'ContactPersonFName' => $ContactPersonFName,'ContactPersonLName' => $ContactPersonLName);
$db->update('t_document', $dataArray,$where);
//$db->insert('t_document', $dataArray);

$FinalClosingDate = date('Y-m-d', strtotime( $_GET['due_date']));
$FirstClosingDate =  date('Y-m-d', strtotime(  $_GET['due_date']));
$Remark = $_GET['remark'];
//t_requestforquotation

if($_GET['due_date'] == ""){
	$dataArray = array('Title' => $title, 'Supplier_Provide_Material' => $Supplier_Provide_Material, 'Supplier_Provide_Transport' => $Supplier_Provide_Transport, 'Remark' => $Remark);
}else{
	$dataArray = array('Title' => $title, 'FinalClosingDate' => $FinalClosingDate, 'FirstClosingDate' => $FirstClosingDate, 'Supplier_Provide_Material' => $Supplier_Provide_Material, 'Supplier_Provide_Transport' => $Supplier_Provide_Transport, 'Remark' => $Remark);
}
$where = array('Document_Id' => $Id);
$db->update('t_requestforquotation', $dataArray,$where);
//$db->insert('t_requestforquotation', $dataArray);


//file upload
if(isset($_GET['attachment'] )){
	$count=0;
	$where = array('T_Document_Id' => $Id);
	$dataArray = array( 'Status' => '0');
	$db->update('t_fileattachments', $dataArray,$where);
	foreach ($_GET['attachment'] as $filename)
	{
		$file_id = 0;
		$row = $db->select('t_fileattachments', null, null, 'ORDER BY Id DESC')->results();
		if ($row) {
			$file_id = $row["Id"]+1;
		}else{
			$file_id = 1;
		}
		$tmpfilename=$_GET['attachment'][$count];
		$tmpfilesubject = $_GET['attachment_message'][$count];
		$tmpfilemessage = $_GET['attachment_message'][$count];
		$dataArray = array('Id' => $file_id, 'T_Document_Id' => $Id, 'FileName' => $tmpfilename, 'Subject' => $tmpfilesubject, 'Message' => $tmpfilemessage, 'FileBinary' => "", 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status);
		$db->insert('t_fileattachments', $dataArray);

		$count=$count + 1;

	}

}


//service
if(isset($_GET['serviceid'])){
	$where = array('T_RFQ_Id' => $Id);
	$dataArray = array( 'Status' => '0');
	$db->update('td_requiredservices', $dataArray,$where);

	foreach ($_GET['serviceid'] as $index => $serviceid) {

		$requireService_id = 0;
		$row = $db->select('td_requiredservices', null, null, 'ORDER BY Id DESC')->results();
		if ($row) {
			$requireService_id = $row["Id"]+1;
		}else{
			$requireService_id = 1;
		}
		$service_name = $_GET['service'][$index];

		$dataArray = array('Id' => $requireService_id, 'M_ServiceName' => $service_name, 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'T_RFQ_Id' => $Id, 'M_Service_Id' => $serviceid);

		$db->insert('td_requiredservices', $dataArray);
	}
}
//selected supplier
if(isset($_GET['selected_supplier_id'])){
	$db->query("Delete From t_targetedsuppliers Where T_Document_Id = ".$Id);
	foreach ($_GET['selected_supplier_id'] as $index => $selected_supplier_id) {
		if( $selected_supplier_id != 0){
			$targetsupplier_id = 0;
			$row = $db->select('t_targetedsuppliers', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$targetsupplier_id = $row["Id"]+1;
			}else{
				$targetsupplier_id = 1;
			}

			$dataArray = array('Id' => $targetsupplier_id, 'T_Document_Id' => $Id, 'M_Company_Id' => $selected_supplier_id);

			$db->insert('t_targetedsuppliers', $dataArray);

			if($act != 'draft'){
				$Message = "$company_name has invited you to participate in RFQ, $rfq_ref";
				$dataArray = array('Document' => $doc_id, 'First_Opened_User' => $M_User_Id, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $CreatedBy,'Status' => "1", 'Type' => 'Invited');
				$dt = $db->insert('company_notification', $dataArray);

				$email = "";
				$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $selected_supplier_id;
				$result = $conn->query($sql);
				if (isset($result)){
					if ($result->num_rows > 0) {
						// output data of each row
						while($row = $result->fetch_assoc()) {
							$email = $email .  $row["EmailAddress"].";";
						}
						sendEmailforNotification($email,$Message, $Message);
					}
				}
			}
		}
	}
}
header('Content-Type: application/json');
echo json_encode(array('status' => 'Success', 'message' =>"$DocumentNo has been successfully created."));
}elseif ($function == "savequotation"){

	$act = $_GET['act'];

	if($act == 'draft'){
		$C_QuotationStatus = "15";
	}else{
		$C_QuotationStatus = "16";
	}
	$q_id =$_GET['q_id'];
	$Id = $q_id;
	$ModifiedDate = date('Y-m-d H:i:s');
	$ModifiedBy = $_GET['user_id'];
	$CreatedDate = date('Y-m-d H:i:s');
	$CreatedBy = $_GET['user_id'];
	$rfq_ref = $_GET['rfq_ref'];
	$company_name = $_GET['company_name'];
	$ContactPersonFName = $_GET['first_name'];
	$ContactPersonLName = $_GET['last_name'];
	$Status = "1";
	$where = array('Id' => $Id);
	$dataArray = array('C_QuotationStatus' => $C_QuotationStatus, 'ModifiedDate' => $ModifiedDate, 'ModifiedBy' => $ModifiedBy,'ContactPersonFName' => $ContactPersonFName,'ContactPersonLName' => $ContactPersonLName);

	$db->update('t_document', $dataArray,$where);

	//t_supplierquotation
	$row = $db->select('t_supplierquotation', 'Document_Id = $Id', null, null)->results();
	if ($row) {
		$RevisionNo = $row["RevisionNo"]+1;
	}else{
		$RevisionNo = 1;
	}
	$ValidToDate = date('Y-m-d', strtotime( $_GET['valid_date']));
	$QuotedFigure = $_GET['bid_price'];
	$Comments = $_GET['comment'];
	$where = array('Document_Id' => $Id);
	$dataArray = array( 'QuotedFigure' => $QuotedFigure, 'ValidToDate' => $ValidToDate, 'RevisionNo' =>$RevisionNo, 'Comments' => $Comments);

	$db->update('t_supplierquotation', $dataArray,$where);

	//file upload
	if(isset($_GET['attachment'] )){
		$count=0;
		$where = array('T_Document_Id' => $Id);
		$dataArray = array( 'Status' => '0');
		$db->update('t_fileattachments', $dataArray,$where);
		foreach ($_GET['attachment'] as $filename)
		{
			$file_id = 0;
			$row = $db->select('t_fileattachments', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$file_id = $row["Id"]+1;
			}else{
				$file_id = 1;
			}
			$tmpfilename=$_GET['attachment'][$count];
			$tmpfilesubject = $_GET['attachment_message'][$count];
			$tmpfilemessage = $_GET['attachment_message'][$count];
			$dataArray = array('Id' => $file_id, 'T_Document_Id' => $Id, 'FileName' => $tmpfilename, 'Subject' => $tmpfilesubject, 'Message' => $tmpfilemessage, 'FileBinary' => "", 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status);
			$db->insert('t_fileattachments', $dataArray);
			$count=$count + 1;
		}

	}

	if($act == 'draft'){}else{
		$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where C_DocumentType = 6 and DocumentNo = '$rfq_ref')";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$buyer_id = $row["M_Company_Id"];
				}
			}
		}
		$Message = "$company_name has submitted quotation on $rfq_ref.";
		$dataArray = array('Document' => $Id, 'First_Opened_User' => $CreatedBy, 'Receiving_Company' => $buyer_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $CreatedBy,'Status' => "1", 'Type' => 'Create_Quotation');
		$dt = $db->insert('company_notification', $dataArray);

		$email = "";
		$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $buyer_id;
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$email = $email .  $row["EmailAddress"].";";
				}
				sendEmailforNotification($email,$Message, $Message,"Quotation",$Id);
			}
		}

	}

	header('Content-Type: application/json');
	echo json_encode(array('status' => 'Success', 'message' =>"Quotation has been successfully updated."));
}elseif ($function == "createbuyer"){
	$message = array();
	$company_uen =$_GET['company_uen'];
	$company_name =$_GET['company_name'];
	$title =$_GET['title'];
	$contact_number =$_GET['contact_number'];
	$address =$_GET['address'];
	$user_name =$_GET['user_name'];
	$email_address =$_GET['email_address'];
	$password =$_GET['password'];
	$CreatedDate = date('Y-m-d H:i:s');
	$error = "0";
	$msg = "";
	$Company_Admin = 0;
	if(trim($company_uen) != "") {
		$row = $db->query("Select * From m_user Where EmailAddress = '".$email_address."'");
		if($row->rowCount()>0) {
			$user_id = $row->rowCount();
			$message['error'] = "Email has been already exist!";
		}else{
			$where = array('Reg_No' => $company_uen);
			$row = $db->select('m_company', null, $where, 'ORDER BY Id DESC')->results();
			if($row) {
				$c_id = $row["Id"];
			}else{
				$row = $db->select('m_company', null, null, 'ORDER BY Id DESC')->results();
				if ($row) {
					$c_id = $row["Id"]+1;
				}else{
					$c_id = 1;
				}
				$dataArray = array('Id' => $c_id, 'Name' => $company_name, 'Address' => $address, 'Domain' => "", 'Reg_No' => $company_uen, 'Code' => "");
				$db->insert('m_company', $dataArray);
				$Company_Admin = 1;
			}
			$row = $db->select('m_user', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$user_id = $row["Id"]+1;
			}else{
				$user_id = 1;
			}
			$dataArray = array('Id' => $user_id, 'EmailAddress' => $email_address, 'Password' => $password, 'UserName' => $user_name, 'C_UserType' => "3", 'CreatedDate' => $CreatedDate, 'CreatedBy' => "system", 'ModifiedBy' => "system", 'ModifiedDate' => $CreatedDate, 'Status' => "1",'Confirmed' => "0", 'M_Company_Id' => $c_id,'ContactNumbers' => $contact_number,'Title' => $title , 'Company_Admin' => $Company_Admin);
			$db->insert('m_user', $dataArray);

			sendEmailtoverify($email_address);

			$message['success'] = true;
		}
	}else{
		$error = "1";
		$message['error'] = "Enter Company Registration Number";
	}
	echo json_encode($message);
}elseif ($function == "createsupplier"){
	$message = array();
	$company_uen =$_GET['company_uen'];
	$company_name =$_GET['company_name'];
	$title =$_GET['title'];
	$contact_number =$_GET['contact_number'];
	$address =$_GET['address'];
	$user_name =$_GET['user_name'];
	$email_address =$_GET['email_address'];
	$password =$_GET['password'];
	$supported_service =$_GET['supported_service'];
	$CreatedDate = date('Y-m-d H:i:s');
	$Company_Admin = 0;
	$error = "0";
	$msg = "";
	if(trim($company_uen) != "") {

		$row = $db->query("Select * From m_user Where EmailAddress = '".$email_address."'");
		if($row->rowCount()>0) {
			$user_id = $row->rowCount();
			$message['error'] = "Email has been already existed!";
		}else{
			$where = array('Reg_No' => $company_uen);
			$row = $db->select('m_company', null, $where, 'ORDER BY Id DESC')->results();
			if($row) {
				$c_id = $row["Id"];
			}else{
				$row = $db->select('m_company', null, null, 'ORDER BY Id DESC')->results();
				if ($row) {
					$c_id = $row["Id"]+1;
				}else{
					$c_id = 1;
				}
				$dataArray = array('Id' => $c_id, 'Name' => $company_name, 'Address' => $address, 'Domain' => "", 'Reg_No' => $company_uen, 'Code' => "");
				$db->insert('m_company', $dataArray);
				$Company_Admin = 1;
			}

			$row = $db->select('m_user', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$user_id = $row["Id"]+1;
			}else{
				$user_id = 1;
			}
			$dataArray = array('Id' => $user_id, 'EmailAddress' => $email_address, 'Password' => $password, 'UserName' => $user_name, 'C_UserType' => "2", 'CreatedDate' => $CreatedDate, 'CreatedBy' => "system", 'ModifiedBy' => "system", 'ModifiedDate' => $CreatedDate, 'Status' => "1", 'Confirmed' => "0", 'M_Company_Id' => $c_id,'ContactNumbers' => $contact_number,'Title' => $title, 'Company_Admin' => $Company_Admin );
			$db->insert('m_user', $dataArray);
			//tag
			if(isset($_GET['tagList'])){
				foreach ($_GET['tagList'] as $index => $tag_id) {
					$tagsupplier_id = 0;
					$row = $db->select('md_suppliertags', null, null, 'ORDER BY Id DESC')->results();
					if ($row) {
						$tagsupplier_id = $row["Id"]+1;
					}else{
						$tagsupplier_id = 1;
					}

					$dataArray = array('Id' => $tagsupplier_id, 'C_Tags_Id' => $tag_id, 'M_User_Id' => $user_id);

					$db->insert('md_suppliertags', $dataArray);
				}
			}

			//supplier service
			$res = explode(",", $supported_service);
			foreach($res as $item) {
				$tagsupplier_id = 0;
				$row = $db->select('md_supplierservices', null, null, 'ORDER BY Id DESC')->results();
				if ($row) {
					$tagsupplier_id = $row["Id"]+1;
				}else{
					$tagsupplier_id = 1;
				}

				$dataArray = array('Id' => $tagsupplier_id, 'M_Services_Id' => $item, 'M_Company_Id' => $c_id);

				$db->insert('md_supplierservices', $dataArray);
			}

			$message['success'] = true;
			sendEmailtoverify($email_address);
			$actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]";
			echo $actual_link;
		}
	}else{
		$error = "1";
		$message['error'] = "Enter Company Registration Number";
	}
	echo json_encode($message);
}elseif ($function == "UserAdministration"){
	$message = array();
	$act = $_GET['act'];
	if($act == "MakeAdmin"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'Company_Admin' => '1');
		$db->update('m_user', $dataArray,$where);
		$message['success'] = true;
	}elseif($act == "RemoveFromAdmin"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'Company_Admin' => '0');
		$db->update('m_user', $dataArray,$where);
		$message['success'] = true;
	}elseif($act == "enableUser"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'Status' => '1');
		$db->update('m_user', $dataArray,$where);
		$message['success'] = true;
	}elseif($act == "disableUser"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'Status' => '0');
		$db->update('m_user', $dataArray,$where);
		$message['success'] = true;
	}
}elseif ($function == "RFQComment"){
	$message = array();
	$act = $_GET['act'];
	if($act == "save"){
		$ownerrfq = 0;
		if(isset($_GET['ownerrfq'])){
			if($_GET['ownerrfq'] == "1"){
				$ownerrfq =1;
			}
		}
		$rfq_id =$_GET['document_id'];
		$askinguser_id =$_GET['askinguser_id'];
		$txt_comment =$_GET['comment'];
		$CreatedDate = date('Y-m-d H:i:s');
		$error = "0";
		$msg = "";
		$company_name = "";
		$doc_type = "";
		$rfq_ref = "";
		$document_owner_companyid = "0";
		$asking_company_id  = "0";

		$sql = "SELECT * FROM `m_company` t1 where Id in (SELECT M_Company_Id FROM `m_user` t1 where Id = $askinguser_id)";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$company_name = $row["Name"];
					$asking_company_id = $row["Id"];
				}
			}
		}

		$sql = "SELECT * FROM `t_document` t1 where Id = $rfq_id";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					if($row["C_DocumentType"] == "6"){
						$doc_type = "RFQ";
						$rfq_ref = $row["DocumentNo"];
					}else{
						$doc_type = "Quotation";
					}
				}
			}
		}



		$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $rfq_id)";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$document_owner_companyid = $row["M_Company_Id"];
				}
			}
		}
		if(trim($txt_comment) != "") {
			$dataArray = array('ClarificationQuestion' => $txt_comment, 'M_Asking_Person_Id' => $askinguser_id, 'T_Document_Id' => $rfq_id, 'make_public' => $ownerrfq,'CreatedDate' => $CreatedDate, 'CreatedBy' => "system" );
			$db->insert('t_clarifications', $dataArray);
			$message['success'] = true;
			if($asking_company_id == $document_owner_companyid){}else{
				$Message = "$company_name has sent you a clarification on your proposal.";
				$dataArray = array('Document' => $rfq_id, 'First_Opened_User' => $askinguser_id, 'Receiving_Company' => $document_owner_companyid, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $askinguser_id,'Status' => "1", 'Type' => 'Comment');
				$dt = $db->insert('company_notification', $dataArray);

				$Message = "$company_name has sent you a clarification on your proposal as per following : <br> <br><b> ".$txt_comment ."</b><br>";
				$email = "";
				$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $document_owner_companyid;
				$result = $conn->query($sql);
				if (isset($result)){
					if ($result->num_rows > 0) {
						// output data of each row
						while($row = $result->fetch_assoc()) {
							$email = $email .  $row["EmailAddress"].";";
						}
						if($doc_type == "RFQ"){
							sendEmailforNotification($email,$Message, $Message,"RFQ",$rfq_ref);
						}else{
							sendEmailforNotification($email,$Message, $Message,"Quotation",$rfq_id);
						}
					}
				}
			}
		}else{
			$error = "1";
			$message['error'] = "Enter Comment";
		}
	}elseif($act == "reply"){
		$id =$_GET['id'];
		$reply_message =$_GET['replyComment'];
		$where = array('Id' => $id);
		$dataArray = array( 'ClarificationAnswer' => $reply_message);
		$db->update('t_clarifications', $dataArray,$where);

		$rfq_id = $_GET['document_id'];
		$replyuser_id = $_GET['replyuser_id'];
		$askinguser_id = $_GET['askinguser_id'];
		$commentowner_companyid = "";
		$company_name = "";
		$doc_type = "";
		$rfq_ref = "";
		$CreatedDate = date('Y-m-d H:i:s');

		$sql = "SELECT * FROM `m_company` t1 where Id in (SELECT M_Company_Id FROM `m_user` t1 where Id = $replyuser_id)";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$company_name = $row["Name"];
				}
			}
		}

		$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id = $askinguser_id";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$commentowner_companyid = $row["M_Company_Id"];
				}
			}
		}
		$sql = "SELECT * FROM `t_document` t1 where Id = $rfq_id";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					if($row["C_DocumentType"] == "6"){
						$doc_type = "RFQ";
						$rfq_ref = $row["DocumentNo"];
					}else{
						$doc_type = "Quotation";
					}
				}
			}
		}

		$Message = "$company_name has replied on your comment.";
		$dataArray = array('Document' => $rfq_id, 'First_Opened_User' => $replyuser_id, 'Receiving_Company' => $commentowner_companyid, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $replyuser_id,'Status' => "1", 'Type' => 'Comment');
		$dt = $db->insert('company_notification', $dataArray);

		$txt_comment = "";
		$sql = "SELECT * FROM `t_clarifications` t1 where Id = $rfq_id";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$txt_comment = $row["ClarificationQuestion"];
				}
			}
		}

		$Message = "$company_name has replied on your comment as per following : <br> <br>Clarification : <b> ".$txt_comment ."</b><br><br> Reply : <b> ".$reply_message ."</b><br><br>";
		$email = "";
		$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $commentowner_companyid;
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$email = $email .  $row["EmailAddress"].";";
				}
				if($doc_type == "RFQ"){
					sendEmailforNotification($email,$Message, $Message,"RFQ",$rfq_ref);
				}else{
					sendEmailforNotification($email,$Message, $Message,"Quotation",$rfq_id);
				}
			}
		}

		$message['success'] = true;
	}elseif($act == "del"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'Status' => '0');
		$db->update('t_clarifications', $dataArray,$where);
		$message['success'] = true;
	}elseif($act == "make_public"){
		$id =$_GET['id'];
		$where = array('Id' => $id);
		$dataArray = array( 'make_public' => 1);
		$db->update('t_clarifications', $dataArray,$where);
		$message['success'] = true;
	}


	echo json_encode($message);
}elseif ($function == "UpdateStatus"){
	$message = array();
	$Status = $_GET['Status'];
	$type = $_GET['type'];
	$Id =$_GET['id'];
	$ModifiedDate = date('Y-m-d H:i:s');
	$ModifiedBy = $_GET['ModifiedBy'];
	$where = array('Id' => $Id);

	$sql = "SELECT * FROM `m_company` t1 where Id in (SELECT M_Company_Id FROM `m_user` t1 where Id = $ModifiedBy)";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$company_name = $row["Name"];
			}
		}
	}

	$sql = "SELECT * FROM `t_document` t1 where Id =$Id";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$rfq_ref = $row["DocumentNo"];
			}
		}
	}
	if($type == "rfq"){
		$dataArray = array( 'C_RfqStatus' => $Status,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
		$db->update('t_document', $dataArray,$where);

		if($Status == 14){
			$sql = "SELECT * FROM `t_targetedsuppliers` t1 where T_Document_Id = $Id";
			$result = $conn->query($sql);
			if (isset($result)){
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$selected_supplier_id = $row["M_Company_Id"];
						$Message = $company_name." has withdrawn in RFQ, $rfq_ref. All Quotation will be automatically locked.";
						$dataArray = array('Document' => $Id, 'First_Opened_User' => $ModifiedBy, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $ModifiedDate, 'Created_By' => $ModifiedBy,'Status' => "1", 'Type' => 'Withdrawn');
						$dt = $db->insert('company_notification', $dataArray);

						$email = "";
						$sql1 = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $selected_supplier_id;
						$result1 = $conn->query($sql1);
						if (isset($result1)){
							if ($result1->num_rows > 0) {
								// output data of each row
								while($row1 = $result1->fetch_assoc()) {
									$email = $email .  $row1["EmailAddress"].";";
								}
								sendEmailforNotification($email,$Message, $Message,"RFQ",$rfq_ref);
							}
						}
					}
				}
			}

		}

	}else{
		$selected_supplier_id = 0;
		$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $Id)";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
					$selected_supplier_id = $row["M_Company_Id"];
				}
			}
		}
		$rfq_id = $_GET['rfq_id'];
		echo $_GET['rfq_id'];
		if($Status == 18){
			$dataArray = array( 'C_QuotationStatus' => $Status,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
			$db->update('t_document', $dataArray,$where);


			$where = array('Id' => $rfq_id);
			$dataArray = array( 'C_RfqStatus' => 12,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
			$db->update('t_document', $dataArray,$where);

			$Message = "Your Quotation($Id) has been awareded to your company.";
			$dataArray = array('Document' => $Id, 'First_Opened_User' => $ModifiedBy, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $ModifiedDate, 'Created_By' => $ModifiedBy,'Status' => "1", 'Type' => 'Accepted');
			$dt = $db->insert('company_notification', $dataArray);

			$email = "";
			$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $selected_supplier_id;
			$result = $conn->query($sql);
			if (isset($result)){
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$email = $email .  $row["EmailAddress"].";";
					}
					sendEmailforNotification($email,$Message, $Message,"Quotation",$Id);
				}
			}

		}elseif($Status == 19){
			$dataArray = array( 'C_QuotationStatus' => $Status,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
			$db->update('t_document', $dataArray,$where);

			$Message = "After careful consideration, Quotation no. $Id has been rejected.";
			$dataArray = array('Document' => $Id, 'First_Opened_User' => $ModifiedBy, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $ModifiedDate, 'Created_By' => $ModifiedBy,'Status' => "1", 'Type' => 'Rejected');
			$dt = $db->insert('company_notification', $dataArray);

			$email = "";
			$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $selected_supplier_id;
			$result = $conn->query($sql);
			if (isset($result)){
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$email = $email .  $row["EmailAddress"].";";
					}
					sendEmailforNotification($email,$Message, $Message,"Quotation",$Id);
				}
			}

		}elseif($Status == 20){
			$dataArray = array( 'C_QuotationStatus' => $Status,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
			$db->update('t_document', $dataArray,$where);
			$buyer_id = "0";
			$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $rfq_id)";
			$result = $conn->query($sql);
			if (isset($result)){
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$buyer_id = $row["M_Company_Id"];
					}
				}
			}
			$Message = "$company_name has withdrawn quotation.";
			$dataArray = array('Document' => $Id, 'First_Opened_User' => $ModifiedBy, 'Receiving_Company' => $buyer_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $ModifiedDate, 'Created_By' => $ModifiedBy,'Status' => "1", 'Type' => 'Withdrawn');
			$dt = $db->insert('company_notification', $dataArray);

			$email = "";
			$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $buyer_id;
			$result = $conn->query($sql);
			if (isset($result)){
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$email = $email .  $row["EmailAddress"].";";
					}
					sendEmailforNotification($email,$Message, $Message,"Quotation",$Id);
				}
			}

		}

	}

	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "SaveRatingforSupplier"){
	$message = array();
	$document_id =$_GET['document_id'];
	$user_id =$_GET['user_id'];
	$companyid =$_GET['companyid'];
	$serviceRating =$_GET['serviceRating'];
	$quotationRating =$_GET['quotationRating'];
	$deliveryRating =$_GET['deliveryRating'];
	$priceRating =$_GET['priceRating'];
	$title =$_GET['title'];
	$description =$_GET['description'];

	$CreatedDate = date('Y-m-d H:i:s');

	$dataArray = array('Company_Id' => $companyid, 'User_Id' => $user_id, 'ServiceQuality' => $serviceRating, 'SpeedOfQuotation' =>$quotationRating, 'SpeedofDelivery' => $deliveryRating, 'Price' =>$priceRating, 'Title' =>$title, 'Description' =>$description, 'Ref_Document_Id' =>$document_id, 'Status' => 1, 'Created' =>$CreatedDate, 'CreatedBy' =>$user_id);
	$db->insert('md_companyrating', $dataArray);

	$company_name  = "";

	$sql = "SELECT * FROM `m_company` t1 where Id in (SELECT M_Company_Id FROM `m_user` t1 where Id = $user_id)";
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$company_name = $row["Name"];
			}
		}
	}
	$Message = "$company_name has given on your company.";
	$dataArray = array('Document' => $document_id, 'First_Opened_User' => $user_id, 'Receiving_Company' => $companyid, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $user_id,'Status' => "1", 'Type' => 'Rating');
	$dt = $db->insert('company_notification', $dataArray);

	$Message = "$company_name has sent you a clarification on your proposal as per following : <br> <br><b> ".$txt_comment ."</b><br>";
	$email = "";
	$sql = "SELECT * FROM `m_user` t1 where Status = 1 and Confirmed = 1 AND M_Company_Id = " . $document_owner_companyid;
	$result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$email = $email .  $row["EmailAddress"].";";
			}
			sendEmailforNotification($email,$Message, $Message,"Rating","");

		}
	}

	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "EditAbout"){
	$message = array();
	$companyid =$_GET['companyid'];
	$about =$_GET['about'];

	$where = array('Id' => $companyid);
	$dataArray = array( 'About' => $about);
	$db->update('m_company', $dataArray,$where);


	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "EditService"){
	$message = array();
	$companyid =$_GET['companyid'];
	$supported_service =$_GET['services'];

	//supplier service
	$res = explode(",", $supported_service);
	$db->query("Delete From `md_supplierservices` Where M_Company_Id = ".$companyid);
	foreach($res as $item) {
		$tagsupplier_id = 0;
		$row = $db->select('md_supplierservices', null, null, 'ORDER BY Id DESC')->results();
		if ($row) {
			$tagsupplier_id = $row["Id"]+1;
		}else{
			$tagsupplier_id = 1;
		}

		$dataArray = array('Id' => $tagsupplier_id, 'M_Services_Id' => $item, 'M_Company_Id' => $companyid);

		$db->insert('md_supplierservices', $dataArray);
	}


	$message['success'] = true;
	echo json_encode($message);
}
elseif ($function == "EditProfile"){
	$message = array();
	$companyid =$_GET['companyid'];
	$address =$_GET['address'];

	$where = array('Id' => $companyid);
	$dataArray = array( 'Address' => $address);
	$db->update('m_company', $dataArray,$where);

	//tag
	if(isset($_GET['tagList'])){
		$db->query("Delete From  `md_suppliertags` Where M_User_Id = ".$companyid);
		foreach ($_GET['tagList'] as $index => $tag_id) {
			$tagsupplier_id = 0;
			$row = $db->select('md_suppliertags', null, null, 'ORDER BY Id DESC')->results();
			if ($row) {
				$tagsupplier_id = $row["Id"]+1;
			}else{
				$tagsupplier_id = 1;
			}

			$dataArray = array('Id' => $tagsupplier_id, 'C_Tags_Id' => $tag_id, 'M_User_Id' => $companyid);

			$db->insert('md_suppliertags', $dataArray);
		}
	}

	$message['success'] = true;
	echo json_encode($message);
}elseif ($function == "EditDueDate"){
	$message = array();
	$rfq_id =$_GET['rfq_id'];
	$due_date = date('Y-m-d', strtotime( $_GET['due_date']));

	$where = array('Document_Id' => $rfq_id);
	$dataArray = array( 'FinalClosingDate' => $due_date);
	$db->update('t_requestforquotation', $dataArray,$where);


	$message['success'] = true;
	echo json_encode($message);
}

function sendEmailtoverify($email){
	$mail_to = $email;
	//$mail_to = "galles.cs@gmail.com";
	//$from_mail = "info@metalpolis.com";
	// = "Metalpolis";
	//$reply_to ="info@metalpolis.com";
	//$subject = "Verification for registeration at Metalpolis";
	$message1 = "To verify your account at BudgetMetal".PHP_EOL;
	$date = date('Y-m-d', strtotime("+2 days"));

	$email_encode = base64_encode($email);
	$date_encode = base64_encode($date);
	$actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]";

	$verify_link = $actual_link."/market/verify.php?a=".$email_encode. "&b=".$date_encode;

	$sitelink = "<br><a href='".$verify_link."'>Click Here</a>";
	$message1 .= $sitelink;

	//error_reporting(E_STRICT);
	error_reporting(E_ERROR);
	date_default_timezone_set('Asia/Singapore');

	require_once('../class.phpmailer.php');
	//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded

	$from_mail = "info@metalpolis.com";
	$from_name = "BudgetMetal";
	$to_address = $email;
	$to_name = "Info";
	$subject = "Verification for registeration at BudgetMetal";
	$message = $message1;
	$smtp_host = "127.0.0.1";
	$smtp_port = 25;
	// $smtp_username = "info@metalpolis.com";
	// $smtp_password = "12345678";
	$smtp_username = "";
	$smtp_password = "";
	//$smtp_debug = 2;

	$mail             = new PHPMailer();
	$mail->IsHTML(true);
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

	//$mail->AddAttachment("images/phpmailer.gif");      // attachment
	//$mail->AddAttachment("images/phpmailer_mini.gif"); // attachment



	try {

		if(!$mail->Send()) {

		} else {

		}
	}
	catch(Exception $e) {

	}


}


function sendEmailforNotification1($email,$subject, $message,$doc_type,$doc_id){

}


function sendEmailforNotification($email,$subject, $message,$doc_type,$doc_id){
	$mail_to = $email;
	//error_reporting(E_STRICT);
	error_reporting(E_ERROR);
	date_default_timezone_set('Asia/Singapore');

	require_once('../class.phpmailer.php');
	//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded

	$host = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]";
	$actual_link = $host;
	if($doc_id != ""){
		if($doc_type == "RFQ"){
			$actual_link = $host .  "/index.php?rfq_ref=". $doc_id;
		}else{
			$actual_link = $host .  "/index.php?id=". $doc_id;
		}
	}

	$sitelink = "<br><a href='".$actual_link."'>Go to Site</a>";
	$from_mail = "info@metalpolis.com";
	$from_name = "BudgetMetal";
	//$to_address = $email;
	$to_name = "Info";
	//$subject = "Verification for registeration at Metalpolis";
	//$message = $message;
	$smtp_host = "127.0.0.1";
	$smtp_port = 25;
	// $smtp_username = "info@metalpolis.com";
	// $smtp_password = "12345678";
	$smtp_username = "";
	$smtp_password = "";
	//$smtp_debug = 2;

	$mail = new PHPMailer();
	$mail->IsHTML(true);
	//$message  = file_get_contents('contents.html');
	//$message  = eregi_replace("[\]",'',$message);

	$mail->IsSMTP(); // telling the class to use SMTP
	$mail->Host       = $smtp_host; // SMTP server
	//$mail->SMTPDebug  = $smtp_debug;                     // enables SMTP debug information (for testing)
	// 1 = errors and messages
	// 2 = messages only
	$mail->SMTPAuth   = false;                  // enable SMTP authentication
	$mail->Port       = $smtp_port;                    // set the SMTP port for the GMAIL server
	//$mail->Username   = $smtp_username;       // SMTP account username
	//$mail->Password   = $smtp_password;        // SMTP account password

	$mail->SetFrom($from_mail);

	$mail->AddReplyTo($from_mail);

	$mail->Subject    = $subject;

	$mail->AltBody    = $message . $sitelink; // optional, comment out and test

	$mail->MsgHTML($message.$sitelink);

	$to_address = "info@metalpolis.com";
	$emails = explode(";", $email);
	for($i = 0, $l = count($emails); $i < $l-1; ++$i) {

		if($i==0){
			$to_address = $emails[$i];
			$mail->AddAddress($to_address);
		}else{
			$mail->AddCC($emails[$i]);
		}
	}

	try {

		if(!$mail->Send()) {

		} else {

		}
	}
	catch(Exception $e) {

	}
}
?>
