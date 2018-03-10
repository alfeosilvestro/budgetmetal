<?php
include_once('../lib/pdowrapper/class.pdowrapper.php');
include("../dbcon.php");
$dbConfig = array("host" => $server, "dbname" => $database, "username" => $db_user, "password" => $db_pass);
// get instance of PDO Wrapper object
$db = new PdoWrapper($dbConfig);
$selectedValues = $_GET["selectedValues"];

$query = "SELECT * FROM m_company Where Id in (SELECT `M_Company_Id`  FROM `md_supplierservices` WHERE `M_Services_Id` in ($selectedValues))";
$results = $db->pdoQuery($query)->results();
if (!empty($results)){
  $count = 0;
  foreach ($results as $row) {
    $count = $count+1;
    ?>
    <tr>
      <td><?php echo $count; ?></td>
      <td><?php echo $row["Name"];?></td>
      <td><?php echo $row["Reg_No"];?></td>
      <td><?php echo $row["Address"];?></td>
      <td><?php

      $out = '<a href="index.php?rdp=company_profile&companyid=' . $row["Id"] .'" class="btn btn-warning btn-xs"><span class="icon-pencil"></span>View</a> ';
      echo $out;
      ?></td>
    </tr>

    <?php
  }
}
?>
