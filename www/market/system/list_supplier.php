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
$companyid = $_SESSION['M_Company_Id'];
$sql = "SELECT * From m_company  where id = ".$companyid;
$result = $conn->query($sql);
if (isset($result)){
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $company_name = $row["Name"];
      $reg_no = $row["Reg_No"];
      $Address = $row["Address"];
      $About = $row["About"];
      $supplierRating= $row["SupplierAvgRating"];
    }
  }
}
?>
<div class="row">
  <div class="col-sm-12">
    <h3>
      Supplier List
    </h3>
    <div id="notify" class="alert alert-success" style="display:none;">
      <a href="#" class="close" data-dismiss="alert">&times;</a>

      <div class="message"></div>
    </div>
  </div>
</div>

  <!-- /.box-header -->
  <div class="row">
    <div class="col-md-3">
      <div class="box box-info">
        <div class="row" style="padding:5px;">
          <div class="col-md-12">
            <h5>Name</h5>
            <input type="text" name="sName" value="" id="sName" class="form-control">
          </div>
          <div class="col-md-12">
            <h5>Tags</h5>
            <select class="form-control select2" multiple="multiple"
                style="width: 100%;"
                data-bind="value: tags, valueUpdate: 'blur'" name="tagList[]" id="tagList">
                <?php
                $sql2 = "SELECT * FROM `c_tags` where Status = 1 Order by Seq";
                $result2 = $conn->query($sql2);
                if (isset($result2)){
                  if ($result2->num_rows > 0) {
                    while($row2 = $result2->fetch_assoc()) {
                      $status = "";
                      if($row2["Selectable"] == "0"){
                        $status = "disabled";
                      }
                      echo "<option value='". $row2["Id"] ."' ".$status.">" . $row2["TagName"] ;
                      echo "</option>";
                    }
                  }
                }
                ?>


            </select>
          </div>
          <div class="col-md-12">
            <h5>Service</h5>
            <div id="treeview-checkbox-demo">
              <ul>
                <?php
                $sql = "SELECT * FROM `m_services` where Status = 1 and M_Parent_Services_Id is null  ";
                $result = $conn->query($sql);
                if (isset($result)){
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                      echo "<li data-value='". $row["Id"] ."'>&nbsp;" . $row["ServiceName"] ;
                      $servicecategory1id = $row["Id"];
                      $sql1 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id ;
                      $result1 = $conn->query($sql1);
                      if (isset($result1)){
                        if ($result1->num_rows > 0) {
                          echo "<ul>";
                          // output data of each row
                          while($row1 = $result1->fetch_assoc()) {
                            echo "<li data-value='". $row1["Id"] ."'>&nbsp;" . $row1["ServiceName"] ;
                            $servicecategory1id1 = $row1["Id"];
                            $sql2 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id1 ;
                            $result2 = $conn->query($sql2);
                            if (isset($result2)){
                              if ($result2->num_rows > 0) {
                                echo "<ul>";
                                // output data of each row
                                while($row2 = $result2->fetch_assoc()) {
                                  echo "<li data-value='". $row2["Id"] ."'>&nbsp;" . $row2["ServiceName"] ;
                                  $servicecategory1id2 = $row2["Id"];
                                  $sql3 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id2 ;
                                  $result3 = $conn->query($sql3);
                                  if (isset($result3)){
                                    if ($result3->num_rows > 0) {
                                      echo "<ul>";
                                      // output data of each row
                                      while($row3 = $result3->fetch_assoc()) {
                                        echo "<li data-value='". $row3["Id"] ."'>&nbsp;" . $row3["ServiceName"] ;
                                        $servicecategory1id3 = $row3["Id"];
                                        $sql4 = "SELECT * FROM `m_services` where Status = 1 and  M_Parent_Services_Id = ".$servicecategory1id3 ;
                                        $result4 = $conn->query($sql4);
                                        if (isset($result4)){
                                          if ($result4->num_rows > 0) {
                                            echo "<ul>";
                                            // output data of each row
                                            while($row4 = $result4->fetch_assoc()) {
                                              echo "<li data-value='". $row4["Id"] ."'>&nbsp;" . $row4["ServiceName"] ;

                                              echo "</li>";
                                            }
                                            echo "</ul>";
                                          }

                                        }
                                        echo "</li>";
                                      }
                                      echo "</ul>";
                                    }

                                  }
                                  echo "</li>";
                                }
                                echo "</ul>";
                              }

                            }
                            echo "</li>";
                          }
                          echo "</ul>";
                        }

                      }
                      echo "</li>";
                    }
                  }
                }
                ?>

              </ul>
              <input type="hidden" id="values" name="values" value="">
              <button type="button" id="btnsearch" class="btn btn-info">Search</button><br><br>
              <!-- <script src="dev/jquery.min.js"></script>
              <script src="dev/bootstrap.min.js"></script> -->
              <script src="dev/logger.js"></script>
              <script src="dev/treeview.js"></script>

              <script>
              $('#treeview-checkbox-demo').treeview({
                debug : true
              });
              </script>
            </div>
          </div>
          <div class="col-md-12">
            <hr>
            <div id="notify" class="alert alert-success" style="display:none;">
              <a href="#" class="close" data-dismiss="alert">&times;</a>

              <div class="message"></div>
            </div>
            <h5>Invite your preferred Supplier to BudgetMetal</h5>
            <input type="email" name="inviteEmail" value="" id="inviteEmail" class="form-control">
            <br>
            <button type="button" class="btn btn-info" name="button" id="btnInvite" >Invite</button>
          </div>
        </div>



    </div>
    </div>
    <div class="col-md-9">
      <div class="box box-info">
        <table id="supplier_lists" class="table table-bordered table-striped smaller_font_table">
          <thead>
            <tr>
              <!-- <th>No.</th> -->
              <th width="95%">Suppliers (Name / Address)</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <?php
              $query = "SELECT * FROM m_company Where Id in (SELECT `M_Company_Id`  FROM `m_user` WHERE `C_UserType` = 2 AND`Status` = 1)";
              $results = $db->pdoQuery($query)->results();
              if (!empty($results)){
              
              foreach ($results as $row) {
                ?>

                <tr id='trsupplier_".$row["Id"]."'>
                  <td>
                    <b style='font-variant: small-caps; text-transform: uppercase;'>
                      <?php echo $row["Name"];?>
                    </b>
                    
                    <div style='margin: 2px;'>
                      <?php echo $row["Address"];?>
                    </div>
                  </td>
                  <td>
                    <?php
                    $out = '<a href="index.php?rdp=company_profile&companyid=' . $row["Id"] .'" class="btn btn-warning btn-xs" target="_blank"><span class="icon-pencil"></span>View</a> ';
                    echo $out;
                    ?>
                  </td>
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






<script>
$(function () {
  $('#supplier_lists').DataTable({
    "dom": 'rtp<"clear">'
  });
  $("#btnsearch").click(function (e) {
    $('#values').val(
      $('#treeview-checkbox-demo').treeview('selectedValues')
    );
    //alert($('#values').val());
var table = $('#supplier_lists').DataTable();
var tagList = $('#tagList').val();
  var name = $('#sName').val();
    var id = $('#values').val();
    if (window.XMLHttpRequest) {
      // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp = new XMLHttpRequest();
    } else {
      // code for IE6, IE5
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
      // var rows = table
      //      .rows()
      //      .remove()
      //      .draw();
      // $("#supplier_lists tbody").append(this.responseText); AEIOUTSA
      table.clear();

      if(this.responseText == ""){
        table.draw();
      }else{
        var trainindIdArray = this.responseText.split('AEIOUTSA');
        //console.log('tks');
        //console.log(trainindIdArray);
        var i;

        for (i = 0; i < trainindIdArray.length; ++i) {

            var temp = trainindIdArray[i].trim();

            var ta = JSON.stringify(temp);
            var tb = JSON.parse(ta).split('^^');

            table.row.add(tb).draw();
        }
      }
  }
    };
    xmlhttp.open("GET","system/searchsuppliersbyservices.php?selectedValues="+id+"&Name="+name+"&tagList="+tagList,true);
    xmlhttp.send();
  //$('#supplier_lists').DataTable();
    e.preventDefault();
  });
});
// $("[id*=treeview-checkbox-demo] input[type=checkbox]").bind("click", function () {
//   //Is Parent CheckBox
//   var isChecked = $(this).is(":checked");
//   $(this).parent().find("input[type=checkbox]").each(function () {
//     if (isChecked) {
//       $(this).prop( "checked", true );
//     } else {
//       $(this).removeAttr("checked");
//     }
//   });
// });
$(document).ready(function() {
  $('.select2').select2();
});
$("#btnInvite").click(function (e) {

  e.preventDefault();
  var email = $("#inviteEmail").val();
  if(email == ""){
    $("#notify .message").html("Email must not be blank");
    $("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
    $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
  }else{
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if(re.test(email)){
      $.ajax({
        url: 'market.php?function=InviteSupplier&email='+email+'&buyer=<?php echo $company_name;?>',
        type: 'GET',
        dataType: 'json',
        success: function (data) {
          if(data.success == true){
            $("#notify .message").html("BudgetMetal has sent invitation to your prefered supplier.");
            $("#notify").removeClass("alert-warning").addClass("alert-success").fadeIn();
            $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
            $("#inviteEmail").val("");
          }else{
            $("#notify .message").html("Supplier already have in BudgetMetal.");
            $("#notify").removeClass("alert-success").addClass("alert-warning").fadeIn();
            $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
          }
        },
        error: function (data) {
          $("#notify .message").html("<strong>100000" + data.status + "</strong>: " + data.message);
          $("#notify").removeClass("alert-success").addClass("alert-danger").fadeIn();
          $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
        }
      });
    }else{
      $("#notify .message").html("Email field is invalid format!");
      $("#notify").removeClass("alert-success").addClass("alert-warning").fadeIn();
      $("html, body").animate({scrollTop: $('#notify').offset().top}, 1000);
    }

  }


});
</script>
