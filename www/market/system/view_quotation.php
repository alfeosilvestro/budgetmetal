
<style>
/* Rating Star Widgets Style */
.rating-stars ul {
  list-style-type:none;
  padding:0;

  -moz-user-select:none;
  -webkit-user-select:none;
}
.rating-stars ul > li.star {
  display:inline-block;

}

/* Idle State of the stars */
.rating-stars ul > li.star > i.fa {
  font-size:2em; /* Change the size of the stars */
  color:#ccc; /* Color on idle state */
}

/* Hover state of the stars */
.rating-stars ul > li.star.hover > i.fa {
  color:#FFCC36;
}

/* Selected state of the stars */
.rating-stars ul > li.star.selected > i.fa {
  color:#FF912C;
}

</style>
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
$id = "";
if(isset($_GET["id"])){
  $id = $_GET["id"];
}
$rfqowner_companyid = "0";
$companyid = "0";

$sql = "SELECT * FROM `t_document` t1 where C_DocumentType = 7 and t1.Id = '".$id."'";
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
      $q_ref = $row["Q_Ref"];
      $FName = $row["ContactPersonFName"];
      $LName = $row["ContactPersonLName"];
    }


    $rfq_id =0;

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

    $sql = "SELECT t1.username, t1.EmailAddress,  t3.Name, t3.Reg_No, t3.Id FROM `m_user` t1  INNER JOIN `m_company` t3 ON t3.id = t1.M_Company_Id  where t1.id = ".$q_userid;
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $username = $row["username"];
          $email =  $row["EmailAddress"];
          $company_name = $row["Name"];
          $reg_no = $row["Reg_No"];
          $companyid = $row["Id"];
        }
      }
    }

    ?>
    <Style>
    .post-comments {
      padding-bottom: 9px;
      margin: 5px 0 5px;
    }

    .comments-nav {
      border-bottom: 1px solid #eee;
      margin-bottom: 5px;
    }

    .post-comments .comment-meta {
      border-bottom: 1px solid #eee;
      margin-bottom: 5px;
    }

    .post-comments .media {
      margin-bottom: 5px;
      padding-left: 10px;
    }

    .post-comments .media-heading {
      font-size: 12px;
      color: grey;
    }

    .post-comments .comment-meta a {
      font-size: 12px;
      color: grey;
      font-weight: bolder;
      margin-right: 5px;
    }
    </Style>
    <div class="row">
      <div class="col-sm-12">
        <h3>
          View Quotation
        </h3>
        <div id="notify" class="alert alert-success" style="display:none;">
          <a href="#" class="close" data-dismiss="alert">&times;</a>

          <div class="message"></div>
        </div>
      </div>
    </div>

    <form action="#" method="post" id="view_rfq" >

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
                <div class="row">
                  <div class="col-sm-6">
                    <label>RFQ Ref: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo $rfq_ref; ?>
                    <input name="rfq_ref" type="hidden" readonly class="form-control" value="<?php echo $rfq_ref; ?>" >
                    <input name="user_id" type="hidden" readonly class="form-control" value="<?php echo $userid; ?>" >
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Company Name: </label>
                  </div>
                  <div class="col-sm-6">
                    <a href="index.php?rdp=company_profile&companyid=<?php echo $companyid; ?>" target="_blank"> <?php echo $company_name; ?> </a>

                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Contact Person First Name: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo $FName; ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Quotation Date: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php 	 echo date('d-m-Y', strtotime($q_createddate));?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Bid Price: </label>
                  </div>
                  <div class="col-sm-6">
                    $<?php echo $QuotedFigure;?>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Quotation Ref: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo $q_ref; ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Status: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php
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


                    ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Business Registration No.: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo $reg_no; ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Contact Person Last Name: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo $LName; ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-sm-6">
                    <label>Valid Date: </label>
                  </div>
                  <div class="col-sm-6">
                    <?php echo date('d-m-Y', strtotime($ValidToDate)); ?>
                  </div>
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
            <div class="col-sm-12">
              <table class="table table-hover smaller_font_table" id="fileList">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th style="width:40%">File</th>
                    <th>Description</th>

                  </tr>
                </thead>
                <tbody>
                  <?php
                  $query = "SELECT t2.* FROM t_document t1 Inner Join t_fileattachments t2 on t2.T_Document_Id = t1.Id Where t2.Status = 1 and C_DocumentType = 7 and t1.Id = ". $q_id;
                  $results = $db->pdoQuery($query)->results();
                  if (!empty($results)){
                    $count = 0;
                    foreach ($results as $row) {
                      $count = $count+1;
                      ?>
                      <tr>
                        <td><?php echo $count; ?></td>

                        <td><?php
                        $out = '<a href="attachment/' . $row["FileName"] .'" target="_blank">'.$row["FileName"].'</a>';
                        echo $out;
                        ?></td>

                        <td><?php
                        $out = $row["Message"];
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
              <?php echo nl2br($Comments);?>

            </div>


          </div>
        </div>
      </div>

      <?php
      if($q_statusid == 18){
        ?>
        <div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title">Award Document</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-sm-12">
                <?php
                  $query4 = "SELECT * FROM `t_supplierquotation` WHERE Document_Id = ".$q_id."  Limit 1";

                  $results4 = $db->pdoQuery($query4)->results();
                  if (!empty($results4)){

                    foreach ($results4 as $row4) {
                      $poletter = $row4["PO_Letter"];
                      echo '<a href="attachment/'.$poletter.'" target="_blank">'.$poletter.'</a>' ;
                    }
                  }

                  ?>

              </div>


            </div>
          </div>
        </div>
        <?php
      }
      ?>
      <div class="row">

        <div class="col-sm-6">

          <div class="btn-group pull-left">
            <?php if(($_SESSION['usertype'] == 'Supplier') && ($_SESSION['userid'] == $q_userid) && (($q_statusid == 15) || ($q_statusid == 16)) ){
              $query4 = "SELECT * FROM `t_document` WHERE Status = 1 and C_DocumentType = 6 and `DocumentNo` = '".$rfq_ref."'  Limit 1";

              $results4 = $db->pdoQuery($query4)->results();
              if (!empty($results4)){

                foreach ($results4 as $row4) {
                  $rfq_owner = "yes";
                  $rfq_id = $row4["Id"];

                }
              }
              if($q_statusid == 15){
                ?>
              <a href="index.php?rdp=edit_quotation&id=<?php echo $q_id;?>" class="btn btn-warning">
                <i class="fa fa-pencil-square-o"></i>
                Edit Quotation
              </a>
              <?php
              }
              ?>
              <a href="#" class="btn btn-danger" onclick="withdrawn_quotation(<?php echo $q_id;?>)">
                <i class="fa fa-pencil-square-o"></i>
                Withdrawn Quotation
              </a>
            <?php

          }elseif(($_SESSION['usertype'] == 'Buyer' )){
              $query4 = "SELECT * FROM `t_document` WHERE Status = 1 and C_DocumentType = 6 and `DocumentNo` = '".$rfq_ref."' and `M_User_Id` = ". $userid ."  Limit 1";

              $results4 = $db->pdoQuery($query4)->results();
              if (!empty($results4)){
                foreach ($results4 as $row4) {
                  $rfq_owner = "yes";
                  $rfq_id = $row4["Id"];
                }
              }

              if(($rfq_owner == "yes") && ($q_statusid == 16) ){
                ?>
                <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#acceptpanel"><i class="fa fa-pencil-square-o"></i>Accept</button>
                <a href="#" id="btnreject" class="btn btn-info" onclick="reject_quotation(<?php echo $q_id;?>)">
                  <i class="fa fa-pencil-square-o"></i>
                  Reject
                </a>
                <?php
              }elseif(($rfq_owner == "yes") && ($q_statusid == 18) ){
                $sql5 = "SELECT * FROM `md_companyrating` t1 where t1.Company_Id = ".$companyid." and t1.Ref_Document_Id = ".$q_id;
                $result5 = $conn->query($sql5);
                if (isset($result5)){
                  if ($result5->num_rows > 0) {
                  }else{
                    ?>
                    <a href="#" id="btnrate" class="btn btn-info"  onclick="rateSupplier()">
                      <i class="fa fa-pencil-square-o"></i>
                      Rate this Company
                    </a>
                    <?php
                  }
                }

              }
            }
            if(($_SESSION['usertype'] == 'Supplier') && ($q_statusid == 18)){
              $query4 = "Select * From m_user Where ID in (SELECT M_User_Id FROM `t_document` WHERE Status = 1 and C_DocumentType = 6 and `DocumentNo` = '".$rfq_ref."') Limit 1";

              $results4 = $db->pdoQuery($query4)->results();
              if (!empty($results4)){

                foreach ($results4 as $row4) {
                  $rfqowner_companyid = $row4["M_Company_Id"];
                }
              }
              $sql5 = "SELECT * FROM `md_companyrating` t1 where t1.Company_Id = ".$rfqowner_companyid." and t1.Ref_Document_Id = ".$q_id;
              $result5 = $conn->query($sql5);
              if (isset($result5)){
                if ($result5->num_rows > 0) {
                }else{
              ?>
              <a href="#" id="btnrate" class="btn btn-info"  onclick="rateSupplier()">
                <i class="fa fa-pencil-square-o"></i>
                Rate this Company
              </a>
              <?php
            }
          }
            }
            ?>

          </div>

        </div>

      </div>
    </form>
    <script>

    </script>
    <?php
  }else{
    ?>
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">This is invalid ID</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>

      </div>
    </div>

    <?php
  }
}?>
<br />
<div class="box box-default" id="clarification_div">
  <div class="box-header with-border">
    <h3 class="box-title">Clarification</h3>

    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
    <div >
      <div class="post-comments">

        <div class="row">
          <?php
          $sql = "SELECT * FROM `t_clarifications` t1 where Status = 1 and  t1.T_Document_Id = ".$id;

          $result = $conn->query($sql);
          if (isset($result)){
            if ($result->num_rows > 0) {
              ?>
              <div class="comments-nav">
                <ul class="nav nav-pills">
                  <li role="presentation" class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                      there are <?php echo $result->num_rows; ?> comments <span class="caret"></span>
                    </a>
                  </li>
                </ul>
              </div>
              <?php
              // output data of each row
              while($row = $result->fetch_assoc()) {
                //$FinalClosingDate = $row["FinalClosingDate"];
                ?>
                <div class="media">
                  <!-- first comment -->

                  <div class="media-heading">
                    <?php
                    $asking_person = "";
                    $sql_user = "SELECT * FROM `m_user` t1 where Status = 1 and  t1.Id = ".$row["M_Asking_Person_Id"];
                    $result_user = $conn->query($sql_user);
                    if (isset($result_user)){
                      if ($result_user->num_rows > 0) {
                        while($row_user = $result_user->fetch_assoc()) {
                          $asking_person = "";
                          if($row["make_public"] != "1"){
                            $asking_person = $row_user["UserName"];
                          }
                          if($row_user["C_UserType"] == 2 ){
                            $asking_type = "Supplier";
                          }elseif($row_user["C_UserType"] == 3 ){
                            $asking_type = "Buyer";
                          }
                        }
                      }
                    }
                    ?>
                    <button class="btn btn-default btn-xs" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info"><?php echo $asking_type;?></span>
                    <?php if($row["make_public"] != "1"){echo $asking_person;} ?> asked:
                    </div>

                    <div class="panel-collapse collapse in" id="collapseThree">

                      <div class="media-left">
                        <div class="vote-wrap">
                          <div class="save-post">
                            <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
                          </div>
                          <div class="vote up">
                            <i class="glyphicon glyphicon-menu-up"></i>
                          </div>
                          <div class="vote inactive">
                            <i class="glyphicon glyphicon-menu-down"></i>
                          </div>
                        </div>
                        <!-- vote-wrap -->
                      </div>
                      <!-- media-left -->


                      <div class="media-body">
                        <p><?php echo $row["ClarificationQuestion"];?></p>
                        <div class="comment-meta">
                          <?php
                          if($row["M_Asking_Person_Id"] == $userid){


                            ?>
                            <span><a href="#" class="del_comment" onclick="del_comment(<?php echo $row["Id"];?>)" value="<?php echo $row["Id"];?>">Delete</a></span>
                            <?php

                          }
                          if($row["ClarificationAnswer"] == ""){
                            if(($_SESSION['usertype'] == 'Supplier') ){
                              if($row["M_Asking_Person_Id"] == $userid){}else{
                                ?>
                                <span><a class="" style="font-size:15px;"  role="button" data-toggle="collapse" href="#replyComment<?php echo $row["Id"];?>" aria-expanded="false" aria-controls="collapseExample"><b>Reply</b></a>      </span>
                                <?php
                              }
                            }
                          }
                          ?>
                          <div class="collapse" id="replyComment<?php echo $row["Id"];?>">
                            <form id="RFQReply<?php echo $row["Id"];?>">
                              <div class="form-group">
                                <!-- <label for="comment">Reply</label> -->
                                <input type="hidden" name="comment_id" value="<?php echo $row["Id"];?>">
                                <input type="hidden" name="askinguser_id" value="<?php echo $row["M_Asking_Person_Id"];?>">
                                <input type="hidden" name="document_id" value="<?php echo $q_id;?>">
                                <input type="hidden" name="replyuser_id" value="<?php echo $userid;?>">
                                <div class="col-md-12">
                                  <!-- <label for="comment">Reply</label> -->
                                  <input type="text" name="replyComment" value="" class="form-control">
                                  <br>
                                  <button type="button" id="Send_Reply" class="btn btn-default" onclick="reply_Comment(<?php echo $row["Id"];?>)">Send</button>
                                </div>
                                <!-- <textarea name="replyComment" class="" rows="3" cols="50"></textarea> -->
                              </div>

                            </form>
                          </div>
                        </div>
                        <!-- comment-meta -->
                        <?php
                        if($row["ClarificationAnswer"] != ""){
                          ?>
                          <div class="media">
                            <!-- answer to the first comment -->
                            <div class="media-heading">
                              <button class="btn btn-default btn-collapse btn-xs" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> answered:
                            </div>

                            <div class="panel-collapse collapse in" id="collapseTwo">

                              <div class="media-left">
                                <div class="vote-wrap">
                                  <div class="save-post">
                                    <a href="#"><span class="glyphicon glyphicon-star" aria-label="Save"></span></a>
                                  </div>
                                  <div class="vote up">
                                    <i class="glyphicon glyphicon-menu-up"></i>
                                  </div>
                                  <div class="vote inactive">
                                    <i class="glyphicon glyphicon-menu-down"></i>
                                  </div>
                                </div>
                                <!-- vote-wrap -->
                              </div>
                              <!-- media-left -->
                              <div class="media-body">
                                <p><?php echo $row["ClarificationAnswer"];?></p>
                                <div class="comment-meta">

                                </div>
                              </div>
                            </div>
                            <!-- comments -->

                          </div>
                          <!-- comments -->
                          <?php
                        }
                        ?>


                      </div>

                    </div></div>

                    <?php
                  }
                }
              }

              ?>

              <!-- first comment -->

              <!-- first comment -->
            </div>
            <?php
            if(($q_statusid == '16')){
              if(($_SESSION['usertype'] == 'Buyer') ){
                ?>
                <form  id="frm_comment">
                  <div class="form-group">
                    <label for="comment">

                      Clarifications

                    </label><br>
                    <input type="hidden" name="document_id" value="<?php echo $id;?>">
                    <input type="hidden" name="askinguser_id" value="<?php echo $userid;?>">
                    <input type="hidden" id="txt_ownerrfq"  name="ownerrfq" value="<?php echo $ownerrfq;?>">
                    <textarea id="txt_comment" name="comment"  rows="3" cols="50"></textarea>
                  </div>
                  <button type="button" id="btn_Send" class="btn btn-warning">Send</button>

                </form >
                <?php
              }
            }?>
          </div>
          <!-- post-comments -->
        </div>
      </div>
    </div>

    <div class="modal fade" id="ratebox" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Rating</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            <form id="frm_rating">
              <div class="form-group col-md-9">
                <label for="">Speed of Quotation</label>
                <input type="hidden" name = "hdCompanyID" id = "hdCompanyID" value="0" />
                <input type="hidden" name = "txt_speed_quotation" id = "txt_speed_quotation" value="" />
                <div class='rating-stars text-center'>
                  <ul id='stars'>
                    <li class='star' title='Poor' data-value='1'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Fair' data-value='2'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Good' data-value='3'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Excellent' data-value='4'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='WOW!!!' data-value='5'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="form-group col-md-9">
                <label for="">Speed of Delivery</label>
                <input type="hidden" name = "txt_speed_delivery" id = "txt_speed_delivery" value="0" />
                <div class='rating-stars text-center'>
                  <ul id='stars_delivery'>
                    <li class='star' title='Poor' data-value='1'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Fair' data-value='2'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Good' data-value='3'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Excellent' data-value='4'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='WOW!!!' data-value='5'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="form-group col-md-9">
                <label for="">Service Quality</label>
                <input type="hidden" name = "txt_service" id = "txt_service" value="0" />
                <div class='rating-stars text-center'>
                  <ul id='stars_service'>
                    <li class='star' title='Poor' data-value='1'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Fair' data-value='2'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Good' data-value='3'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Excellent' data-value='4'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='WOW!!!' data-value='5'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="form-group col-md-9">
                <label for="">Price</label>
                <input type="hidden" name = "txt_price" id = "txt_price" value="0" />
                <div class='rating-stars text-center'>
                  <ul id='stars_price'>
                    <li class='star' title='Poor' data-value='1'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Fair' data-value='2'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Good' data-value='3'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='Excellent' data-value='4'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                    <li class='star' title='WOW!!!' data-value='5'>
                      <i class='fa fa-star fa-fw'></i>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="form-group col-md-9">
                <label for="">Title</label>
                <input id="txt_title" class="form-control" name="txt_title" value="">
              </div>
              <div class="form-group col-md-9">
                <label for="">Description</label>
                <textarea name="txt_desc" id="txt_desc"  class="form-control" rows="5" cols="50"></textarea>
              </div>
              </form>
            </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="btnSubmit" >Submit</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="acceptpanel" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Award this quotation</h4>
          </div>
          <div class="modal-body">
            <form action="awardQuotation.php" method="POST" enctype="multipart/form-data">
              <label>Please attached Purchase Order (PO) or Letter of Award (LOA)</label>
              <input type="hidden" name="ModifiedBy" value="<?php echo $userid;?>">
              <input type="hidden" name="doc_id" value="<?php echo $q_id;?>">
              <input type="hidden" name="rfq_id" value="<?php echo $rfq_id;?>">
              <!-- <input type="file" name="file" class="form-control" required> -->
              <div class="row" id="poaddfile">
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
              <br>
              <div class="row">
                <div class="col-sm-12">
                  <table class="table table-hover" id="pofileList">

                    <tbody>
                    </tbody>
                  </table>
                </div>

              </div>
              <br>
              <input type="submit" name="submit" value="Award this Quotation" class="btn btn-success"  id="btnPOAward">
            </form>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div>
      </div>
    </div>

    <script>
    $(function () {
      $('[data-toggle="collapse"]').on('click', function() {
        var $this = $(this),
        $parent = typeof $this.data('parent')!== 'undefined' ? $($this.data('parent')) : undefined;
        if($parent === undefined) { /* Just toggle my  */
          $this.find('.glyphicon').toggleClass('glyphicon-plus glyphicon-minus');
          return true;
        }
        /* Open element will be close if parent !== undefined */
        var currentIcon = $this.find('.glyphicon');
        currentIcon.toggleClass('glyphicon-plus glyphicon-minus');
        $parent.find('.glyphicon').not(currentIcon).removeClass('glyphicon-minus').addClass('glyphicon-plus');


      });

      $("#btn_Send").click(function (e) {
        var txt_comment = $("#txt_comment").val();
        if (txt_comment == ""){
          alert("Please Enter Comment");
        }else{
          $.ajax({
            url: 'market.php?function=RFQComment&act=save',
            type: 'POST',
            data: $("#frm_comment").serialize(),
            dataType: 'json',
            success: function (data) {
              // alert("success");
              location.reload();
            },
            error: function (data) {
              //	 alert("error");
              location.reload();
            }
          });
        }

      });

      $('#quotations').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      });

      $(document).on("click", ".Send_Reply", function(){
        var obj = $(this);
        var id = obj.data("clarificationid");
        $.ajax({
          url: 'market.php?function=RFQComment&act=reply&id='+id,
          type: 'POST',
          data: $("#RFQReply"+id).serialize(),
          dataType: 'json',
          success: function (data) {
            location.reload();
          },
          error: function (data) {
            location.reload();
          }
        });
      });

    });
    $(document).ready(function(){
      $("#btnPOAward").hide();


      //speed of quotation
      /* 1. Visualizing things on Hover - See next part for action on click */
      $('#stars li').on('mouseover', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

        // Now highlight all the stars that's not after the current hovered star
        $(this).parent().children('li.star').each(function(e){
          if (e < onStar) {
            $(this).addClass('hover');
          }
          else {
            $(this).removeClass('hover');
          }
        });

      }).on('mouseout', function(){
        $(this).parent().children('li.star').each(function(e){
          $(this).removeClass('hover');
        });
      });

      /* 2. Action to perform on click */
      $('#stars li').on('click', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently selected
        var stars = $(this).parent().children('li.star');

        for (i = 0; i < stars.length; i++) {
          $(stars[i]).removeClass('selected');
        }

        for (i = 0; i < onStar; i++) {
          $(stars[i]).addClass('selected');
        }

        // JUST RESPONSE (Not needed)
        var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
        //responseMessage(ratingValue);
        $('input[id=txt_speed_quotation]').val(ratingValue);
      });

      //speed of delivery
      /* 1. Visualizing things on Hover - See next part for action on click */
      $('#stars_delivery li').on('mouseover', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

        // Now highlight all the stars that's not after the current hovered star
        $(this).parent().children('li.star').each(function(e){
          if (e < onStar) {
            $(this).addClass('hover');
          }
          else {
            $(this).removeClass('hover');
          }
        });

      }).on('mouseout', function(){
        $(this).parent().children('li.star').each(function(e){
          $(this).removeClass('hover');
        });
      });

      /* 2. Action to perform on click */
      $('#stars_delivery li').on('click', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently selected
        var stars = $(this).parent().children('li.star');

        for (i = 0; i < stars.length; i++) {
          $(stars[i]).removeClass('selected');
        }

        for (i = 0; i < onStar; i++) {
          $(stars[i]).addClass('selected');
        }

        // JUST RESPONSE (Not needed)
        var ratingValue = parseInt($('#stars_delivery li.selected').last().data('value'), 10);
        //responseMessage(ratingValue);
        $('input[id=txt_speed_delivery]').val(ratingValue);
      });


      //speed of delivery
      /* 1. Visualizing things on Hover - See next part for action on click */
      $('#stars_price li').on('mouseover', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

        // Now highlight all the stars that's not after the current hovered star
        $(this).parent().children('li.star').each(function(e){
          if (e < onStar) {
            $(this).addClass('hover');
          }
          else {
            $(this).removeClass('hover');
          }
        });

      }).on('mouseout', function(){
        $(this).parent().children('li.star').each(function(e){
          $(this).removeClass('hover');
        });
      });

      /* 2. Action to perform on click */
      $('#stars_price li').on('click', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently selected
        var stars = $(this).parent().children('li.star');

        for (i = 0; i < stars.length; i++) {
          $(stars[i]).removeClass('selected');
        }

        for (i = 0; i < onStar; i++) {
          $(stars[i]).addClass('selected');
        }

        // JUST RESPONSE (Not needed)
        var ratingValue = parseInt($('#stars_price li.selected').last().data('value'), 10);
        //responseMessage(ratingValue);
        $('input[id=txt_price]').val(ratingValue);
      });

      //service
      /* 1. Visualizing things on Hover - See next part for action on click */
      $('#stars_service li').on('mouseover', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

        // Now highlight all the stars that's not after the current hovered star
        $(this).parent().children('li.star').each(function(e){
          if (e < onStar) {
            $(this).addClass('hover');
          }
          else {
            $(this).removeClass('hover');
          }
        });

      }).on('mouseout', function(){
        $(this).parent().children('li.star').each(function(e){
          $(this).removeClass('hover');
        });
      });

      /* 2. Action to perform on click */
      $('#stars_service li').on('click', function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently selected
        var stars = $(this).parent().children('li.star');

        for (i = 0; i < stars.length; i++) {
          $(stars[i]).removeClass('selected');
        }

        for (i = 0; i < onStar; i++) {
          $(stars[i]).addClass('selected');
        }

        // JUST RESPONSE (Not needed)
        var ratingValue = parseInt($('#stars_service li.selected').last().data('value'), 10);
        //responseMessage(ratingValue);
        $('input[id=txt_service]').val(ratingValue);
      });

      $('#btnSubmit').on('click', function(){
        var serviceRating = $('input[id=txt_service]').val();
        var quotationRating = $('input[id=txt_speed_quotation]').val();
        var deliveryRating = $('input[id=txt_speed_delivery]').val();
        var priceRating = $('input[id=txt_price]').val();
        var title = $('input[id=txt_title]').val();
        var description = $('#txt_desc').val();

        $.ajax({
          url: "market.php?user_id=<?php echo $userid;?>&function=SaveRatingforSupplier&companyid=<?php if($_SESSION['usertype'] == 'Supplier'){echo $rfqowner_companyid;}else{echo $companyid;} ?>&serviceRating=" + serviceRating + "&quotationRating=" + quotationRating + "&deliveryRating=" + deliveryRating + "&priceRating="+ priceRating  +"&document_id=<?php echo $id;?>",
          type: 'POST',
          data: $("#frm_rating").serialize(),
          dataType: 'json',
          success: function (response) {
            location.reload();
          },
          failure: function (response) {
            alert(response);
          },
          error: function (response) {
            alert(response);
          }
        });
      });
    });
    function del_comment(id){
      $.ajax({

        url: 'market.php?function=RFQComment&act=del&id='+id,
        type: 'GET',
        dataType: 'json',
        success: function (data) {
          location.reload();
        },
        error: function (data) {
          location.reload();
        }

      });
    }



    function reply_Comment(id){
      $.ajax({

        url: 'market.php?function=RFQComment&act=reply&id='+id,
        type: 'POST',
        data: $("#RFQReply"+id).serialize(),
        dataType: 'json',
        success: function (data) {
          location.reload();
        },
        error: function (data) {
          location.reload();
        }

      });
    }

    function withdrawn_quotation(id){
      $.ajax({
        url: 'market.php?function=UpdateStatus&type=q&Status=20&ModifiedBy='+<?php echo $userid;?>+'&rfq_id='+<?php echo $rfq_id;?>+'&id='+id,
        type: 'GET',
        dataType: 'json',
        success: function (data) {
          location.reload();
        },
        error: function (data) {
           location.reload();
        }

      });
    }

    function accept_quotation(id){
      $.ajax({
        url: 'market.php?function=UpdateStatus&type=q&Status=18&ModifiedBy='+<?php echo $userid;?>+'&rfq_id='+<?php echo $rfq_id;?>+'&id='+id,
        type: 'GET',
        dataType: 'json',
        success: function (data) {
          $('#btnaccept').hide();
          $('#btnreject').hide();
          location.reload();
        },
        error: function (data) {
          location.reload();
        }
      });

    }
    function rateSupplier(){
      $('#ratebox').modal('show');
    }

    function reject_quotation(id){
      $.ajax({
        url: 'market.php?function=UpdateStatus&type=q&Status=19&ModifiedBy='+<?php echo $userid;?>+'&rfq_id='+<?php echo $rfq_id;?>+'&id='+id,
        type: 'GET',
        dataType: 'json',
        success: function (data) {
          location.reload();
        },
        error: function (data) {
          location.reload();
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
            $("#pofileList tbody").append('<tr id="tr_'+fileno+'" align="left"><td><input type="hidden" name="attachment" value="'+filename+'" ><a href="attachment/'+filename+'" target="_blank">'+filename+'</a>  </td><td><button type="button" OnClick="RemoveFile(this);" class="btn btn-sm btn-del" value="tr_'+fileno+'">Remove </button> <br></td></tr>');
            $("input[id=fileno]").val(fileno);
            $("#poaddfile").hide();
            $("#btnPOAward").show();
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

        function RemoveFile(objButton){
          var trid = objButton.value;
          row = $('#' + trid);
          row.remove();
          $("#poaddfile").show();
          $("#btnPOAward").hide();
        }
    </script>
