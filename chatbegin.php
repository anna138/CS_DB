<?php
    session_start();
	require_once('session.php');
	global $dbconn;
	
	$accountid = $_POST['accountid'];
	$chatid = $_POST['chat'];
	$query = "SELECT name from account where accountid = '$accountid'";
	$table = pg_query($dbconn, $query);
	$row = pg_fetch_all($table);
	$row = $row[0]['name'];
	
	echo 'Chating with '.$row.'  id: '.$accountid.'';
	$today = new DateTime("now");

	$query = "UPDATE chat SET enddate = '$today->date' where enddate is NULL and accountid = '$accountid' and chatid = '$chatid'";	
	$table = pg_query($dbconn, $query);
	$id = $_SESSION['id'];
	$query = "INSERT INTO answered_by (agentid, chatid) VALUES($1,$2)";
	$table = pg_query_params($dbconn, $query, array($id, $chatid));
	
	$_SESSION['chatid'] = $chatid;
	
?>