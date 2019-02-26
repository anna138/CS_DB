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

if (isset($_POST['ticket_drop'])){	
		$selectOption =	$_POST['ticket_drop'];
		
		switch($selectOption)	
		{
		
		case 'AI':	

			$status = $_POST['status_drop'];
			$prob_des = htmlspecialchars($_POST['problem_descr']);
			$prob_area = '4';
			
			$sql = "SELECT createTicket('$status', '$prob_des', '$prob_area')";
			
			$result = pg_query($dbconn, $sql);
		
			break;
		
		case 'BI':	

			$status = $_POST['status_drop'];
			$prob_des = htmlspecialchars($_POST['problem_descr']);
			$prob_area = '3';
			
			$sql = "SELECT createTicket('$status', '$prob_des', '$prob_area')";
			
			$result = pg_query($dbconn, $sql);
		
			break;
			
		case 'RE':	

			$status = $_POST['status_drop'];
			$prob_des = htmlspecialchars($_POST['problem_descr']);
			$prob_area = '2';
			
			$sql = "SELECT createTicket('$status', '$prob_des', '$prob_area')";
			
			$result = pg_query($dbconn, $sql);
		
			break;
			
		case 'TS':	

			$status = $_POST['status_drop'];
			$prob_des = htmlspecialchars($_POST['problem_descr']);
			$prob_area = '1';
			
			$sql = "SELECT createTicket('$status', '$prob_des', '$prob_area')";
			
			$result = pg_query($dbconn, $sql);
		
			break;
		}
			
	}
}
			
			
			
			/*
			$subcat = (INT) strip_tags($_POST['solution_drop']);
			$prob = htmlspecialchars($_POST['problem_des']);
			$subj =  strip_tags($_POST['subject']);
			$reg =  strip_tags($_POST['region']);
			$war =  strip_tags($_POST['warranty']);
			$type =  strip_tags($_POST['service']);
			$issue =  strip_tags($_POST['issue']);
			$dev = (INT) strip_tags($_POST['hardware_name_id']);
			$sql = 'SELECT addAgentTicket($1::INT, $2::INT, $3::INT, $4::TEXT, $5::TEXT, $6::TEXT, $7::TEXT, $8::TEXT, $9::TEXT)';
			$parameters = array($test123, $subcat, $dev, $prob, $subj, $type, $reg, $war,  $issue);
			
			$result = pg_query_params($dbconn, $sql, $parameters);

			break;
		}
			
							
	}	
} */

	

?>


	<form class="modal-content" action="" id="register_form" method="post">
	<div class="container" style = "width:600px; height: 500px; ">
	
	
	
    <label for="category_dropdown"><b>Ticket Type</b></label>
    <select id="ticket_problem" name ="ticket_drop">
	<option selected="selected" disabled="disabled">Select  Type</option>
	<option value="AI">Account Issues</option>
    <option value="BI">Billing</option>
	<option value="RE">Repair</option>
	<option value="TS">Troubleshooting</option>
	</select>
	<br>
	<label for="problem_dropdown"><b>Issue</b></label>
    <select id="problem_category" name="problem_drop">
	<option selected="selected" disabled="disabled">
    </select>
	</br>
    </select>
	<label for="status_dropdown"><b>Ticket Status</b></label>
    <select id="ticket_status" name ="status_drop">
	<option selected="selected" disabled="disabled">Select Status</option>
	<option value="Open">Open</option>
    <option value="Closed">Closed</option>
	</select>
	<!--label for="subject"><b>Subject</b></label>
    <input type="text" placeholder="Enter Subject" name="subject" required-->  
	<label for="description"><b>Description</b></label>
	<textarea rows="4" cols="50" name="problem_descr" form="register_form" onfocus="this.value='';" >Enter Text Here...</textarea>
	
	<button type="submit" class="signupbtn" name="submit_button">Submit Ticket </button>
    </div>    
  </form>
  </div>
  <div class = "giant_box" style="background-color: white;">
  <div id="account_drop" style = "display:none;">
  <div class="column2" style="background-color:#FFFFFF;">

	<?php
		
		$ChgE = 0;
		$SentE = 0;
		$RetrA = 0;
		$NA = 0;
		$query7 = "select * from accountSolutions";
		$result7 = pg_query($dbconn, $query7);
		$resultArr7 = pg_fetch_all($result7);
		
		echo 
		'
		
		<h2 style="position: absolute; top: 90px; left: 50%;">Agent Guide</h2>
		
			<table style="position: absolute; top: 150px; left: 50%;">
				
				<tr>
				 <th style ="text-align:left;"> Solutions</th>
				 <th> Frequency</th>
				</tr>';

	foreach($resultArr7 as $array)
	{
			echo '
				<tr>
					 <td>'. $array['Solution'].'</td>
					 <td style="text-align:center;">'. $array['Count'].'</td>
				</tr>
				<tr>
				';
			switch ($array['Solution']) {
				case "Changed Email":
					$ChgE = $array['Count'];
					break;
				case "Sent Email":
					$SentE = $array['Count'];
					break;
				case "Retrieved Account":
					$RetrA = $array['Count'];
					break;
				case "No Action":
					$NA = $array['Count'];
					break;
			}
	}
	
	echo '</table>
	<div class="boximg1" style="height:500px; width:500px; position: absolute; top: 120px; right: 200px;"><canvas id="barChart1" style=" background-color: #FFF;"></canvas></div></div>
	<script>
	var cpx = document.getElementById("barChart1").getContext(\'2d\');
	var myBarChart1 = new Chart(cpx, {
		type: \'doughnut\',
		data: {
			labels: ["Change Email", "Sent Email", "Retrieve Account", "No Action"],
			datasets: [{
				label: \'Tickets Called For\',
				data: [ '.$ChgE.', '.$SentE.', '.$RetrA.','.$NA.'],
				backgroundColor: [
					\'rgba(255, 99, 132, 0.2)\',
					\'rgba(54, 162, 235, 0.2)\',
					\'rgba(255, 206, 86, 0.2)\',
					\'rgba(75, 192, 192, 0.2)\',
					\'rgba(153, 102, 255, 0.2)\',
					\'rgba(255, 159, 64, 0.2)\'
				],
				borderColor: [
					\'rgba(255,99,132,1)\',
					\'rgba(54, 162, 235, 1)\',
					\'rgba(255, 206, 86, 1)\',
					\'rgba(75, 192, 192, 1)\',
					\'rgba(153, 102, 255, 1)\',
					\'rgba(255, 159, 64, 1)\'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
	</script>';
	?>
	
	</div>
	
	<div id="billing_drop" style = "display:none;">
	<div class="column2" style="background-color:#FFFFFF;">

	<?php
		
		$ChgE = 0;
		$SentE = 0;
		$RetrA = 0;
		$NA = 0;
		$query8 = "select * from billingSolutions";
		$result8 = pg_query($dbconn, $query8);
		$resultArr8 = pg_fetch_all($result8);
		
		echo 
		'
		
		<h2 style="position: absolute; top: 90px; left: 50%;">Agent Guide</h2>
		
			<table style="position: absolute; top: 150px; left: 50%;">
				
				<tr>
				 <th style ="text-align:left;"> Solutions</th>
				 <th> Frequency</th>
				</tr>';

	foreach($resultArr8 as $array)
	{
			echo '
				<tr>
					 <td>'. $array['Solution'].'</td>
					 <td style="text-align:center;">'. $array['Count'].'</td>
				</tr>
				<tr>
				';
			switch ($array['Solution']) {
				case "Refunded to Consumer":
					$ChgE = $array['Count'];
					break;
				case "Denied Refund":
					$SentE = $array['Count'];
					break;
			}
	}
	
	echo '</table>
	<div class="boximg" style="height:500px; width:500px; position: absolute; top: 120px; right: 200px;"><canvas id="barChart2" style=" background-color: #FFF;"></canvas></div></div>
	<script>
	var cpx = document.getElementById("barChart2").getContext(\'2d\');
	var myBarChart2 = new Chart(cpx, {
		type: \'doughnut\',
		data: {
			labels: ["Refunded", "Denied"],
			datasets: [{
				label: \'Tickets Called For\',
				data: [ '.$ChgE.', '.$SentE.'],
				backgroundColor: [
					\'rgba(255, 99, 132, 0.2)\',
					\'rgba(54, 162, 235, 0.2)\',
					\'rgba(255, 206, 86, 0.2)\',
					\'rgba(75, 192, 192, 0.2)\',
					\'rgba(153, 102, 255, 0.2)\',
					\'rgba(255, 159, 64, 0.2)\'
				],
				borderColor: [
					\'rgba(255,99,132,1)\',
					\'rgba(54, 162, 235, 1)\',
					\'rgba(255, 206, 86, 1)\',
					\'rgba(75, 192, 192, 1)\',
					\'rgba(153, 102, 255, 1)\',
					\'rgba(255, 159, 64, 1)\'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
	</script>';
	?>
	
  </div>
  <div id="repair_drop" style = "display:none;">
  <div class="column2" style="background-color:#FFFFFF;">

	<?php
		
		$ChgE = 0;
		$SentE = 0;
		$RetrA = 0;
		$NA = 0;
		$query9 = "select * from repairSolutions";
		$result9 = pg_query($dbconn, $query9);
		$resultArr9 = pg_fetch_all($result9);
		
		echo 
		'
		
		<h2 style="position: absolute; top: 90px; left: 50%;">Agent Guide</h2>
		
			<table style="position: absolute; top: 150px; left: 50%;">
				
				<tr>
				 <th style ="text-align:left;"> Solutions</th>
				 <th> Frequency</th>
				</tr>';

	foreach($resultArr9 as $array)
	{
			echo '
				<tr>
					 <td>'. $array['Solution'].'</td>
					 <td style="text-align:center;">'. $array['Count'].'</td>
				</tr>
				<tr>
				';
			switch ($array['Solution']) {
				case "Sent Controller Replacement":
					$ChgE = $array['Count'];
					break;
				case "Sent Console Replacement":
					$SentE = $array['Count'];
					break;
				case "Replaced HDD":
					$RetrA = $array['Count'];
					break;
			}
	}
	
	echo '</table>
	<div class="boximg" style="height:500px; width:500px; position: absolute; top: 120px; right: 200px;"><canvas id="barChart3" style=" background-color: #FFF;"></canvas></div></div>
	<script>
	var cpx = document.getElementById("barChart3").getContext(\'2d\');
	var myBarChart3 = new Chart(cpx, {
		type: \'doughnut\',
		data: {
			labels: ["Controller Replacement", "Console Replacement", "HDD Replacement"],
			datasets: [{
				label: \'Tickets Called For\',
				data: [ '.$ChgE.', '.$SentE.', '.$RetrA.'],
				backgroundColor: [
					\'rgba(255, 99, 132, 0.2)\',
					\'rgba(54, 162, 235, 0.2)\',
					\'rgba(255, 206, 86, 0.2)\',
					\'rgba(75, 192, 192, 0.2)\',
					\'rgba(153, 102, 255, 0.2)\',
					\'rgba(255, 159, 64, 0.2)\'
				],
				borderColor: [
					\'rgba(255,99,132,1)\',
					\'rgba(54, 162, 235, 1)\',
					\'rgba(255, 206, 86, 1)\',
					\'rgba(75, 192, 192, 1)\',
					\'rgba(153, 102, 255, 1)\',
					\'rgba(255, 159, 64, 1)\'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
	</script>';
	?>
	
  </div>
  <div id="trouble_drop" style = "display:none;">
  <div class="column2" style="background-color:#FFFFFF;">

	<?php
		
		$ChgE = 0;
		$SentE = 0;
		$RetrA = 0;
		$NA = 0;
		$query10 = "select * from troubleshootingSolutions";
		$result10 = pg_query($dbconn, $query10);
		$resultArr10 = pg_fetch_all($result10);
		
		echo 
		'
		
		<h2 style="position: absolute; top: 90px; left: 50%;">Agent Guide</h2>
		
			<table style="position: absolute; top: 150px; left: 50%;">
				
				<tr>
				 <th style="text-align:left;"> Solutions</th>
				 <th> Frequency</th>
				</tr>';

	foreach($resultArr10 as $array)
	{
			echo '
				<tr>
					 <td>'. $array['Solution'].'</td>
					 <td style="text-align:center;">'. $array['Count'].'</td>
				</tr>
				<tr>
				';
			switch ($array['Solution']) {
				case "Referred to Third Party":
					$ChgE = $array['Count'];
					break;
				case "Connected to Internet":
					$SentE = $array['Count'];
					break;
				case "Free up memory for installation":
					$RetrA = $array['Count'];
					break;
				case "Used external storage for firmware":
					$NA = $array['Count'];
					break;
			}
	}
	
	echo '</table>
	<div class="boximg" style="height:500px; width:500px; position: absolute; top: 120px; right: 200px;"><canvas id="barChart4" style=" background-color: #FFF;"></canvas></div></div>
	<script>
	var cpx = document.getElementById("barChart4").getContext(\'2d\');
	var myBarChart4 = new Chart(cpx, {
		type: \'doughnut\',
		data: {
			labels: ["Third Party", "Internet", "Memory", "Firmware"],
			datasets: [{
				label: \'Tickets Called For\',
				data: [ '.$ChgE.', '.$SentE.', '.$RetrA.', '.$NA.'],
				backgroundColor: [
					\'rgba(255, 99, 132, 0.2)\',
					\'rgba(54, 162, 235, 0.2)\',
					\'rgba(255, 206, 86, 0.2)\',
					\'rgba(75, 192, 192, 0.2)\',
					\'rgba(153, 102, 255, 0.2)\',
					\'rgba(255, 159, 64, 0.2)\'
				],
				borderColor: [
					\'rgba(255,99,132,1)\',
					\'rgba(54, 162, 235, 1)\',
					\'rgba(255, 206, 86, 1)\',
					\'rgba(75, 192, 192, 1)\',
					\'rgba(153, 102, 255, 1)\',
					\'rgba(255, 159, 64, 1)\'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
	</script>';
	?>
	
  </div>
</div>
  

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
<script type="text/javascript">

//Scroll Function
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var rep_drop = document.getElementById("repair_drop");
var acct_drop = document.getElementById("account_drop");
var bill_drop = document.getElementById("billing_drop");
var ts_drop = document.getElementById("trouble_drop");

//SELECTION
$('#ticket_problem').on('change', function(){
   console.log($('#ticket_problem').val());
    $('#problem_category').html('');
    if($('#ticket_problem').val()=='AI'){
        $('#problem_category').append('<option value="7">Hacked by Main Group</option>');
		$('#problem_category').append('<option value="2">Hacker: Do Not Unban</option>');
		$('#problem_category').append('<option value="1">Incorrect Email</option>');
        $('#problem_category').append('<option value="2">Lost Password</option>');
		$('#problem_category').append('<option value="2">Agent did not send email</option>');
		$('#problem_category').append('<option value="2">Case was not worked</option>');
        
		rep_drop.style.display = "none";
		acct_drop.style.display = "block";
		bill_drop.style.display = "none";
		ts_drop.style.display = "none";
	}
     if($('#ticket_problem').val()=='BI'){
        $('#problem_category').append('<option value="4">Credit Card</option>');
        $('#problem_category').append('<option value="6">Store Credit</option>');
		rep_drop.style.display = "none";
		acct_drop.style.display = "none";
		bill_drop.style.display = "block";
		ts_drop.style.display = "none";
    }
	if($('#ticket_problem').val()=='RE'){
        $('#problem_category').append('<option value="5">Out of Warranty</option>');
        $('#problem_category').append('<option value="3">In Warranty</option>');
		rep_drop.style.display = "block";
		account_drop.style.display = "none";
		bill_drop.style.display = "none";
		ts_drop.style.display = "none";
    }
		if($('#ticket_problem').val()=='TS'){
        $('#problem_category').append('<option value="5">HDD Replacement</option>');
        $('#problem_category').append('<option value="3">Fixed Internet Connection</option>');
		$('#problem_category').append('<option value="3">Referred to Third Party</option>');
		$('#problem_category').append('<option value="3">Referred to Internet Service Provider</option>');
        $('#problem_category').append('<option value="6">Firmware Update</option>');
		rep_drop.style.display = "none";
		account_drop.style.display = "none";
		bill_drop.style.display = "none";
		ts_drop.style.display = "block";
    }
});



</script>