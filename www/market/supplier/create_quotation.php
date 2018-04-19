<!-- Severity 1 - 1 supplier company can create 1 quotation only for 1 RFQ -->
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

$sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No,t3.Id FROM `m_user` t1  INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $username = $row["username"];
      $email =  $row["EmailAddress"];
      //$rfq_count = $row["RfqCount"];
      $company_name = $row["Name"];
      $company_Id = $row["Id"];
      $reg_no = $row["Reg_No"];

    }
  }
}


if(isset($_GET['rfq_ref'])){
  $rfq_ref =$_GET['rfq_ref'];
  $sql = "SELECT * FROM `t_document`  where Status = 1 and M_User_Id in (Select Id From m_user Where M_Company_Id = $company_Id) and DocumentNo Like '". $rfq_ref . "' and C_DocumentType = 7 Limit 1";
  $result = $conn->query($sql);
//  echo $sql;
$q_id = 0;
  if (isset($result)){
    if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
        $q_id = $row["Id"];
      }
    }
  }

  // <!-- AMK - Severity 1 - 1 supplier company can create 1 quotation only for 1 RFQ -->
  // $quotation_check_sql = "SELECT t1.Id, Concat(t1.DocumentNo, ' / ', t1.Q_Ref) as DocumentNo, t1.Title, t1.CreatedDate, t2.Name as Status, t4.Name as CompanyName, t5.QuotedFigure FROM t_document t1 Inner Join t_document t12 on t12.DocumentNo = t1.DocumentNo and t12.Q_Ref Is null Inner Join c_codetable t2 on t2.Id = t1.C_QuotationStatus Inner Join m_user t3 on t3.Id = t12.M_User_Id Inner Join m_company t4 on t4.Id = t3.M_Company_Id Inner Join t_supplierquotation t5 on t5.Document_Id = t1.Id Where t1.Status = 1 and t1.C_DocumentType = 7 and t1.C_QuotationStatus in (15,16,17,18,19,20) and t1.M_User_Id = ". $userid ." and t1.DocumentNo = '". $_GET['rfq_ref'] ."'";
  // $result = $conn->query($quotation_check_sql);
  // if (isset($result)){
  //   if ($result->num_rows > 0) {
  //
  //     echo "Quotation for RFQ, " . $rfq_ref . ", has been registered by another user. Please check Quoation List Page.";
  //     exit;
  //
  //   }
  // }

  $sql = "SELECT * FROM `t_document`  where Status = 1 and DocumentNo = '". $rfq_ref . "' and C_DocumentType = 6";
  $result = $conn->query($sql);
  if (isset($result)){
    if ($result->num_rows > 0) {

      $T_Rfq_Id = 0;
      while($row = $result->fetch_assoc()) {
        $T_Rfq_Id = $row["Id"];
      }

      if($q_id == 0){
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


      //get document number
      $currentYear = date("Y");
      $current_UserId = $userid;



      $q_ref = "";
      $sql = "SELECT * FROM `document_number` t1 where t1.Name='Q' and t1.Prefix = '$current_UserId' and t1.Suffix = '$currentYear' ORDER BY Running_Number DESC Limit 1";
      $result = $conn->query($sql);
      if (isset($result)){
        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            $number = sprintf('%05d', $row["Running_Number"] + 1);
            $twoYearFormat = date("y");
            $q_ref = "Q-" . $current_UserId . "-" . $twoYearFormat . $number;
            //$rfq_ref = "RFQ_Draft_".($row["Running_Number"]+1);
            $doc_id = $row["Id"] + 1;
            $running_number = $row["Running_Number"] + 1;
          }
        }else{
          $twoYearFormat = date("y");
          $q_ref = "Q-" . $current_UserId . "-" . $twoYearFormat . "00001";
          $doc_id = 1;
          $running_number = 1;
        }
      }
      $dataArray = array('Name' => "Q", 'Prefix' => "$current_UserId", 'Suffix' => "$currentYear",'Format' => " $q_ref", 'Running_Number' => $running_number);

      $dt = $db->insert('document_number', $dataArray);

      $dataArray = array('Id' => $Id, 'Title' => $title, 'C_DocumentType' => $C_DocumentType, 'ShortDescription' => $ShortDescription, 'LongDescription' => $LongDescription, 'C_QuotationStatus' => $C_QuotationStatus, 'C_RfqStatus' => $C_RfqStatus, 'CreatedDate' => $CreatedDate, 'CreatedBy' => $CreatedBy, 'Status' => $Status, 'M_User_Id' => $M_User_Id, 'DocumentNo' => $DocumentNo,'ContactPersonFName' => $ContactPersonFName,'ContactPersonLName' => $ContactPersonLName,'Q_Ref' => $q_ref);

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

      $Message = "$company_name has registered interest in your $rfq_ref.  You should expect a proposal by due date.";
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
    }else{
      $Id = $q_id;
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
                  <input  id="bid_price" name="bid_price" type="number" value="0" min="0" step="0.01" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control"/>
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
            <div class="col-lg-8">
                <button type="button" class="btn btn-success" aria-label="Add file" id="add-file-btn">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add file
                </button>
                <input type="hidden" id="fileno" value="0">
            </div>


            <div class="col-lg-8">
                <p>
                    <div class="progress hide" id="upload-progress">
                        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"   style="width: 0%">
                            <span class="sr-only"></span>
                        </div>
                    </div>
                </p>
            </div>
        </div>
          <!-- <div class="row">
            <div class="col-sm-6">
              <input type="hidden" id="fileno" value="0">
              <input id="rfq_upload" type="file" name="rfq_upload" />
              <br>
              <button type="button" id="addfilelist" class="btn btn-sm btn-info" value="+ Attach file">
                + Add File Attachment
              </button>

            </div>
          </div> -->
          <br>
          <div class="row">
            <div class="col-sm-12">
              <table class="table table-hover" id="fileList">
                <thead>
                  <tr>
                    <th style="width:40%">File</th>
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
            <a href="index.php?rdp=list_quotation" class="btn btn-default">Cancel</a>
          </div>
        </div>
      </div>

    </form>

    <script>
    // webshims.setOptions('forms-ext', {
    //   replaceUI: 'auto',
    //   types: 'number'
    // });
    // webshims.polyfill('forms forms-ext');

    $(function () {
      //Date picker
      $('#rfq_datepicker').datepicker({

        format: "dd-mm-yyyy",
        autoclose: true,
        todayHighlight: true,
        startDate : "today",
      })

    });



    // $('button[id=addfilelist]').click(function(){
    //   var fileno = $("input[id=fileno]").val();
    //   var file_data = $('#rfq_upload').prop('files')[0];
    //   var form_data = new FormData();
    //   form_data.append('file', file_data);
    //   $.ajax({
    //     url: 'upload.php', // point to server-side PHP script
    //     dataType: 'text',  // what to expect back from the PHP script, if anything
    //     cache: false,
    //     contentType: false,
    //     processData: false,
    //     data: form_data,
    //     type: 'post',
    //     dataType: 'json',
    //     success: function(data){
    //       fileno = parseInt(fileno)+1;
    //       $("#fileList tbody").append('<tr id="tr_'+fileno+'" align="left"><td><input type="hidden" name="attachment[]" value="'+data.message+'" ><a href="attachment/'+data.message+'" target="_blank">'+data.message+'</a> <input type="hidden" name="attachment_subject[]" value="" > </td><td><textarea name="attachment_message[]" row="3" cols="50"></textarea></td><td><button type="button" OnClick="RemoveFile(this);" class="btn btn-sm btn-del" value="tr_'+fileno+'">Remove </button> <br></td></tr>');
    //       $("input[id=fileno]").val(fileno);
    //       $('#rfq_upload').val("");
    //     }
    //   });
    // });

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
        var bid_price = $("input[id='bid_price']").val();
        if(parseInt(bid_price) > 0){
            SaveQuotation();
        }else{
          alert("Bid Price must be greater than 0");
        }
    });

    $("#btnsubmit_quotation_top").click(function (e) {

      e.preventDefault();
      var bid_price = $("input[id='bid_price']").val();
      if(parseInt(bid_price) > 0){
          SubmitQuotation();
      }else{
        alert("Bid Price must be greater than 0");
      }


    });

    function SaveQuotation() {
      $.ajax({
        url: 'market.php?function=savequotation&act=draft',
        type: 'GET',
        data: $("#create_rfq").serialize(),
        dataType: 'json',
        success: function (data) {
          window.location.href = "index.php?rdp=list_quotation";
          // $("#notify .message").html("<strong>" + data.status + "</strong>: " + data.message);
          // $("#notify").removeClass("alert-warning").addClass("alert-success").fadeIn();
          // $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
          // $("#create_rfq").remove();
          // $btn.button("reset");
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
          window.location.href = "index.php?rdp=list_quotation";
          // $("#notify .message").html("<strong>" + data.status + "</strong>: " + data.message);
          // $("#notify").removeClass("alert-warning").addClass("alert-success").fadeIn();
          // $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
          // $("#create_rfq").remove();
          // $btn.button("reset");
        },
        error: function (data) {
          $("#notify .message").html("<strong>100000" + data.status + "</strong>: " + data.message);
          $("#notify").removeClass("alert-success").addClass("alert-warning").fadeIn();
          $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
          $btn.button("reset");
        }

      });

    }

    var r = new Resumable({
            target: 'upload.php',
            testChunks: true,
            maxFiles :1
        });

        r.assignBrowse(document.getElementById('add-file-btn'));

        // $('#start-upload-btn').click(function(){
        //     r.upload();
        // });

        // $('#pause-upload-btn').click(function(){
        //     if (r.files.length>0) {
        //         if (r.isUploading()) {
        //           return  r.pause();
        //         }
        //         return r.upload();
        //     }
        // });

        var progressBar = new ProgressBar($('#upload-progress'));

        r.on('fileAdded', function(file, event){
            progressBar.fileAdded();
            var d = new Date();
            var yyyy =  d.getFullYear();
            var mm =  d.getMonth()+1;
            var dd =  d.getDate();
            var hh =  d.getHours();
            var mins =  d.getMinutes();
            var ss =  d.getSeconds();
            var template_date = yyyy.toString() + mm.toString() + dd.toString() + hh.toString() + mins.toString() + ss.toString();
            //alert(template_date);
            r.files[0].fileName = template_date + "_" + r.files[0].fileName;
            r.upload();

        });

        r.on('fileSuccess', function(file, message){
            progressBar.finish();
            //alert(r.files[0].fileName);
            var fileno = $("input[id=fileno]").val();
            var filename = r.files[0].fileName;
            fileno = parseInt(fileno)+1;
            $("#fileList tbody").append('<tr id="tr_'+fileno+'" align="left"><td><input type="hidden" name="attachment[]" value="'+filename+'" ><a href="attachment/'+filename+'" target="_blank">'+filename+'</a> <input type="hidden" name="attachment_subject[]" value="" > </td><td><textarea name="attachment_message[]" row="3" cols="50"></textarea></td><td><button type="button" OnClick="RemoveFile(this);" class="btn btn-sm btn-del" value="tr_'+fileno+'">Remove </button> <br></td></tr>');
            $("input[id=fileno]").val(fileno);
        });

        r.on('progress', function(){
            progressBar.uploading(r.progress()*100);
            //$('#pause-upload-btn').find('.glyphicon').removeClass('glyphicon-play').addClass('glyphicon-pause');
        });

        r.on('pause', function(){
            $('#pause-upload-btn').find('.glyphicon').removeClass('glyphicon-pause').addClass('glyphicon-play');
        });

        function ProgressBar(ele) {
            this.thisEle = $(ele);

            this.fileAdded = function() {
                (this.thisEle).removeClass('hide').find('.progress-bar').css('width','0%');
            },

            this.uploading = function(progress) {
                (this.thisEle).find('.progress-bar').attr('style', "width:"+progress+'%');
            },

            this.finish = function() {
                (this.thisEle).addClass('hide').find('.progress-bar').css('width','0%');
            }
        }
    </script>
    <?php
  }
}
}else{
  $rfq_ref = "";
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

  // $mail->AltBody    = $message . $sitelink; // optional, comment out and test
  //
  // $mail->MsgHTML($message.$sitelink);

  $content = file_get_contents('template.html');
  $content =  str_replace("[message]",$message,$content);
  $content = str_replace("[actual_link]",$actual_link,$content);
//echo $content;
  //$content = $message. $sitelink;
  // $content             = eregi_replace("[message]",'',$message);
  // $content             = eregi_replace("[actual_link]",'',$actual_link);
  $mail->AltBody    = $content; // optional, comment out and test

  $mail->MsgHTML($content);

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
