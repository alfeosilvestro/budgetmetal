<?php
    session_start();
    $username = $_POST["username"]; //Storing username in $username variable.
    $password = $_POST["password"]; //Storing password in $password variable.
    
    $token = "";
      if(isset($_POST["token"])){
        $token = $_POST["token"];
      }
      echo $token;
      $url = "";
      if(isset($_POST["url"])){
        $url = $_POST["url"];
      }
      $fileid = "";
      if(isset($_POST["fileid"])){
        $fileid = $_POST["fileid"];
      }
    date_default_timezone_set('Asia/Singapore');
    include("dbcon.php"); //including config.php in our file
    include_once('lib/pdowrapper/class.pdowrapper.php');
	$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
	// get instance of PDO Wrapper object
  $db = new PdoWrapper($dbConfig);
  if($token != ""){
    $sql = "SELECT * FROM `single_sign_on`  where 	Authentication_Token = '".$token . "' and Timeout > '". date('Y-m-d H:i:s') ."' and Status  = 1 Order By Id Desc  Limit 1";
    $result = $conn->query($sql);
    if (isset($result)){
      if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
          $username = $row["User_Email"];
          $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$username . "'  and Confirmed  = 1  Limit 1";
        }
       
      }
      else{
        header("location:../index.php?url=". $url ."&fileid=" . $fileid);
      }
    }else{
      header("location:../index.php?url=". $url ."&fileid=" . $fileid);
    }
  }else{
    $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$username . "' and Password = '".$password."' and Confirmed  = 1  Limit 1";
  }

  
   
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

      $_SESSION['user'] = $username;
      $_SESSION['usertype']  = $usertype;
      $_SESSION['userid'] = $userid;
      $_SESSION['Company_Admin'] = $company_admin;
      $_SESSION['M_Company_Id'] = $companyid;
      $_SESSION['start'] = time(); // taking now logged in time
      $_SESSION['expire'] = $_SESSION['start'] + (180 * 60); // ending a session in 30     minutes from the starting time
      //echo $usertype. $userid;

      $sql = "Update `single_sign_on` Set `UpdatedBy` ='".$_SESSION['user']."', `UpdatedDate`='". date('Y-m-d H:i:s') ."', Status=-1 where User_Email='".$_SESSION['user']."' AND Status=1";
      $result = $conn->query($sql);
      
      //Add to autnentication table
      $token = md5($_SESSION['user']);
      $t=time() + (120 * 60);

      $dataArray = array('Authentication_Token' =>  $token, 
      'User_Email' => $_SESSION['user'], 
      'Status' => 1, 
      'Timeout' => date('Y-m-d H:i:s', $t), 
      'CreatedDate' => date('Y-m-d H:i:s'), 
      'CreatedBy' => $_SESSION['user'], 
      'UpdatedDate' => date('Y-m-d H:i:s'), 
      'UpdatedBy' => "", 
      'IsActive' => 1, 
      'Version' => ""); 

      $db->insert('single_sign_on', $dataArray);

      // $fileid = "";
      // if(isset($_POST["fileid"])){
      //   $fileid = $_POST["fileid"];
      // }
      if(isset($_POST["url"])){
        if($_POST["url"] == "gallery"){
          $newURL = $config_gallery. $fileid . "&token=". $token;
          header('Location: '.$newURL);
          //header("http://localhost:5685/home/gallery?fileid=" . $fileid . "&token=". $token );
        }elseif($_POST["url"] == "supplier"){
          $Id = 0;
          $sql = "SELECT * FROM `m_company`  where 	Reg_No = '".$fileid . "' Limit 1";
          $result = $conn->query($sql);
          if (isset($result)){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                $Id = $row["Id"];
              }
            }
          }
          if($Id == 0){
            header("location:index.php?rdp=list_supplier");
          }else{
            header("location:index.php?rdp=company_profile&companyid=". $Id);
          }
            
        }elseif($_POST["url"] == "rfq"){
          header("location:index.php?rdp=create_rfq");
        }else{
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
              //echo $_POST["url"];
              header("location:index.php?rdp=dashboard");
            }
          }
        }
      }
      

    

    }  else { //if ($username != "zms") {
       // header("location:../index.php?l=". $username);
    }
?>
