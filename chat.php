<html>

<head>
<title>MediChain Appointments</title>
  <!-- META TAGS -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/chat.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>

<?php
	include_once('html/navbar.html');
?>

	  <div class="row">
		  <div class="side">
			  <div class="borderimg" style="height:100%;"> 
				  <div class="dropdown">
					  <center>
					  <button onclick="myFunction(event)" class="dropbtn">Alerts</button><br>
					  <button onclick="dropdown(event)" class="dropbtn">Pending</button><br>
					  <div id="myDropdown" class="dropdown-content">
						    <a href="#">Consumer A</a>
							<a href="#">Consumer B</a>
					  </div>
					  <button onclick="myFunction(event)" class="dropbtn">Create Ticket</button><br>
					  <button onclick="myFunction(event)" class="dropbtn">Solutions</button>
					  </center>
				  </div>
			  </div>
		  </div>
	  </div>
  

	<div class="main">

	    <div class="borderimg" style="height:100%;">	  
		  <div class="chatcontainer">
			<form id="sendForm" style= "height:auto; width:auto;">
			  <div id="msg" style= "height:1000px; overflow:auto;"></>
			  <div id = "inputBox" class="input-group" style= "height:auto; width:auto;">
				<input  type="text" id="chatMessage" class="form-control">
				<div class="input-group-btn">
				  <button class="btn" onClick ="sendmsg(event)" type="submit" id="sendMessage">Send</button>
				</div>
			  </div>
			</form>
		  </div></div>
		</div>
	
    </div>

</body>

<script>
function dropdown(event){
	document.getElementById("myDropdown").classList.toggle("show");
}

function sendmsg(e){
	e.preventDefault();
	console.log("sfw");
	$('#msg').append('<p class = "message_item">' + '<b>Owner: </b>'+ $('#chatMessage').val() + '</p>');
	$('#chatMessage').val('');
	
}

</script>
</html>