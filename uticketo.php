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

if (isset($_POST['fix_drop'])){	
		$selectOption =	$_POST['fix_drop'];
		
		switch($selectOption)	
		{
		
		case 'AI':	

			$status2 = $_POST['status_drop2'];
			$prob_des2 = htmlspecialchars($_POST['problem_descr2']);
			$prob_area2 = '4';
			
		
			
			$sql = "SELECT createTicket('$status2', '$prob_des2', '$prob_area2')";
			
			$result = pg_query($dbconn, $sql);
		
			break;
		}
			
	}
	
}
			

	

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>OXYSquare Analytics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="icon" href="pictures/control.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="./css/console.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>


	
<div class="navbar">
	  <a href="http://delphi.cs.csubak.edu/~apoon/front.php">Home</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/console.php"  class="active">Agent Console</a>
	  <a href="#">Visual Analytics</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/report.php">Report Generator</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/ticket.php">Create a Ticket</a>
	  <a href="#">Training</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/logout.php" class="right">Log Out</a>
	</div>
<div class="row">
  <div class="side" style = "-ms-flex:15%; flex: 15%; height:1050px;"><!--background-color: #79bfe3;"-->
      <h2>Console Navigation</h2>
      <center><div class="boximg">
	    <div class="btn-group">
		<button id = "pending">Chats Pending</button>
		<button id = "createTic">Create Ticket</button>
		<button id = "updateTic">Update Ticket</button>
		</div>
		<!--a href="#">Alerts</a>
		<button class="dropdown-btn">Pending 
		<i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
		<a href="?search">Consumer A</a>
		<a href="#">Consumer B</a>
		</div>
		<a href="#">Create Ticket</a>
		<a href="#">Solutions</a>
	  </div--></center>
     
  </div>	
  <div class="main" style = "-ms-flex:85%; flex: 85%; height:1050px;">
      <h2>Chat Console: </h2>
	<form class="update-content" action="" id="register_form" method="post">
	<div class="container" style = "top: 159px; left: 358px; position: absolute; width:600px; height: 500px;">
    <label for="fix_dropdown"><b>Ticket Type</b></label>
    <select id="ticket_problem2" name ="fix_drop">
	<option selected="selected" disabled="disabled">Select  Type</option>
	<option value="AI">Account Issues</option>
    <option value="BI">Billing</option>
	<option value="RE">Repair</option>
	<option value="TS">Troubleshooting</option>
	</select>
	<br>
	<label for="problem_drop2down2"><b>Issue</b></label>
    <select id="problem_category2" name="problem_drop2">
	<option selected="selected" disabled="disabled">
    </select>
	</br>
    </select>
	<label for="status_drop2"><b>Ticket Status</b></label>
    <select id="ticket_status2" name ="status_drop2">
	<option selected="selected" disabled="disabled">Select Status</option>
	<option value="Open">Open</option>
    <option value="Closed">Closed</option>
	</select>
	<!--label for="subject"><b>Subject</b></label>
    <input type="text" placeholder="Enter Subject" name="subject" required-->  
	<label for="description"><b>Description</b></label>
	<textarea rows="4" cols="50" name="problem_descr2" form="register_form" onfocus="this.value='';" >Enter Text Here...</textarea>
	
	<button type="submit" class="signupbtn" name="submit_button">Submit Ticket </button>
    </div>    
  </form>
  </div>
  <div class="ticket" style = "overflow: auto; top: 159px; right: 358px; position: absolute; width:600px; height: 500px;">
  
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
				 <td> <a id ="ticketid" href="http://delphi.cs.csubak.edu/~apoon/uticket.php?ticketid='.$array['ticketid'].'" >'. $array['ticketid'].'
				 </a></td>
				 <td style="text-align:center;"> '.$array['problemdescription'].' </td>
				 <td style="text-align:center;"> '.$array['problemarea'].' </td>
				</tr>
		';
			
		
		}
	echo '</table>';	
		
	
	
	
	
	?>
  
  </div>
</div>
</div>
<div class="footer">
  <h4>Thank you for serving OXYSquare!</h4>
</div>
	


  

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
<script>
	$(".modal-content ").hide();
	$(".agentview").hide();
	$(".consumer").hide();
	$(".update-content").hide();
	$(".ticket").hide();
	
	
	$("#pending").click(function(){
		$(".agentview").show();
		$(".consumer").show();
		$(".modal-content ").hide();
		$(".update-content").hide();
		$(".ticket").hide();
		$(".barchart1").hide();
		
	});
	$("#createTic").click(function(){
		$(".modal-content").show();
		$(".agentview").hide();
		$(".consumer").hide();
		$(".update-content").hide();
		$(".ticket").hide();
	    $(".giant_box").show();
		
	});
	
	$("#updateTic").click(function(){
		$(".modal-content").hide();
		$(".agentview").hide();
		$(".consumer").hide();
		$(".update-content").show();
		$(".ticket").show();
		$(".barchart1").hide();
		$(".giant_box").hide();
		
	});

	$( ".agentview" ).load( "agentinfo.php" );
	
		function consumer(e, num){
		e.preventDefault();
		$( ".consumer" ).load( "consumerinfo.php",{id: num} );
	}
	
	var coll = document.getElementsByClassName("collapsible");
	var i;

	for (i = 0; i < coll.length; i++) {
	  coll[i].addEventListener("click", function() {
		this.classList.toggle("active");
		var content = this.nextElementSibling;
		if (content.style.maxHeight){
		  content.style.maxHeight = null;
		} else {
		  content.style.maxHeight = content.scrollHeight + "px";
		} 
	  });
	}
	$( function() {
		$( "#draggable" ).draggable();
	} );

	$( function() {
		$( "#resizable" ).resizable();
	} );
	var state = 0;
	updateChat();
function chatstart(e, id, chatid){
	e.preventDefault();
	$( ".chatperson" ).load( "chatbegin.php", {accountid: id, chat: chatid} );	
	$("#chatstart").html("");
	state = 0;	
}
function submitaction(e){
	e.preventDefault();
	message = $('#msgarea').val()
	$('#msgarea').val("");
	$.ajax({
	   type: "POST",
	   url: "sendmessage.php",
	   data: {  
				'message': message,
				},
	   success: function(data){
			
			
	   },
	});
	
}

function updateChat(){
	
	$.ajax({
	   type: "POST",
	   url: "fillchatdisplay.php",
	   data: {  
				'state':state,
			},
	   dataType: "json",
	   success: function(data){
			
			if (data.text != null) {
				$("#chatstart").html("");
				
				for (var i = 0; i < data.text.length; i++) {  
					$('#chatstart').append(data.text[i]);
				}
				document.getElementById('chatstart').scrollTop = document.getElementById('chatstart').scrollHeight;

			}
			state = data.state;
			setTimeout(updateChat, 15000);
	   },
	});
}
	
	