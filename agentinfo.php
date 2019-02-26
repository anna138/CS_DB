<?php
	require_once('session.php');
	global $dbconn;
	
	$query = "SELECT * from chat where enddate is NULL";
	$table = pg_query($dbconn, $query);
	$row = pg_fetch_all($table);

	echo '
	  			<p><center><b><u>PENDING CALLS </u></b></center></p>
			<center><table class="w3-table" width = "10%">
				<tr>
				 <th> Time Waiting</th>
				 <th> Email </th>
				 <th> chatid </th>
				 <th> Description</th>
				</tr>
	
	';
	foreach($row as $array){
		$timeFirst  = strtotime($array['startdate']);
		$timeSecond = strtotime('now');
		$differenceInSeconds = $timeSecond - $timeFirst;
		$query = 'SELECT emailAdd from account where accountid = '.$array['accountid'].' ';
		$table = pg_query($dbconn, $query);
		$row1 = pg_fetch_all($table);
		echo ' 
				<tr>
				 <th>'. $differenceInSeconds .' sec</th>
				 <th>'. $row1[0]['emailadd'] .'</th>
				 <th><a id ="chatid" href="" onclick = "consumer(event,'. $array['chatid'].')">'. $array['chatid'].'
				 </a></th>
				 <th> Description</th>
				</tr>
		';
		
	}
	
	echo '</center></table>';
?>