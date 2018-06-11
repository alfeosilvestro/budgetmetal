<?php
    $database =$config_database ;  // the name of the database.
    $server = $config_server;  // server to connect to. // for development and production.
    //$server = "metalpolis-db";  // server to connect to. // for docker-compose
    $db_user = $config_db_user;  // mysql username to access the database with.
    $db_pass = $config_db_pass;  // mysql password to access the database with.
    $db_port = $config_db_port;

	$conn = mysqli_connect($server, $db_user, $db_pass ,$database, $db_port);
   if (mysqli_connect_errno())
	{
        // echo $server . " / " . $db_user . " / " . $db_pass . " / " . $database . " / " . $db_port;
        // echo "<br/>";
		echo "Failed to connect to MySQL: <br/>" . mysqli_connect_error();
	}
?>
