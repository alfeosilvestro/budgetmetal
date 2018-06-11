<?php
    session_start();
    $username = $_POST["username"]; //Storing username in $username variable.
    $password = $_POST["password"]; //Storing password in $password variable.
    include("config.php");
    include("dbcon.php"); //including config.php in our file
    include_once('lib/pdowrapper/class.pdowrapper.php');
	$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
    $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$username . "' and Password = '".$password."' and Confirmed  = 1  Limit 1";
    $result = $conn->query($sql);
	$userid = "";
	$usertype = "";
  $company_admin = "";
  $companyid = "";
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				if($row["C_UserType"] == "3"){
					$usertype = "Buyer";
				}elseif($row["C_UserType"] == "2"){
					$usertype = "Supplier";
				}elseif($row["C_UserType"] == "1"){
					$usertype = "Admin";
				}
				$userid = $row["Id"];
        $company_admin = $row["Company_Admin"];
        $companyid = $row["M_Company_Id"];
				$num_rows = 1;
			}
		}
	}


   if($num_rows == 1) {

    $_SESSION['user']= $_POST["username"];
		$_SESSION['usertype']  = $usertype;
		$_SESSION['userid'] = $userid;
    $_SESSION['Company_Admin'] = $company_admin;
    $_SESSION['M_Company_Id'] = $companyid;
        $_SESSION['start'] = time(); // taking now logged in time
        $_SESSION['expire'] = $_SESSION['start'] + (180 * 60); // ending a session in 30     minutes from the starting time
		//echo $usertype. $userid;
    $id = "";
    if(isset($_POST["id"])){
      $id = $_POST["id"];
    }
    $ref_div = "";
    if(isset($_POST["ref_div"])){
      if($_POST["ref_div"] != ""){
        $ref_div = "#".$_POST["ref_div"];
      }

    }
    if(isset($_POST["doc_type"])){
      if($_POST["doc_type"] == "RFQ"){
        header("location:index.php?rdp=view_rfq&rfq_ref=".$id.$ref_div);
      }elseif($_POST["doc_type"] == "Quotation"){
          header("location:index.php?rdp=view_quotation&id=".$id.$ref_div);
      }else{
        header("location:index.php?rdp=dashboard");
      }
    }

    }  else { //if ($username != "zms") {
        header("location:../index.php?l=". $username);
    }
?>
