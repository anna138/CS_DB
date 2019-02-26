<?php

global $dbconn;
$result3 =  pg_query_params($dbconn, 'SELECT * from viewAccount h
									 WHERE h.accountid = $1', array($test123));

$resultArr3 = pg_fetch_all($result3);

$result4 = pg_query_params($dbconn, 'select * from
			ticket natural join modifies_user natural join 
			account natural join initiates natural join 
			call where useraction != \'Created\' AND accountid = $1', array($test123));
$resultArr4 = pg_fetch_all($result4);

foreach($resultArr3 as $array)
{

	if($_SESSION['flg'] == 1)
	{
		echo
			'
			
			<p><center><b> CONSUMER DETAILS: </b></center></p>
			<b><center> PLEASE VERIFY CONSUMER INFORMATION </center></b></br>
			<div id="pad">
			<b> ACCOUNT NUMBER:      </b>' . $array['accountid'].' </br></br>
			<b> NAME: </b>' . $array['name']. '</br></br>
			<b> EMAIL: </b>' . $array['emailadd']. ' </br></br>
			<b> PHONE: </b> ' . $array['phonenumber']. ' </br></br>
			<b> ADDRESS: </b> 123 Fake Street, Oakland ' . $array['address']. '</br></br></div>
			'
			;
	}


}
?>