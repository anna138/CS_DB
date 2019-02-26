<?php
	require_once('session.php');
	global $dbconn;
	
	$chatid = $_POST['id'];
	$query = "SELECT accountid from chat where chatid = '$chatid'";
	$table = pg_query($dbconn, $query);
	$row = pg_fetch_all($table);
	$row = $row[0]['accountid'];
	$query = "SELECT * from account where accountID = '$row'";
	$table = pg_query($dbconn, $query);
	$row = pg_fetch_all($table);
	
	foreach($row as $array){
	
		echo
			'
			<p><center><b> CONSUMER DETAILS: </b></center></p>
			<div id="pad">
			<b> ACCOUNT NUMBER:      </b>' . $array['accountid'].' </br></br>
			<b> NAME: </b>' . $array['name']. '</br></br>
			<b> EMAIL: </b>' . $array['emailadd']. ' </br></br>
			<b> PHONE: </b> ' . $array['phonenumber']. ' </br></br>
			<b> ADDRESS: </b> ' . $array['address']. '</br></br>
			<button type="button" onclick = "chatstart(event,'.$array['accountid'].', '.$chatid.')" >Join chat!</button> </br></br>
			';
	}
	

?>
