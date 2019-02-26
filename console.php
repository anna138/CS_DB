<?php
	require_once('session.php');
	
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
<body>
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
  <div class="side" style = "-ms-flex:15%; flex: 15%;"><!--background-color: #79bfe3;"-->
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
  <div class="main" style = "-ms-flex:85%; flex: 85%;">
      <h2>Chat Console: </h2>
      <div class="boximg" style="height:947px;">
	 <!-- FORM CODE -->
	    
		
		<div class = "agentview" style="overflow:auto; float:left; width:50%; height:70%;">

		</div>
	  
		<div class = "consumer" style="overflow:auto; float:right; width:50%; height:70%;">
	  
		</div>
		<?php
			require_once('cticket.php');
		?>  

		<?php
			require_once('uticket.php');
		?>
	  </div>
      
  </div>
  
  </div>
  <button class="collapsible" style="position: absolute; bottom:2%; right: 2%;">Open Chat</button>
	<div id="draggable"  class="content" style = "width: 750px; overflow-y: scroll;"><div id = "chatwindow" style = "width:auto;"> 
	  <h2 class = "chatperson">Chatting with: </h2>
		<div class="messages_display" id="chatstart"></div>
		<div class="container darker"  onsubmit="submitaction(event);">
			<form action="" >
				<textarea placeholder="Type message... " name="msg" id="msgarea" style="width:100%" required></textarea>				 
				<button type = "submit" class="btn">Send Message</button>
			</form>
		</div>

</div></div>

<div class="footer">
  <h4>Thank you for serving OXYSquare!</h4>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	
	$(".modal-content ").hide();
	$(".agentview").hide();
	$(".consumer").hide();
	$(".update-content").hide();
	$(".ticket").hide();
	$(".giant_box").hide();
	$("#pending").click(function(){
		$(".agentview").show();
		$(".consumer").show();
		$(".modal-content ").hide();
		$(".update-content").hide();
		$(".ticket").hide();
		
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
		$(".giant_box").hide();
		
	});

	$( ".agentview" ).load( "agentinfo.php" );
 
	function consumer(e, num){
		e.preventDefault();
		$( ".consumer" ).load( "consumerinfo.php",{id: num} );
	}
	function ticketfill(e, ticketid, focusid, status, description){
		e.preventDefault();
		$('#tid').load("tidload.php", {tid:ticketid});
		$('#sid').load("sidload.php", {sid:status});
		$('#pid').load("pidload.php", {pid:focusid});
		$('#descrp').load("probdesc.php", {desc:description});
	
   }
	function updatetickets(e){
	   e.preventDefault();
	   tid = $('#tid').val();
	   sid = $('#sid').val();
	   pid = $('#pid').val();
	   desc = $('#descrp').val();
	
	   window.location.href = "updatetickettable.php?tid1=" + tid + "&pid1="+pid + "&sid1="+sid+"&desc1="+desc;
		
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
			setTimeout(updateChat, 1500);
	   },
	});
}
 
	

</script>