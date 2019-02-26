<?php
		session_start();
		require_once('session.php');
		$tickid2 = $_GET['tid1'];
		$status2 = htmlspecialchars($_GET['sid1']);
		$prob_des2 = htmlspecialchars($_GET['desc1']);
		$prob_area2 = $_GET['pid1'];
			
		    
			
		$sql = "UPDATE ticket 
		SET ticketstatus = '$status2', problemdescription = '$prob_des2', problemarea = '$prob_area2' where ticketid = '$tickid2';";
			
		$result = pg_query($dbconn, $sql);
		print_r($sql);
		print_r($result);
		
		header('location:./console.php');

?>