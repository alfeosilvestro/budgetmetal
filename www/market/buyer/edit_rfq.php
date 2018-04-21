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

$rfq_ref = "";
if(isset($_GET["rfq_ref"])){
  $rfq_ref = $_GET["rfq_ref"];
}

$sql = "SELECT * FROM `t_document` t1 where Status = 1 and C_DocumentType = 6 and t1.DocumentNo = '".$rfq_ref."'";
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $rfq_id = $row["Id"];
      $rfq_ref = $row["DocumentNo"];
      $rfq_statusid = $row["C_RfqStatus"];
      $rfq_userid = $row["M_User_Id"];
      $rfq_createddate = $row["CreatedDate"];
      $rfq_subject = $row["Title"];
      $FName = $row["ContactPersonFName"];
      $LName = $row["ContactPersonLName"];

    }

    $sql = "SELECT t1.* FROM `t_requestforquotation` t1 where t1.Document_Id = ".$rfq_id;
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $FinalClosingDate = $row["FinalClosingDate"];
          if($row["Supplier_Provide_Material"]== "1"){
            $Supplier_Provide_Material = "checked";
          }else{
            $Supplier_Provide_Material =  "";
          }
          if($row["Supplier_Provide_Transport"]== "1"){
            $Supplier_Provide_Transport =  "checked";
          }else{
            $Supplier_Provide_Transport =  "";
          }
          $Remark = $row["Remark"];

        }
      }
    }

    $sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No, t3.Id FROM `m_user` t1  INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$rfq_userid;
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $username = $row["username"];
          $email =  $row["EmailAddress"];
          $company_name = $row["Name"];
          $reg_no = $row["Reg_No"];
          $company_id = $row["Id"];
        }
      }
    }


    ?>
    <div class="row">
      <div class="col-sm-6">
        <h3>
          Edit RFQ
        </h3>
        <div id="notify" class="alert alert-success" style="display:none;">
          <a href="#" class="close" data-dismiss="alert">&times;</a>

          <div class="message"></div>
        </div>
      </div>

      <div class="col-sm-6">
        <div  style="margin-top: 20px; margin-bottom: 10px;">
          <button type="button" id="btnsubmit_rfq_top" class="btn btn-success pull-right">Request for Quotation</button>
          <div class="pull-right">&nbsp;</div>
          <button type="button" class="btn btn-info pull-right" id="btnsave_rfq_top" >Save as Draft</button>
        </div>
      </div>

    </div>

    <form action="#" method="post" id="create_rfq" >
      
    <div class="row">
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">RFQ Info</h3>

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
                <label>RFQ Ref</label>
                <input name="rfq_ref" type="text" readonly class="form-control" value="<?php echo $rfq_ref; ?>" >
                <input name="rfq_id" type="hidden" readonly class="form-control" value="<?php echo $rfq_id; ?>" >
                <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
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
                <label>RFQ Date</label>

                <div class="input-group date col-sm-5">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="rfq_date" class="form-control pull-right" id="rfq_datepicker" value="<?php 	 echo date('d-m-Y', strtotime($rfq_createddate));?>" required>
                </div>
              </div>
              <div class="form-group">
                <label>Project Name/ No.</label>
                <input name="subject" type="text" value="<?php echo $rfq_subject;?>" class="form-control" placeholder="Please enter project name">
              </div>
              <div class="form-group">
                <input type="checkbox" name="chk_material" <?php echo $Supplier_Provide_Material;?>> <label>Supplier to Provide Materials </label><br>
                <input type="checkbox" name="chk_transport" <?php echo $Supplier_Provide_Transport;?>> <label>Supplier to Provide Transport </label>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Status</label>
                <input name="status" type="text" readonly class="form-control"
                value="<?php
                $rfq_status = "";
                $sql = "SELECT t1.Name FROM `c_codetable` t1 where t1.id = ".$rfq_statusid;
                $result = $conn->query($sql);
                if (isset($result)){
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                      $rfq_status = $row["Name"];

                    }
                  }
                }

                echo $rfq_status; ?>">
              </div>
              <div class="form-group">
                <label>Business Registration No.</label>
                <input name="reg_no" type="text" readonly class="form-control"
                value="<?php echo $reg_no; ?>">
              </div>
              <div class="form-group">
                <label>Contact Person Last Name</label>
                <input name="last_name" type="text"  class="form-control" value="<?php echo $LName; ?>" placeholder="Last Name">
              </div>
              <div class="form-group">
                <label>Due Date</label>

                <div class="input-group date col-sm-5">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="due_date" class="form-control pull-right" id="due_datepicker" value="<?php
                  if ($FinalClosingDate != ""){
                    echo date('d-m-Y', strtotime($FinalClosingDate));
                  }

                  ?>">
                </div>
              </div>

              <div class="form-group">
                <label>Message to Supplier</label>
                <textarea name="remark"  class="form-control" value="" placeholder="Please enter Remark"><?php echo $Remark; ?></textarea>
              </div>
            </div>
          </div>
        </div>
        <!-- /.box-body -->
      </div>
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">File Attachments</h3>


        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-lg-8">
                <button type="button" class="btn btn-success" aria-label="Add file" id="add-file-btn">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add file
                </button>

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
              <table class="table table-hover smaller_font_table" id="fileList">
                <thead>
                  <tr>
                    <th style="width:40%">File</th>
                    <th>Description</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $count = 0;
                  $query = "SELECT t2.* FROM t_document t1 Inner Join t_fileattachments t2 on t2.T_Document_Id = t1.Id Where t1.Status = 1 and t2.Status = 1 and C_DocumentType = 6 and t1.Id = ". $rfq_id;
                  $results = $db->pdoQuery($query)->results();
                  if (!empty($results)){

                    foreach ($results as $row) {
                      $count = $count+1;
                      ?>
                      <tr id="tr_<?php echo $count;?>" align="left">


                        <td><?php
                        $out = '<a href="attachment/' . $row["FileName"] .'" target="_blank">'.$row["FileName"].'</a><input type="hidden" name="attachment[]" value="' . $row["FileName"] .'" >';
                        echo $out;
                        $out = $row["Subject"];
                        echo '<input type="hidden" name="attachment_subject[]" value="'.$out.'" >';
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
          <h3 class="box-title">Search Services</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-sm-3">
              <div class="form-group">
                <label>Service Level 1</label>
                <select id="servicecategory1" class="form-control" size="10" style="height:186px;" >

                </select>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label>Service Level 2</label>
                <select id="servicecategory2" class="form-control" size="10"  style="height:186px;" >

                </select>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label>Service Level 3</label>
                <select id="servicecategory3" class="form-control" size="10"  style="height:186px;" >

                </select>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label>Service Level 4</label>
                <select id="servicecategory4" class="form-control" size="10"  style="height:186px;" >

                </select>
              </div>
            </div>
            <!-- <div class="col-sm-12">
              <div class="form-group">
                <label>Service Level 5</label>
                <select id="services" class="form-control" size="10"  style="height:120px;" >

                </select>
              </div>
            </div> -->

          </div>
          <div class="row">
            <div class="box-body">
              <input type="hidden" id="metal_type">

              <button type="button" id="add_service" class="btn btn-sm btn-info pull-right" value="  + Add Service">
                + Add Service
              </button>
            </div>
          </div>
        </div>
      </div>


      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Selected Services</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-sm-12">
              <input type="hidden" id="serviceno" value="0">
              <table class="table table-hover smaller_font_table" id="servicelist">
                <thead>
                  <tr>
                    <th><input type="hidden"></th>
                    <th>Level 1</th>
                    <th>Level 2</th>
                    <th>Level 3</th>
                    <th>Level 4</th>
                    <th>Level 5</th>
                    <th width="10%">&nbsp;</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $query = "SELECT t1.Id, t1.`M_Service_Id`, t3.ServiceName, t3.C_Metal_Type, t3.M_Parent_Services_Id FROM `td_requiredservices` t1 INNER JOIN m_services t3 on t3.Id = t1.M_Service_Id Where t1.Status= 1 and `T_RFQ_Id` = ".$rfq_id;
                  $results = $db->pdoQuery($query)->results();
                  if (!empty($results)){
                    $count = 0;
                    foreach ($results as $row) {
                      $count = $count+1;

                      ?>
                      <tr id="trservice_<?php echo $count;?>" align="left" >
                        <td><input type="hidden" name="serviceid[]" class="serviceid" value="<?php echo $row["M_Service_Id"]; ?>" readonly><input type="hidden" name="service[]" class="serviceid" value="<?php echo $row["ServiceName"]; ?>" readonly></td>
                        <?php
                        $parent_id =$row["M_Service_Id"];
                        $c = 0;
                        $servicename = "";
                        $a=array();
                        $a_blank=array();
                        for($i=1;$i<=5;$i++){
                          $q = "SELECT t3.ServiceName, t3.M_Parent_Services_Id FROM  m_services t3 Where `Id` = ".$parent_id." Limit 1";
                          if(null !== $db->pdoQuery($q)){
                            $r = $db->pdoQuery($q)->results();
                            if (!empty($r)){
                              foreach ($r as $ro) {
                                if($ro["M_Parent_Services_Id"] == ""){
                                  $parent_id =  0;
                                }else{
                                  $parent_id =  $ro["M_Parent_Services_Id"];
                                }
                                $servicename = $ro["ServiceName"];
                              }
                            }else{
                              $servicename = "";
                            }

                          }
                          if($servicename != ""){
                            array_push($a,$servicename);

                          }else{
                            array_push($a_blank,$servicename);
                          }


                        }
                        $a_reversed = array();
                        $a_reversed = array_reverse($a);
                        foreach ($a_reversed as $value) {
                          echo "<td>".$value."</td>";
                        }
                        foreach ($a_blank as $value) {
                          echo "<td>".$value."</td>";
                        }

                        ?>

                        <td ></td>
                        <td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_<?php echo $count;?>">Remove</button></td>

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


      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Search Suppliers</h3>

          <div class="box-tools pull-right">
            <button type="button" id="btn_search_suppliers" class="btn btn-sm btn-search" value="Search Suppliers">
              <i class="fa fa-refresh"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="col-md-12">
            <!-- Custom Tabs -->
            <div class="nav-tabs-custom">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_searchsuppliers" data-toggle="tab" aria-expanded="false">Search Suppliers</a></li>
                <li class=""><a href="#tab_selectedsuppliers" data-toggle="tab" aria-expanded="true">Selected Suppliers &nbsp;<span id="selectedRCount" class="label-danger"><span></a></li>

                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="tab_searchsuppliers">
                    <style>
                    #overlay {
                      position: absolute;
                      display: none;
                      width: 100%;
                      height: 99%;
                      top: 1%;
                      left: 0;
                      right: 0;
                      bottom: 0;
                      background-color: rgba(0,0,0,0.9);
                      z-index: 2;
                      cursor: pointer;
                    }
                    </style>
                    <div id="overlay">
                      <div class="text-center">
                        <br><br><br>
                        <span style="color:white;" id="addMoreSupplier"><b>You have reached the limit of 5 verified suppliers for this RFQ.
                          <br><button class="btn btn-warning btn-xs" type="button" name="button" OnClick="addMoreSelectedSupplier();" >Click Here</button> to allow Budget Metal to suggest another 5 suppliers for you. </b> </span>
                          </div>

                      </div>

                      <table class="table table-hover smaller_font_table" id="search_suppliers">
                        <thead>
                          <tr>
                            <th>Company Name</th>
                            <th>Address</th>
                            <th>Tags</th>
                            <th>Status</th>
                            <th>&nbsp;</th>
                          </tr>
                        </thead>
                        <tbody>

                        </tbody>
                      </table>
                      <div class="text-center"> <button id="btnShowMore" type="button" name="button" class="btn btn-info">Show More Supplier</button> </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="tab_selectedsuppliers">
                      <table class="table table-hover smaller_font_table"  id="selected_suppliers">
                        <thead>
                          <tr>
                            <th>Company Name</th>
                            <th>Address</th>
                            <th>Tags</th>
                            <th>Status</th>
                            <th>&nbsp;</th>
                          </tr>

                        </thead>
                        <tbody>
                          <?php
                          $sql = "SELECT * FROM `m_company`  WHERE `Id` IN (SELECT M_Company_Id FROM t_targetedsuppliers  Where T_Document_Id = ". $rfq_id.")";
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
                                <td>".$row["Name"]."(Registration No. ".$row["Reg_No"].")<input type='hidden' value='".$row["Id"]."' name='selected_supplier_id[]'> <input type='hidden' value='0' name='search_supplier_id[]'></td>
                                <td>".$row["Address"]."</td>
                                <td>".$tags."</td>
                                <td><span class='label label-success'>Verified</span></td>
                                <td>
                                <button type='button' value='".$row["Id"]."' class='btn btn-sm btn-info' Onclick='ViewProfile(this);'>              View Profile       </button>

                                <button type='button' value='trsupplier_".$row["Id"]."' class='btn btn-sm btn-info' Onclick='RemoveFromList(this);'>Remove from Selected Supplier List       </button>
                                </td>
                                </tr>";
                              }
                            }
                          }
                          ?>



                        </tbody>
                      </table>
                    </div>
                    <!-- /.tab-pane -->
                  </div>
                  <!-- /.tab-content -->
                </div>
                <!-- nav-tabs-custom -->
              </div>


            </div>
          </div>

          <div class="row">

            <div class="col-sm-12">
            <div  style="margin-top: 20px; margin-bottom: 10px;">
              <button type="button" id="btnsubmit_rfq_bot" class="btn btn-success pull-right">Request for Quotation</button>
              <div class="pull-right">&nbsp;</div>
              <button type="button" class="btn btn-info pull-right" id="btnsave_rfq_bot" >Save as Draft</button>
            </div>
              <!-- <div class="btn-group pull-right">
                <button type="button" class="btn btn-success" id="btnsave_rfq_bot" >Save as Draft</button>

                <button type="button" id="btnsubmit_rfq_bot" class="btn btn-warning">Submit</button>
                <a href="index.php?rdp=list_rfq" class="btn btn-default">Cancel</a>
              </div> -->
            </div>
          </div>
        </form>
        <?php
      }
    }
    ?>
    <script>

    $(function () {
      //Date picker
      $('#rfq_datepicker').datepicker({
        format: "dd-mm-yyyy",
        autoclose: true,
        todayHighlight: true,
        startDate: "today",
      }).on('changeDate', function(selected) {
        var minDate = new Date(selected.date.valueOf());
        $('#due_datepicker').datepicker('setStartDate', minDate);
      });

      var rfq_date = $("#rfq_datepicker").val();
      var res = rfq_date.split("-");
      var tmp = res[1] + "-" + res[0] + "-" + res[2];

      $('#due_datepicker').datepicker({
        startDate : "today",
        format: "dd-mm-yyyy",
        autoclose: true,
        todayHighlight: true,
      });
      searchsupplier();
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

      GetSelectedSupplierCount();

    });

    function GetSelectedSupplierCount(){
      var rowCount = $('#selected_suppliers tbody tr').length;
      if(rowCount==0){
        rowCount = "";
        $("#selectedRCount").removeClass("badge");
      }
      else{
        if(rowCount==5){
          document.getElementById("overlay").style.display = "block";
          $("#addMoreSupplier").show();
        }else if(rowCount<5){
          document.getElementById("overlay").style.display = "none";
          $("#addMoreSupplier").show();
        }else{
          document.getElementById("overlay").style.display = "block";
          $("#addMoreSupplier").hide();
        }
        $("#selectedRCount").addClass("badge");
      }
      $("#selectedRCount").text(rowCount);
    }

    function RemoveFile(objButton){
      var trid = objButton.value;
      row = $('#' + trid);
      row.remove();
    }


    $(document).ready(function () {
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {

        if (this.readyState == 4 && this.status == 200) {
          $("#servicecategory1").find('option').remove().end();
          $("#servicecategory2").find('option').remove().end();
          $("#servicecategory3").find('option').remove().end();
          $("#servicecategory4").find('option').remove().end();
          $("#services").find('option').remove().end();
          $("#servicecategory1").append(this.responseText);

        }
      };
      xmlhttp.open("GET","market.php?function=servicecategory1",true);
      xmlhttp.send();
    });

    $('select[id=servicecategory1]').change(function(e){
      var id = $('select[id=servicecategory1]').val();
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#servicecategory2").find('option').remove().end();
          $("#servicecategory3").find('option').remove().end();
          $("#servicecategory4").find('option').remove().end();
          $("#services").find('option').remove().end();
          $("#servicecategory2").append(this.responseText);

        }
      };

      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=servicecategory2",true);
      xmlhttp.send();

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }


      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var valueuom =  this.responseText;
          var array = valueuom.split(',');
          $("#metal_type").val(array[6]);
        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=services",true);
      xmlhttp.send();
    });

    $('select[id=servicecategory2]').change(function(e){
      var id = $('select[id=servicecategory2]').val();
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#servicecategory3").find('option').remove().end();
          $("#servicecategory4").find('option').remove().end();
          $("#services").find('option').remove().end();
          $("#servicecategory3").append(this.responseText);

        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=servicecategory2",true);
      xmlhttp.send();

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }


      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var valueuom =  this.responseText;
          var array = valueuom.split(',');
          $("#metal_type").val(array[6]);
        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=services",true);
      xmlhttp.send();

    });

    $('select[id=servicecategory3]').change(function(e){
      var id = $('select[id=servicecategory3]').val();
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#servicecategory4").find('option').remove().end();
          $("#services").find('option').remove().end();
          $("#servicecategory4").append(this.responseText);

        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=servicecategory2",true);
      xmlhttp.send();

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }


      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var valueuom =  this.responseText;
          var array = valueuom.split(',');
          $("#metal_type").val(array[6]);
        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=services",true);
      xmlhttp.send();

    });

    $('select[id=servicecategory4]').change(function(e){
      var id = $('select[id=servicecategory4]').val();
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#services").find('option').remove().end();
          $("#services").append(this.responseText);

        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=servicecategory2",true);
      xmlhttp.send();

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }


      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var valueuom =  this.responseText;
          var array = valueuom.split(',');
          $("#metal_type").val(array[6]);
        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=services",true);
      xmlhttp.send();

    });

    $('select[id=services]').change(function(e){
      var id = $('select[id=services]').val();
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }


      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var valueuom =  this.responseText;
          var array = valueuom.split(',');
          $("#metal_type").val(array[6]);
        }
      };
      xmlhttp.open("GET","market.php?servicecategory1id="+id+"&function=services",true);
      xmlhttp.send();
    });


    $('button[id=add_service]').click(function(){
      var servicecategory1id = $('select[id=servicecategory1]').val();
      var servicecategory1value = $('select[id=servicecategory1] option:selected').text();
      var servicecategory2id = $('select[id=servicecategory2]').val();
      var servicecategory2value = $('select[id=servicecategory2] option:selected').text();
      var servicecategory3id = $('select[id=servicecategory3]').val();
      var servicecategory3value = $('select[id=servicecategory3] option:selected').text();
      var servicecategory4id = $('select[id=servicecategory4]').val();
      var servicecategory4value = $('select[id=servicecategory4] option:selected').text();
      var serviceid = $('select[id=services]').val();
      var servicevalue = $('select[id=services] option:selected').text();

      var serviceno = $("input[id=serviceno]").val();

      if(servicevalue == ""){
        if(servicecategory4value == ""){
          if(servicecategory3value == ""){
            if(servicecategory2value == ""){
              if(servicecategory1value == ""){
                serviceno = parseInt(serviceno)+1;
                $("input[id=serviceno]").val(serviceno);

                $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory1id+'" readonly><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory1id+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
              }else{
                alert("Select service!");
              }
            }else{
              serviceno = parseInt(serviceno)+1;
              $("input[id=serviceno]").val(serviceno);

              $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory2id+'" readonly><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
            }
          }else{
            serviceno = parseInt(serviceno)+1;
            $("input[id=serviceno]").val(serviceno);

            $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory3id+'" readonly><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
          }
        }else{
          serviceno = parseInt(serviceno)+1;
          $("input[id=serviceno]").val(serviceno);

          $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory4id+'" readonly><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
        }
      }else{
        serviceno = parseInt(serviceno)+1;
        $("input[id=serviceno]").val(serviceno);

        $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="serviceid[]" class="serviceid" value="'+serviceid+'" readonly><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');


      }

      searchsupplier();
    });

    function RemoveService(objButton){
      var trid = objButton.value;
      row = $('#' + trid);
      row.remove();


      searchsupplier();
    }

    $('button[id=btn_search_suppliers]').click(function(){
      var table_suppliers = document.getElementById('selected_suppliers');

      var rowLength_supplier = table_suppliers.rows.length;
      var selected_suppliers_id = "0";

      for(var i=1; i<rowLength_supplier; i+=1){
        var row = table_suppliers.rows[i];
        var selected_suppliers = row.getElementsByTagName("input")[0];

        selected_suppliers_id = selected_suppliers_id + "," +selected_suppliers.value;
      }

      var table = document.getElementById('servicelist');

      var rowLength = table.rows.length;
      var servicesid= "0";
      for(var i=1; i<rowLength; i+=1){
        var row = table.rows[i];
        var serviceid = row.getElementsByTagName("input")[0];
        servicesid = servicesid + "," +serviceid.value;
      }

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#search_suppliers tbody").find('tr').remove().end();
          $("#search_suppliers tbody").append(this.responseText);
        }
      };
      xmlhttp.open("GET","market.php?servicesid="+servicesid+"&function=searchsupplierwithservicesid&selected_suppliers_id="+selected_suppliers_id+ "&user_id=<?php echo $company_id; ?>&rowCount=0",true);
      xmlhttp.send();

    });

    $('button[id=btnShowMore]').click(function(){
      searchsupplier_loadmore();

    });

    function searchsupplier(){

      var table_suppliers = document.getElementById('selected_suppliers');

      var rowLength_supplier = table_suppliers.rows.length;
      var selected_suppliers_id = "0";
      for(var i=1; i<rowLength_supplier; i+=1){
        var row = table_suppliers.rows[i];
        var selected_suppliers = row.getElementsByTagName("input")[0];

        selected_suppliers_id = selected_suppliers_id + "," +selected_suppliers.value;
      }


      var table = document.getElementById('servicelist');

      var rowLength = table.rows.length;
      var servicesid= "0";
      for(var i=1; i<rowLength; i+=1){
        var row = table.rows[i];
        var serviceid = row.getElementsByTagName("input")[0];
        servicesid = servicesid + "," +serviceid.value;
      }
    $("#search_suppliers tbody").find('tr').remove().end();
    var rowCount = $('#search_suppliers tbody tr').length;
      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          $("#search_suppliers tbody").append(this.responseText);
          rowCount = $('#search_suppliers tbody tr').length;
          // if(rowCount > 0){
          //   var x = rowCount;
          //   var y = 20;
          //   var z = x % y;
          //   if(z == 0){
          //     $('#btnShowMore').show();
          //   }else{
          //     $('#btnShowMore').hide();
          //   }
          // }else{
          //    $('#btnShowMore').hide();
          // }
          if(this.responseText == ""){
            $('#btnShowMore').hide();
          }else{
            $('#btnShowMore').show();
          }
        }
      };
      xmlhttp.open("GET","market.php?servicesid="+servicesid+"&function=searchsupplierwithservicesid&selected_suppliers_id="+selected_suppliers_id + "&user_id=<?php echo $company_id; ?>&rowCount=0",true);
      xmlhttp.send();
    }

    function searchsupplier_loadmore(){
      var table_suppliers = document.getElementById('selected_suppliers');

      var rowLength_supplier = table_suppliers.rows.length;
      var selected_suppliers_id = "0";
      for(var i=1; i<rowLength_supplier; i+=1){
        var row = table_suppliers.rows[i];
        var selected_suppliers = row.getElementsByTagName("input")[0];

        selected_suppliers_id = selected_suppliers_id + "," +selected_suppliers.value;
      }

      var rowCount = $('#search_suppliers tbody tr').length;
      var table = document.getElementById('servicelist');

      var rowLength = table.rows.length;
      var servicesid= "0";
      for(var i=1; i<rowLength; i+=1){
        var row = table.rows[i];
        var serviceid = row.getElementsByTagName("input")[0];
        servicesid = servicesid + "," +serviceid.value;
      }

      if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          //$("#search_suppliers tbody").find('tr').remove().end();
          //rowCount = $('#search_suppliers tbody tr').length;
          $("#search_suppliers tbody").append(this.responseText);
          rowCount = $('#search_suppliers tbody tr').length;
          if(rowCount > 0){
            var x = rowCount;
            var y = 20;
            var z = x % y;
            if(z == 0){
              $('#btnShowMore').show();
            }else{
              $('#btnShowMore').hide();
            }

          }else{
             $('#btnShowMore').hide();
          }
          if(this.responseText == ""){
            $('#btnShowMore').hide();
          }
        }
      };
      xmlhttp.open("GET","market.php?servicesid="+servicesid+"&function=searchsupplierwithservicesid&selected_suppliers_id="+selected_suppliers_id + "&user_id=<?php echo $company_id; ?>&rowCount="+rowCount,true);
      xmlhttp.send();


    }

    function AddtoRequestList(objButton){
      var trid = objButton.value;
      row = $('#' + trid);
      $("#selected_suppliers tbody").append(row);
      objButton.innerHTML = "Remove from Selected Supplier List";
      objButton.setAttribute( "onClick", "RemoveFromList(this);" );
      $('#' + trid + ' input[name="selected_supplier_id[]"]').val($('#' + trid + ' input[name="search_supplier_id[]"]').val());

      GetSelectedSupplierCount();
    }

    function RemoveFromList(objButton){
      var trid = objButton.value;
      row = $('#' + trid);
      $("#search_suppliers tbody").append(row);
      objButton.innerHTML = "Add to Selected Supplier List";
      objButton.setAttribute( "onClick", "AddtoRequestList(this);" );
      $('#' + trid + ' input[name="selected_supplier_id[]"]').val("0");

      GetSelectedSupplierCount();
    }

    function ViewProfile(objButton){
      var company_id = objButton.value;
      window.open(
        'index.php?rdp=company_profile&companyid='+company_id,
        '_blank'
      );
    }

    $("#btnsave_rfq_top").click(function (e) {

      e.preventDefault();
      var rowCount = $('#selected_suppliers tbody tr').length;
      if(rowCount==0){
        alert("Please invite at least one supplier");
      }
      else{
        SaveRFQ();
      }
      //  SaveRFQ();

    });

    $("#btnsubmit_rfq_top").click(function (e) {

      e.preventDefault();
      var rowCount = $('#selected_suppliers tbody tr').length;
      if(rowCount==0){
        alert("Please invite at least one supplier");
      }
      else{
        SubmitRFQ();
      }
      //SubmitRFQ();

    });

    $("#btnsave_rfq_bot").click(function (e) {

      e.preventDefault();
      var rowCount = $('#selected_suppliers tbody tr').length;
      if(rowCount==0){
        alert("Please invite at least one supplier");
      }
      else{
        SaveRFQ();
      }
      //SaveRFQ();

    });

    $("#btnsubmit_rfq_bot").click(function (e) {

      e.preventDefault();
      var rowCount = $('#selected_suppliers tbody tr').length;
      if(rowCount==0){
        alert("Please invite at least one supplier");
      }
      else{
        SubmitRFQ();
      }
      //SubmitRFQ();

    });

    function SaveRFQ() {
      $.ajax({
        url: 'market.php?function=editrfq&act=draft',
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

    function SubmitRFQ() {

      $.ajax({

        url: 'market.php?function=editrfq&act=submit',
        type: 'GET',
        data: $("#create_rfq").serialize(),
        dataType: 'json',
        success: function (data) {
          window.location.href = "index.php?rdp=list_rfq";
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

    function addMoreSelectedSupplier(){
      var rowCount = $('#search_suppliers tbody tr').length;
      var i = 1;
      var j = 0;
      var tr;
      var objButton;
      if(rowCount > 0){
        j = rowCount;
        var rowid = 1;
        var items = [];
        for (i = 1 ; i <= j; i++) {
          tr = document.getElementById("search_suppliers").rows[i];
          var tdStatus = tr.getElementsByTagName("td")[3].innerText;
          if(tdStatus == "Unverified"){
            items.push(tr);
          }

          // if(i<=5){
          //   var tdStatus = tr.getElementsByTagName("td")[3].innerText;
          //   if(tdStatus == "Unverified"){
          //     objButton = tr.getElementsByTagName("button")[1];
          //     var trid = objButton.value;
          //     //row = $('#' + trid);
          //     //$("#selected_suppliers tbody").append(row);
          //     $("#selected_suppliers tbody").append(tr);
          //     objButton.innerHTML = "Remove from Selected Supplier List";
          //     objButton.setAttribute( "onClick", "RemoveFromList(this);" );
          //     $('#' + trid + ' input[name="selected_supplier_id[]"]').val($('#' + trid + ' input[name="search_supplier_id[]"]').val());
          //
          //   }
          //   else{
          //     rowid = rowid + 1;
          //   }
          // }

        }
        //alert(items.length);
        var loop_num = 5;
        if(items.length <  5){
          loop_num = items.length;
        }
        var lopp_start = 0;
        var rdm_index = 0;
        var tr_rdm;
          for (lopp_start = 1; lopp_start <= loop_num; lopp_start++) {
            var rdm_index = Math.floor(Math.random()*items.length);
            tr_rdm = items[rdm_index];
            objButton = tr_rdm.getElementsByTagName("button")[1];
            var trid = objButton.value;
            //row = $('#' + trid);
            //$("#selected_suppliers tbody").append(row);
            $("#selected_suppliers tbody").append(tr_rdm);
            objButton.innerHTML = "Remove from Selected Supplier List";
            objButton.setAttribute( "onClick", "RemoveFromList(this);" );
            $('#' + trid + ' input[name="selected_supplier_id[]"]').val($('#' + trid + ' input[name="search_supplier_id[]"]').val());
            items.splice(rdm_index, 1);
            //alert(items.length);
          }
      }

      GetSelectedSupplierCount();
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

        // r.on('pause', function(){
        //     $('#pause-upload-btn').find('.glyphicon').removeClass('glyphicon-pause').addClass('glyphicon-play');
        // });

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
