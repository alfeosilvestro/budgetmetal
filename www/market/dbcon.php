<?php
    $database = "metalpolis_database";  // the name of the database.
    $server = "127.0.0.1";  // server to connect to. // for development and production.
    //$server = "metalpolis-db";  // server to connect to. // for docker-compose
    $db_user = "metal_dbuser";  // mysql username to access the database with.
    $db_pass = "vackertech2018";  // mysql password to access the database with.
    $db_port = 3306;

	$conn = mysqli_connect($server, $db_user, $db_pass ,$database, $db_port);
   if (mysqli_connect_errno())
	{
        // echo $server . " / " . $db_user . " / " . $db_pass . " / " . $database . " / " . $db_port;
        // echo "<br/>";
		echo "Failed to connect to MySQL: <br/>" . mysqli_connect_error();
	}
?>
