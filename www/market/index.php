<?php
session_start();

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
			if($_GET["rdp"] == "create_rfq"){
				include("buyer/create_rfq.php");
			}elseif($_GET["rdp"] == "view_rfq"){
				include("system/view_rfq.php");
			}elseif($_GET["rdp"] == "edit_rfq"){
				include("buyer/edit_rfq.php");
			}elseif($_GET["rdp"] == "list_rfq"){
				include("system/list_rfq.php");
			}elseif($_GET["rdp"] == "create_quotation"){
				include("supplier/create_quotation.php");
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
