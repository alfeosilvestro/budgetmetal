<?php
    
     if(!isset($_SESSION['user'])){
        header("location:../index.php");
    }else{
        $now = time(); 
        if($now > $_SESSION['expire'])
        {
            session_destroy();
            header("location:../index.php?l=e");
        }
    } 
	
	
	
?>