<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
session_start();
ob_start();
include("config.php");
include("piwik.php");
include("dbcon.php");
include("checkusersession.php");

include("header.php");
date_default_timezone_set("Asia/Singapore");
?>
 <!-- Full Width Column -->
  <div class="content-wrapper" style="min-height: 130px;">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">

      </section>

      <!-- Main content -->
      <section class="content">
		<?php
		if(isset($_GET["rdp"])){
			if($_GET["rdp"] == "gallery"){
				include("system/gallery.php");
			}elseif($_GET["rdp"] == "create_rfq"){
				include("buyer/create_rfq.php");
			}elseif($_GET["rdp"] == "view_rfq"){
				include("system/view_rfq.php");
			}elseif($_GET["rdp"] == "edit_rfq"){
				include("buyer/edit_rfq.php");
			}elseif($_GET["rdp"] == "list_rfq"){
				include("system/list_rfq.php");
			}elseif($_GET["rdp"] == "create_quotation"){
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
                header('Location: index.php?rdp=view_quotation&id='.$q_id);
              }
            }else{
              include("supplier/create_quotation.php");
            }
          }
        }


			}elseif($_GET["rdp"] == "view_quotation"){
				include("system/view_quotation.php");
			}elseif($_GET["rdp"] == "edit_quotation"){

				include("supplier/edit_quotation.php");
			}elseif($_GET["rdp"] == "list_quotation"){
				include("system/list_quotation.php");
			}elseif($_GET["rdp"] == "timeline"){
				include("system/timeline.php");
			}elseif($_GET["rdp"] == "profile"){
				include("system/profile.php");
			}elseif($_GET["rdp"] == "company_profile"){
				include("system/company_profile.php");
			}elseif($_GET["rdp"] == "list_supplier"){
				include("system/list_supplier.php");
			}elseif($_GET["rdp"] == "dashboard"){
				include("system/dashboard.php");
			}else{
				echo "<h1>Error: 404 Not Found!</h1>";
			}
		}else{
			echo "<h1>Welcome to Market Place</h1>";
		}
		?>
	   </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->

<?php
    include("footer.php");
?>
