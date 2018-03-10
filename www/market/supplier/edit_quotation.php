 <?php
	include("dbcon.php");
	 include_once('lib/pdowrapper/class.pdowrapper.php');
	 $dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
    if(isset($_SESSION['userid'])){
		$userid = $_SESSION['userid'];
	}else{
		echo "no userid";
	}
   $id = "";
	if(isset($_GET["id"])){
		$id = $_GET["id"];
	}

  $sql = "SELECT * FROM `t_document` t1 where Status = 1 and C_DocumentType = 7 and t1.Id = '".$id."'";
    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$q_id = $row["Id"];
			   $rfq_ref = $row["DocumentNo"];
			   $q_statusid = $row["C_QuotationStatus"];
			   $q_userid = $row["M_User_Id"];
			   $q_createddate = $row["CreatedDate"];
			   $q_subject = $row["Title"];
			   $FName = $row["ContactPersonFName"];
			   $LName = $row["ContactPersonLName"];
			}




	$sql = "SELECT * FROM `t_supplierquotation` t1 where t1.Document_Id = ".$q_id;
    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$ValidToDate = $row["ValidToDate"];
				$QuotedFigure =  $row["QuotedFigure"];
				$Comments =  $row["Comments"];
			}
		}
	}

	$sql = "SELECT t1.username, t1.EmailAddress,  t3.Name, t3.Reg_No FROM `m_user` t1  INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$q_userid;
    $result = $conn->query($sql);
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$username = $row["username"];
				$email =  $row["EmailAddress"];
				$company_name = $row["Name"];
				$reg_no = $row["Reg_No"];
			}
		}
	}


?>
 <div class="row">
        <div class="col-sm-12">
            <h3>
                Edit Quotation
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
                        <label>RFQ Ref <a href="index.php?page=view_rfq&rfq_ref=<?php echo $rfq_ref; ?>">View</a></label>
						<input name="rfq_ref" type="text" readonly class="form-control" value="<?php echo $rfq_ref; ?>" >


						 <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
						  <input name="q_id" type="hidden" readonly class="form-control" value="<?php echo $q_id; ?>" >

                    </div>
                    <div class="form-group">
                        <label>Company Name</label>
                        <input name="company_name" type="text" readonly class="form-control"
                               value="<?php echo $company_name; ?>">
                    </div>
                    <div class="form-group">
                        <label>Contact Person First Name</label>
                        <input name="first_name" type="text" class="form-control" value="<?php echo $FName; ?>" placeholder="First Name">
                    </div>
                    <div class="form-group">
                        <label>Valid Date</label>

						<div class="input-group date col-sm-5">
						  <div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						  </div>
						  <input type="text" name="valid_date" class="form-control pull-right" id="rfq_datepicker" value="<?php echo date('d-m-Y', strtotime($ValidToDate)); ?>" required>
						</div>
                    </div>

                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Status</label>
                        <input name="status" type="text" readonly class="form-control"
                               value="<?php
					   $sql = "SELECT t1.Name FROM `c_codetable` t1 where t1.id = ".$q_statusid;
						$result = $conn->query($sql);
						if (isset($result)){
							if ($result->num_rows > 0) {
								// output data of each row
								while($row = $result->fetch_assoc()) {
									$q_status = $row["Name"];
									echo $q_status;
								}
							}
						}


					   ?>">
                    </div>
                    <div class="form-group">
                        <label>Business Registration No.</label>
                        <input name="reg_no" type="text" readonly class="form-control"
                               value="<?php echo $reg_no; ?>">
                    </div>
                    <div class="form-group">
                        <label>Contact Person Last Name</label>
                        <input name="last_name" type="text"  class="form-control" value="<?php echo $FName; ?>" placeholder="Last Name">
                    </div>
                    <div class="form-group">
                        <label>Bid Price</label>
                        <!--<input id="bid_price" name="bid_price" type="number" class="form-control pull-right" placeholder="Please enter bid price" value="">-->
                        <div class="input-group">
                          <span class="input-group-addon">$</span>
                          <input  id="bid_price" name="bid_price" type="number" value="<?php echo $QuotedFigure; ?>" min="0" step="0.01" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="c2" />
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
					<?php
						$count = 0;
						$query = "SELECT t2.* FROM t_document t1 Inner Join t_fileattachments t2 on t2.T_Document_Id = t1.Id Where t1.Status = 1 and t2.Status = 1 and C_DocumentType = 7 and t1.Id = ". $q_id;
						$results = $db->pdoQuery($query)->results();
						if (!empty($results)){

							foreach ($results as $row) {
								$count = $count+1;
								?>
								<tr id="tr_<?php echo $count;?>" align="left">


									<td><?php
						$out = '<a href="attachment/' . $row["FileName"] .'" target="_blank">'.$row["FileName"].'</a><input type="hidden" name="attachment[]" value="' . $row["FileName"] .'" >';
						echo $out;
						?></td>

						<td><?php
						$out = $row["Message"];
						echo '<textarea name="attachment_message[]" row="3" cols="50">'.$out.'</textarea>';
						?></td>
						<td><button type="button" OnClick="RemoveFile(this);" class="btn btn-sm btn-del" value="tr_<?php echo $count;?>">Remove </button> <br></td>
								</tr>

								<?php
							}
						}
						?>
					</tbody>
				  </table>
				  	<input type="hidden" id="fileno" value="<?php echo $count;?>">
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
					<textarea rows="4" cols="100" name="comment"><?php echo $Comments;?>
					</textarea>

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
	todayBtn: "linked",
    })
	$('#due_datepicker').datepicker({

	   format: "dd-mm-yyyy",
	   autoclose: true,
    todayHighlight: true
    });
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
		}else{
		$rfq_ref = "";
	}
	?>
