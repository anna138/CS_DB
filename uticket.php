<?php
	session_start();
	require_once('session.php');
	if (isset($_SESSION['id'])){
	// Put stored session variables into local PHP variable
	$uid = $_SESSION['id'];
	$usname = $_SESSION['username'];
	$test123 = $_SESSION['acctID'];
	$test1234 = $_SESSION['callid'];
	$userResult = "User Information: <br /> Username: ".$usname. "<br /> ID: ".$uid;

if (isset($_POST['submit_button'])){	
		
			$selectOption =	$_POST['submit_button'];
			/*print_r("Working");*/
			$tickid2 = $_POST['tid'];
			$status2 = htmlspecialchars($_POST['sid']);
			$prob_des2 = htmlspecialchars($_POST['pid']);
			$prob_area2 = $_POST['descrp'];
			
		    /*print_r($_POST['tick_descr2']);
			print_r($status2);
			print_r($prob_des2);
			print_r($prob_area2);
			print_r("What is");*/
			$sql = "UPDATE ticket 
		SET ticketstatus = '$status2', problemdescription = '$prob_des2', problemarea = '$prob_area2' where ticketid = '$tickid2';";
			
			/*print_r($sql);*/
			$result = pg_query($dbconn, $sql);
	
		
			
	}
}
			

	

?>


	<form class="update-content"   id="register_form" method="post" onsubmit="return updatetickets(event)">
	<div class="container" style = "top: 159px; left: 358px; position: absolute; width:600px; height: 500px;">
	

	
    <label for="ticket_ID"><b>Ticket ID</b></label>
	<textarea rows="1" cols="50" id="tid" name="tick_descr2" form="register_form" onfocus="this.value='';" >Enter Text Here...</textarea>

	<label for="ticket_ID"><b>Focus Area</b></label>
	<textarea rows="1" cols="50" id="pid" name="focus_descr2" form="register_form" onfocus="this.value='';" >Enter Text Here...</textarea>
	
	<label for="ticket_ID"><b>Ticket Status</b></label>
	<textarea rows="1" cols="50" id="sid" name="status_descr2" form="register_form" onfocus="this.value='';" >Open</textarea>
	<!--label for="subject"><b>Subject</b></label>
    <input type="text" placeholder="Enter Subject" name="subject" required-->  
	<label for="description"><b>Description</b></label>
	<textarea rows="3" cols="50" id="descrp" name="problem_descr2" form="register_form" onfocus="this.value='';" >Enter Text Here...</textarea>
	
	<button type="submit" class="signupbtn" name="submit_button" onsubmit="updatetickets(event);">Submit Ticket </button>
    </div>    
  </form>
  <div class="ticket" style = "overflow: auto; top: 159px; right: 358px; position: absolute; width:600px; height: 500px;">';
  
	
	
	
	
	
	<?php
	
		$query20 = "select * from ticket";
		$result20 = pg_query($dbconn, $query20);
		$resultArr20 = pg_fetch_all($result20);
		//print_r($resultArr20);
		echo 
		'
		<table style="">
			<tr>
				 <th style="text-align:left;"> Ticket Number</th>
				 <th >Description</th>
				 <th >Focus Area</th>
			</tr>';
	    
		foreach($resultArr20 as $array){
			echo ' 
				<tr>
				 <td><a id ="ticketid" href="#" onclick="ticketfill(event,'.$array['ticketid'].','.$array['problemarea'].',\''.$array['ticketstatus'].'\',\''.$array['problemdescription'].'\')">'.$array['ticketid'].'</a></td>
				 <td style="text-align:center;"> '.$array['problemdescription'].' </td>
				 <td style="text-align:center;"> '.$array['problemarea'].' </td>
				</tr>
		';
			
		
		}
	echo '</table>';	
		
	
	
	
	
	?>
  
  </div>


	


  

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
<script>

	function updatetickets(e){
		e.preventDefault();
	   tid = $('#tid').html();
	   sid = $('#sid').html();
	   pid = $('#pid').html();
	   desc = $('#descrp').html();
	   alert(5);
	   $.ajax({
	   type: "POST",
	   url: "updatetickettable.php",
	   data: {  
				'tid': tid,
				'pid': pid,
				'sid': sid,
				'desc': desc,
				},
	   success: function(data){
			
			
	   },
	});
		
	}


</script>