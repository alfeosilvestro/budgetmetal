
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


$sql = "SELECT t1.username, t1.EmailAddress, t3.Name, t3.Reg_No FROM `m_user` t1 INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$userid;
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

$doc_id = 0;
$rfq_ref = "";



$status = "Draft";
?>
<div class="row">
  <div class="col-sm-12">
    <h3>
      Create RFQ
    </h3>
    <div id="notify" class="alert alert-success" style="display:none;">
      <a href="#" class="close" data-dismiss="alert">&times;</a>

      <div class="message"></div>
    </div>
  </div>
</div>

<form action="#" method="post" id="create_rfq" >
  <div class="row">

    <div class="col-sm-12">
      <div class="btn-group pull-right">
        <button type="button" class="btn btn-success" id="btnsave_rfq_top" >Save as Draft</button>

        <button type="button" id="btnsubmit_rfq_top" class="btn btn-warning">Submit</button>
      </div>
    </div>
  </div>
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
            <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
          </div>
          <div class="form-group">
            <label>Company Name</label>
            <input name="company_name" type="text" readonly class="form-control"
            value="<?php echo $company_name; ?>">
          </div>
          <div class="form-group">
            <label>Contact Person First Name</label>
            <input name="first_name" type="text" class="form-control" value="<?php echo $username; ?>" placeholder="First Name">
          </div>
          <div class="form-group">
            <label>RFQ Date</label>

            <div class="input-group date col-sm-5">
              <div class="input-group-addon">
                <i class="fa fa-calendar"></i>
              </div>
              <input type="text" name="rfq_date" class="form-control pull-right" id="rfq_datepicker" value="<?php echo date("d-m-Y");?>" required>
            </div>
          </div>
          <div class="form-group">
            <label>Project Name/ No.</label>
            <input name="subject" type="text" class="form-control" placeholder="Please enter project name">
          </div>
          <div class="form-group">
            <input type="checkbox" name="chk_material" > <label>Supplier Provide Materials </label><br>
            <input type="checkbox" name="chk_transport"> <label>Supplier Provide Transport </label>
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
            <label>Due Date</label>

            <div class="input-group date col-sm-5">
              <div class="input-group-addon">
                <i class="fa fa-calendar"></i>
              </div>
              <input type="text" name="due_date" class="form-control pull-right" id="due_datepicker" value="<?php echo date("d-m-Y", strtotime("+7 days",time()));?>">
            </div>
          </div>

          <div class="form-group">
            <label>Message to Supplier</label>
            <textarea name="remark"  class="form-control" placeholder="Please enter Remark"></textarea>
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
        <div class="col-sm-6">
          <input type="hidden" id="fileno" value="0">
          <input id="rfq_upload" type="file" name="rfq_upload" />
          <div id="progress-div"><div id="progress-bar"></div></div>
          <div id="loader-icon" style="display:none;"><img src="LoaderIcon.gif" /></div>
          <br>
          <button type="button" id="addfilelist" class="btn btn-sm btn-info" value="+ Attach file">
            + Add File Attachment
          </button>

        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-sm-9">
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
      <h3 class="box-title">Search Services</h3>

      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
        </button>
      </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="row">
        <div class="col-sm-2">
          <div class="form-group">
            <label>Service Level 1</label>
            <select id="servicecategory1" class="form-control" size="10" style="word-wrap:break-word;width:100%;height:186px;">

            </select>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="form-group">
            <label>Service Level 2</label>
            <select id="servicecategory2" class="form-control" size="10" style="word-wrap:break-word;width:100%;height:186px;">

            </select>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="form-group">
            <label>Service Level 3</label>
            <select id="servicecategory3" class="form-control" size="10" style="word-wrap:break-word;width:100%;height:186px;">

            </select>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="form-group">
            <label>Service Level 4</label>
            <select id="servicecategory4" class="form-control" size="10" style="word-wrap:break-word;width:100%;height:186px;">
            </select>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="form-group">
            <label>Service Level 5</label>
            <select id="services" class="form-control" size="10" style="word-wrap:break-word;width:100%;height:186px;">

            </select>
          </div>
        </div>

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
          <table class="table table-hover" id="servicelist">
            <thead>
              <tr>
                <th><input type="hidden"></th>
                <th>Level 1</th>
                <th>Level 2</th>
                <th>Level 3</th>
                <th>Level 4</th>
                <th>Level 5</th>
                <th width="10%">Metal Type</th>
                <th></th>
              </tr>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
        <!--<div class="col-sm-12">
        <h4>Parameters</h4>
      </div>
      <div class="col-sm-12">
      <table class="table table-hover">
      <tr>
      <th>Param</th>
      <th>Value</th>
      <th>UOM</th>
    </tr>
    <tr>
    <td>
    Thickness
  </td>
  <td>
  <input type="text" id="show_thickness_value" name="show_thickness_value" readonly>
</td>
<td>
<input type="text" id="show_thickness_uom" name="show_thickness_uom" readonly>
</td>
</tr>
<tr>
<td>
Length
</td>
<td>
<input type="text" id="show_length_value" name="show_length_value" readonly>
</td>
<td>
<input type="text" id="show_length_uom" name="show_length_uom" readonly>
</td>
</tr>
<tr>
<td>
Width
</td>
<td>
<input type="text" id="show_width_value" name="show_width_value" readonly>
</td>
<td>
<input type="text" id="show_width_uom" name="show_width_uom" readonly>
</td>
</tr>
</table>
</div>-->
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
                height: 90%;
                top: 10%;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: rgba(0,0,0,0.5);
                z-index: 2;
                cursor: pointer;
              }
              </style>
              <div id="overlay">
                <div class="text-center">
                  <br><br><br>
                  <span class="text-white" id="addMoreSupplier">You have reached the limit of 5 verified suppliers for this RFQ.
                    <button class="btn btn-danger btn-sm" type="button" name="button" OnClick="addMoreSelectedSupplier();" >Click Here</button> to allow Budget Metal to suggest another 5 suppliers for you.  </span>
                    </div>

              </div>
              <table class="table table-hover" id="search_suppliers">
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
            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane" id="tab_selectedsuppliers">
              <table class="table table-hover"  id="selected_suppliers">
                <thead>
                  <tr>
                    <th>Company Name</th>
                    <th>Address</th>
                    <th>Tags</th>
                    <th>Verified</th>
                    <th>&nbsp;</th>
                  </tr>

                </thead>
                <tbody>




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
      <div class="btn-group pull-right">
        <button type="button" class="btn btn-success" id="btnsave_rfq_bot" >Save as Draft</button>

        <button type="button" id="btnsubmit_rfq_bot" class="btn btn-warning">Submit</button>
      </div>
    </div>
  </div>
</form>

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
    startDate : new Date(tmp),
    format: "dd-mm-yyyy",
    autoclose: true,
    todayHighlight: true,
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
    beforeSubmit: function() {
      $("#progress-bar").width('0%');
    },
    uploadProgress: function (event, position, total, percentComplete){
      $("#progress-bar").width(percentComplete + '%');
      $("#progress-bar").html('<div id="progress-status">' + percentComplete +' %</div>')
    },
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

            $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory1id+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
          }else{
            alert("Select service!");
          }
        }else{
          serviceno = parseInt(serviceno)+1;
          $("input[id=serviceno]").val(serviceno);

          $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory2id+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
        }
      }else{
        serviceno = parseInt(serviceno)+1;
        $("input[id=serviceno]").val(serviceno);

        $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory3id+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
      }
    }else{
      serviceno = parseInt(serviceno)+1;
      $("input[id=serviceno]").val(serviceno);

      $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+servicecategory4id+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
    }
  }else{
    serviceno = parseInt(serviceno)+1;
    $("input[id=serviceno]").val(serviceno);

    $("#servicelist tbody").append('<tr id="trservice_'+serviceno+'" align="left"><td><input type="hidden" name="chk[]" value="'+serviceno+'" > </td>	<td>'+servicecategory1value+'<input type="hidden" name="cat1[]" value="'+servicecategory1value+'" readonly></td>			 <td>'+servicecategory2value+'<input type="hidden" name="cat2[]" value="'+servicecategory2value+'" readonly></td>		<td>'+servicecategory3value+'<input type="hidden" name="cat3[]" value="'+servicecategory3value+'" readonly></td>	<td>'+servicecategory4value+'<input type="hidden" name="cat4[]" value="'+servicecategory4value+'" readonly></td>	<td>'+servicevalue+'<input type="hidden" name="serviceid[]" class="serviceid" value="'+serviceid+'" readonly><input type="hidden" name="service[]" value="'+servicevalue+'" readonly></td>			<td>'+ $("input[id=metal_type]").val() +'<input type="hidden" name="metaltype[]" value="'+ $("input[id=metal_type]").val() +'" readonly></td>	<td><button type="button" OnClick="RemoveService(this);" class="btn btn-sm btn-del" value="trservice_'+serviceno+'">Remove </button></td></tr>');
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

  searchsupplier();

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
    var serviceid = row.getElementsByTagName("input")[5];

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
  xmlhttp.open("GET","market.php?servicesid="+servicesid+"&function=searchsupplierwithservicesid&selected_suppliers_id="+selected_suppliers_id,true);
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

function GetSelectedSupplierCount(){
  var rowCount = $('#selected_suppliers tbody tr').length;
  if(rowCount==0){
    rowCount = "";
    $("span").removeClass("badge");
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
    $("span").addClass("badge");
  }
  $("#selectedRCount").text(rowCount);
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

});

function SaveRFQ() {

  $.ajax({

    url: 'market.php?function=saverfq&act=draft',
    type: 'GET',
    data: $("#create_rfq").serialize(),
    dataType: 'json',
    success: function (data) {
      window.location.href = "index.php?rdp=list_rfq";
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

    url: 'market.php?function=saverfq&act=submit',
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
    if(rowCount < 5)
    {
      j = rowCount;
    }else{
      j=5;
    }
    for (i = 1; i <= j; i++) {
      tr = document.getElementById("search_suppliers").rows[1];
      objButton = tr.getElementsByTagName("button")[1];
      var trid = objButton.value;
      //row = $('#' + trid);
      //$("#selected_suppliers tbody").append(row);
      $("#selected_suppliers tbody").append(tr);
      objButton.innerHTML = "Remove from Selected Supplier List";
      objButton.setAttribute( "onClick", "RemoveFromList(this);" );
      $('#' + trid + ' input[name="selected_supplier_id[]"]').val($('#' + trid + ' input[name="search_supplier_id[]"]').val());
    }
  }

  GetSelectedSupplierCount();
}
</script>
