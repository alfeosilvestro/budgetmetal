<?php
    session_start();
    $email_encode = $_GET["a"]; //Storing username in $username variable.
    $date_encode = $_GET["b"]; //Storing password in $password variable.

    $email = base64_decode($email_encode);

    $date_decode = base64_decode($date_encode);
    include("dbcon.php"); //including config.php in our file
    include_once('lib/pdowrapper/class.pdowrapper.php');


	$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
	// get instance of PDO Wrapper object
	$db = new PdoWrapper($dbConfig);
    $sql = "SELECT * FROM `m_user`  where 	EmailAddress = '".$email . "' Limit 1";
    $result = $conn->query($sql);
	$userid = "";
	$usertype = "";
	if (isset($result)){
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$Confirmed = $row["Confirmed"];
        if($Confirmed == 0){
          $expire_dt = date_format(date_create($date_decode),"Y-m-d");

          $today_dt = date("Y-m-d");

          if ($expire_dt < $today_dt) {
            echo "Expired link!";
          }else{
             $sql = "Update `m_user` Set Confirmed = 1  where 	EmailAddress = '".$email . "'";
             $result = $conn->query($sql);
             echo "Your account has been already verified. <a href='../index.php'>Click here</a> to login.";
             break;
          }
        }else{
          echo "Your account has been already verified. <a href='../index.php'>Click here</a> to login.";
        }
			}
		}else{
      echo "Invalid link!";
    }
	}



?>
