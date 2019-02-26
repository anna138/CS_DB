<?php
	$dbconn = pg_connect("host=localhost dbname=apoon port=5432 user=apoon password=Tuh73Qvaq")
	or die('Could not connect: ' . pg_last_error());

	session_start();
	
	$user_insession = $_SESSION['login_user'];
	$query = pg_query($dbconn, "select emailAdd from agent where emailAdd = '$user_insession'");
	
	$row = pg_fetch_array($query, PGSQL_ASSOC);
	$login_sess = $row['emailAdd'];
//	print_r($_SESSION);
	if(!isset($_SESSION['login_user'])){
		header("location:index.php");
	}
	
?>