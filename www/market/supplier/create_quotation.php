 <?php
	include("dbcon.php");
	 include_once('lib/pdowrapper/class.pdowrapper.php');
	 $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
   date_default_timezone_set("Asia/Singapore");
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
    if(isset($_SESSION['userid'])){
		$userid = $_SESSION['userid'];
	}else{
		echo "no userid";
	}




   $sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No FROM `m_user` t1  INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$username = $row["username"];
				$email =  $row["EmailAddress"];
				//$rfq_count = $row["RfqCount"];
				$company_name = $row["Name"];
				$reg_no = $row["Reg_No"];
			}
		}
	}


	if(isset($_GET['rfq_ref'])){
		$rfq_ref =$_GET['rfq_ref'];
		$sql = "SELECT * FROM `t_document`  where Status = 1 and DocumentNo = '".$rfq_ref . "' and C_DocumentType = 6";
		$result = $conn->query($sql);
		if (isset($result)){
			if ($result->num_rows > 0) {
				$T_Rfq_Id = 0;
				while($row = $result->fetch_assoc()) {
					$T_Rfq_Id = $row["Id"];
				}
				$doc_id = 0;
				$row = $db->select('t_document', null, null, 'ORDER BY Id DESC')->results();
				if ($row) {
					$doc_id = $row["Id"]+1;
				}else{
					$doc_id = 1;
				}
				$Id = $doc_id;
				$title = "";
				$C_DocumentType = "7";
				$ShortDescription = "";
				$LongDescription ="";
				$C_QuotationStatus = "15";
					$C_RfqStatus = "8";
				$CreatedDate = date('Y-m-d H:i:s');
				$CreatedBy = $userid;
				$Status = "1";
				$M_User_Id = $userid;
				$DocumentNo = $rfq_ref;
				$ContactPersonFName = "";
				$ContactPersonLName = "";

				$dataArray = array('Id' => $Id, 'Title' => $title, 'C_DocumentType' => $C_DocumentType, 'ShortDescription' => $ShortDescription, 'LongDescription' => $LongDescription, 'C_QuotationStatus' => $C_QuotationStatus, 'C_RfqStatus' => $C_RfqStatus, 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'M_User_Id' => $M_User_Id, 'DocumentNo' => $DocumentNo,'ContactPersonFName' => $ContactPersonFName,'ContactPersonLName' => $ContactPersonLName);

				$db->insert('t_document', $dataArray);

				//t_supplierquotation
				$dataArray = array('Document_Id' => $Id, 'T_Rfq_Id' => $T_Rfq_Id, 'QuotedFigure' => "0.00", 'ValidToDate' => date('Y-m-d', strtotime("+30 days")), 'RevisionNo' => '1', 'Comments' => '');

				$db->insert('t_supplierquotation', $dataArray);

				$sql = "SELECT M_Company_Id FROM `m_user` t1 where Id in (SELECT M_User_Id FROM `t_document` t1 where Id = $T_Rfq_Id)";
				$result = $conn->query($sql);
				if (isset($result)){
					if ($result->num_rows > 0) {
						// output data of each row
						while($row = $result->fetch_assoc()) {
							$buyer_id = $row["M_Company_Id"];
						}
					}
				}

				$Message = "$company_name has interested on your $rfq_ref.";
				$dataArray = array('Document' => $Id, 'First_Opened_User' => $CreatedBy, 'Receiving_Company' => $buyer_id, 'Message' => $Message ,'Open_Status' => '22', 'Created_Date' => $CreatedDate, 'Created_By' => $CreatedBy,'Status' => "1", 'Type' => 'Interest_RFQ');
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
            sendEmailforNotification($email,$Message, $Message,"RFQ",$rfq_ref);
          }
         }

				$status = "Draft";
?>
 <div class="row">
        <div class="col-sm-12">
            <h3>
                Create Quotation
            </h3>
			<div id="notify" class="alert alert-success" style="display:none;">
				<a href="#" class="close" data-dismiss="alert">&times;</a>

				<div class="message"></div>
			</div>
        </div>
    </div>

 <form action="#" method="post" id="create_rfq" >

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">Quotation Info</h3>

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
                        <label>RFQ Ref <a href="index.php?rdp=view_rfq&rfq_ref=<?php echo $rfq_ref; ?>">View</a></label>
						<input name="rfq_ref" type="text" readonly class="form-control" value="<?php echo $rfq_ref; ?>" >


						 <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
						  <input name="q_id" type="hidden" readonly class="form-control" value="<?php echo $Id; ?>" >

                    </div>
                    <div class="form-group">
                        <label>Company Name</label>
                        <input name="company_name" type="text" readonly class="form-control"
                               value="<?php echo $company_name; ?>">
                    </div>
                    <div class="form-group">
                        <label>Contact Person First Name</label>
                        <input name="first_name" type="text" class="form-control" value="" placeholder="First Name">
                    </div>
                    <div class="form-group">
                        <label>Valid Until</label>

						<div class="input-group date col-sm-5">
						  <div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						  </div>
						  <input type="text" name="valid_date" class="form-control pull-right" id="rfq_datepicker" value="<?php echo date("d-m-Y");?>" required>
						</div>
                    </div>

                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Status</label>
                        <input name="status" type="text" readonly class="form-control"
                               value="<?php echo $status; ?>">
                    </div>
                    <div class="form-group">
                        <label>Business Registration No.</label>
                        <input name="reg_no" type="text" readonly class="form-control"
                               value="<?php echo $reg_no; ?>">
                    </div>
                    <div class="form-group">
                        <label>Contact Person Last Name</label>
                        <input name="last_name" type="text"  class="form-control" value="" placeholder="Last Name">
                    </div>
                    <div class="form-group">
                        <label>Bid Price</label>
                        <!--<input id="bid_price" name="bid_price" type="number" class="form-control pull-right" placeholder="Please enter bid price">
                        -->
                        <div class="input-group">
                          <span class="input-group-addon">$</span>
                          <input  id="bid_price" name="bid_price" type="number" value="0" min="0" step="0.01" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="c2" />
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
                <div class="col-sm-6">
					<input type="hidden" id="fileno" value="0">
					<input id="rfq_upload" type="file" name="rfq_upload" />
					<br>
                    <button type="button" id="addfilelist" class="btn btn-sm btn-info" value="+ Attach file">
                        + Add File Attachment
                    </button>

                </div>
            </div>
			<br>
			<div class="row">
                <div class="col-sm-6">
				  <table class="table table-hover" id="fileList">
					<thead>
						<tr>
							<th>File</th>
							<th>Description</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				  </table>
			</div>

            </div>
        </div>
    </div>

	<div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">Note/Comment to Buyer</h3>
			<div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>

        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-sm-12">
					<textarea rows="4" cols="100" name="comment"></textarea>

                </div>
            </div>

        </div>
    </div>

   <div class="row">

        <div class="col-sm-12">
            <div class="btn-group pull-left">
                <button type="button" class="btn btn-success" id="btnsave_quotation_top" >Save as Draft</button>
                <button type="button" id="btnsubmit_quotation_top" class="btn btn-warning">Submit</button>
            </div>
        </div>
    </div>

</form>

	<script>
  webshims.setOptions('forms-ext', {
      replaceUI: 'auto',
      types: 'number'
  });
  webshims.polyfill('forms forms-ext');

	$(function () {
		//Date picker
    $('#rfq_datepicker').datepicker({

	   format: "dd-mm-yyyy",
	   autoclose: true,
    todayHighlight: true,
    startDate : "today",
    })

	});



	  $('button[id=addfilelist]').click(function(){
		var fileno = $("input[id=fileno]").val();
		var file_data = $('#rfq_upload').prop('files')[0];
		var form_data = new FormData();
		form_data.append('file', file_data);
		$.ajax({
					url: 'upload.php', // point to server-side PHP script
					dataType: 'text',  // what to expect back from the PHP script, if anything
					cache: false,
					contentType: false,
					processData: false,
					data: form_data,
					type: 'post',
					  dataType: 'json',
					success: function(data){
						fileno = parseInt(fileno)+1;
						 $("#fileList tbody").append('<tr id="tr_'+fileno+'" align="left"><td><input type="hidden" name="attachment[]" value="'+data.message+'" ><a href="attachment/'+data.message+'" target="_blank">'+data.message+'</a> <input type="hidden" name="attachment_subject[]" value="" > </td><td><textarea name="attachment_message[]" row="3" cols="50"></textarea></td><td><button type="button" OnClick="RemoveFile(this);" class="btn btn-sm btn-del" value="tr_'+fileno+'">Remove </button> <br></td></tr>');
						$("input[id=fileno]").val(fileno);
						$('#rfq_upload').val("");
					}
		 });
	  });

	  function RemoveFile(objButton){
		var trid = objButton.value;
		row = $('#' + trid);
		row.remove();
		}

    $("input[id='bid_price']").keyup(function () {
    var bid_price = $("input[id='bid_price']").val();
    $("input[id='bid_price']").val(parseInt(bid_price));
    });

		$("#btnsave_quotation_top").click(function (e) {

			e.preventDefault();

				SaveQuotation();

		});

		$("#btnsubmit_quotation_top").click(function (e) {

			e.preventDefault();

				SubmitQuotation();

		});

	function SaveQuotation() {
            $.ajax({
                url: 'market.php?function=savequotation&act=draft',
                type: 'GET',
                data: $("#create_rfq").serialize(),
                dataType: 'json',
                success: function (data) {
                    $("#notify .message").html("<strong>" + data.status + "</strong>: " + data.message);
                    $("#notify").removeClass("alert-warning").addClass("alert-success").fadeIn();
                    $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
                    $("#create_rfq").remove();
                    $btn.button("reset");
                },
                error: function (data) {
                    $("#notify .message").html("<strong>100000" + data.status + "</strong>: " + data.message);
                    $("#notify").removeClass("alert-success").addClass("alert-warning").fadeIn();
                    $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
                    $btn.button("reset");
                }

            });

    }

	function SubmitQuotation() {

            $.ajax({

                url: 'market.php?function=savequotation&act=submit',
                type: 'GET',
                data: $("#create_rfq").serialize(),
                dataType: 'json',
                success: function (data) {
                    $("#notify .message").html("<strong>" + data.status + "</strong>: " + data.message);
                    $("#notify").removeClass("alert-warning").addClass("alert-success").fadeIn();
                    $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
                    $("#create_rfq").remove();
                    $btn.button("reset");
                },
                error: function (data) {
                    $("#notify .message").html("<strong>100000" + data.status + "</strong>: " + data.message);
                    $("#notify").removeClass("alert-success").addClass("alert-warning").fadeIn();
                    $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
                    $btn.button("reset");
                }

            });

    }
	</script>
	<?php
				}
			}
		}else{
		$rfq_ref = "";
	}



  function sendEmailforNotification($email,$subject, $message,$doc_type,$doc_id){

  }


  function sendEmailforNotification1($email,$subject, $message,$doc_type,$doc_id){
  	$mail_to = $email;
  	//error_reporting(E_STRICT);
  	error_reporting(E_ERROR);
  	date_default_timezone_set('Asia/Singapore');

  	require_once('../../class.phpmailer.php');
  	//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded
  	$host = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]";
  	if($doc_type == "RFQ"){
  		$actual_link = $host .  "/index.php?rfq_ref=". $doc_id;
  	}else{
  		$actual_link = $host .  "/index.php?id=". $doc_id;
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

  	$mail->MsgHTML($message);

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
