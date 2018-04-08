<?php
$date = date('YmdHis');
$error = "";
$po_letter_filename = "";
if(isset($_FILES['file'])){
  if ( 0 < $_FILES['file']['error'] ) {
      //echo 'Error: ' . $_FILES['file']['error'] . '<br>';
      //echo $_FILES['file']['error'];
      $error = $_FILES['file']['error'];
  }
  else {
      //$target = $_SERVER['DOCUMENT_ROOT'] . '/metalpolis_git/www/market/attachment/';
      $doc_root = $_SERVER['DOCUMENT_ROOT'];
      $target = $doc_root . "/market/attachment/";
      //$target = $doc_root . "/budgetmetal/www/market/attachment/";
      //// Folder check logic - Return error if upload folder not exists
      if (!file_exists($target)) {
        $error = "Directory Error";
          return;
      }

      //// Catch error - return error if file upload has permission or other issues
      try{
        //// Logic - Upload file from memory to target file
        move_uploaded_file($_FILES['file']['tmp_name'], $target.$date .'_'. $_FILES['file']['name']);

      }catch(Exception $e){
        //// Result - Fail
          $error = $date .'_'. $_FILES['file']['name'];

      }
      $po_letter_filename = $date .'_'. $_FILES['file']['name'];


      //  echo $date .'_'. $_FILES['file']['name'];
      //// Result - Success
      //echo json_encode(array('status' => 'Success', 'message' =>$date .'_'. $_FILES['file']['name'], 'doc root' => $doc_root, 'upload path' => $target));
  }
}else{
  $error = "No file";
}
if($error == ""){
  include("../dbcon.php");
	 include_once('../lib/pdowrapper/class.pdowrapper.php');
	 $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
   date_default_timezone_set("Asia/Singapore");
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
  $ModifiedDate = date('Y-m-d H:i:s');
  $ModifiedBy = $_POST['ModifiedBy'];
  $Id =$_POST['doc_id'];

  $where = array('Id' => $Id);
  $dataArray = array( 'C_QuotationStatus' => "18",'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
  $db->update('t_document', $dataArray,$where);

  $where = array('Document_Id' => $Id);
  $dataArray = array( 'PO_Letter' => $po_letter_filename);
  $db->update('t_supplierquotation', $dataArray,$where);

$rfq_id = $_POST['rfq_id'];
$where = array('Id' => $rfq_id);
$dataArray = array( 'C_RfqStatus' => 12,'ModifiedDate' => $ModifiedDate,'ModifiedBy' => $ModifiedBy);
$db->update('t_document', $dataArray,$where);

  $selected_supplier_id = 0;
  $selected_supplier_contactNo = "";
  $selected_supplier_UserName = "";
  $selected_supplier_EmailAddress = "";
  $sql = "SELECT M_Company_Id, ContactNumbers,UserName,EmailAddress FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $Id)";
  $result = $conn->query($sql);
  if (isset($result)){
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        $selected_supplier_id = $row["M_Company_Id"];
        $selected_supplier_contactNo = $row["ContactNumbers"];
        $selected_supplier_UserName = $row["UserName"];
        $selected_supplier_EmailAddress = $row["EmailAddress"];
      }
    }
  }

  $selected_buyer_id = 0;
  $selected_buyer_contactNo = "";
  $selected_buyer_UserName = "";
  $selected_buyer_EmailAddress = "";
  $sql = "SELECT M_Company_Id, ContactNumbers,UserName,EmailAddress FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $ModifiedBy)";
  $result = $conn->query($sql);
  if (isset($result)){
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        $selected_buyer_id = $row["M_Company_Id"];
        $selected_buyer_contactNo = $row["ContactNumbers"];
        $selected_buyer_UserName = $row["UserName"];
        $selected_buyer_EmailAddress = $row["EmailAddress"];
      }
    }
  }

$Message = "Your Quotation($Id) has been awarded to your company.";
$dataArray = array('Document' => $Id, 'First_Opened_User' => $ModifiedBy, 'Receiving_Company' => $selected_supplier_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $ModifiedDate, 'Created_By' => $ModifiedBy,'Status' => "1", 'Type' => 'Accepted');
$dt = $db->insert('company_notification', $dataArray);

$Message = $Message . "<br> Please contact to buyer ($selected_buyer_UserName ,Contact No.- $selected_buyer_contactNo)<br>";
$email = $selected_supplier_EmailAddress;
sendEmailforNotification($email,$Message, $Message,"Quotation",$Id, $target.$po_letter_filename);

$Message = "You awarded quotation - $Id for your RFQ.<br> Please contact to supplier ($selected_supplier_UserName ,Contact No.- $selected_supplier_contactNo)<br>";
$email = $selected_buyer_EmailAddress;
sendEmailforNotification($email,$Message, $Message,"Quotation",$Id, $target.$po_letter_filename);


header("location:index.php?rdp=view_quotation&id=".$Id);
}else{
  echo $error;
}

function sendEmailforNotification($email,$subject, $message,$doc_type,$doc_id,$attachment_file){
	$mail_to = $email;
	//error_reporting(E_STRICT);
	error_reporting(E_ERROR);
	date_default_timezone_set('Asia/Singapore');

	require_once('../../class.phpmailer.php');
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

	$mail->AddAddress($email);

  $mail->AddAttachment($attachment_file);      // attachment

	try {

		if(!$mail->Send()) {

		} else {

		}
	}
	catch(Exception $e) {

	}
}
?>
