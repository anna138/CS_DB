<?php
	session_start();
	require_once('session.php');
	include_once('html/header.html');
	global $dbconn;
	
	
?>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" style = "color: white"; class="closebtn" onclick="closeNav()">&times;</a>
  <a href="http://delphi.cs.csubak.edu/~mbal/front.php">Home</a>
  <a href="#">Alerts</a>
    <button class="dropdown-btn">Pending 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="?search">Consumer A</a>
    <a href="#">Consumer B</a>
  </div>
  <a href="#">Create Ticket</a>
  <a href="#">Solutions</a>
  <a href="http://delphi.cs.csubak.edu/~mbal/logout.php">Logout</a>
</div>
<!--Code for Main-->
<div id="main"> 
  
  <!--To Open Side Navigation Bar -->
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span> 
  
  <!-- Search Bar -->
  <form>
  <input type="text" name="search" placeholder="Search.." style="position: absolute; top:2%; right: 2%;">
  </form>
  
  <!--Agent Console-->
  <!--div class="row">
  <div class="column" style="background-color:#aaa; opacity: 0.7;  position: absolute; top:20%; left: 5%; width: 40%;">
    <h2>Column 1</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:#bbb; opacity: 0.7; position: absolute; top:20%; right: 5%; width: 40%;">
    <h2>Column 2</h2>
    <p>Some text..</p>
  </div>
	</div-->
  <!--a href="#" id="projects">Projects</a>
  <a href="#" id="contact">Contact</a-->
  </div>
  <br>
  <br>
  <div class = "agentview" style="overflow:auto; float:left; width:50%; height:70%; background:#;">

  </div>
  
  <div class = "consumer" style="overflow:auto; float:right; width:50%; height:70%; background:#;">
  
  </div>
  

 
 

  
  <!-- Chat Window -->
  <button class="collapsible" style="position: absolute; bottom:2%; right: 2%;">Open Chat</button>
	<div id="draggable"  class="content" style = "width: 750px; overflow-y: scroll;"><div id = "chatwindow" style = "width:auto;"> 
	  <h2 class = "chatperson">Chating with: </h2>
		<div class="messages_display" id="chatstart"></div>
		<div class="container darker"  onsubmit="submitaction(event);">
			<form action="" >
				<textarea placeholder="Type message... " name="msg" id="msgarea" style="width:100%" required></textarea>				 
				<button type = "submit" class="btn">Send Message</button>
			</form>
		</div>

	</div></div>
  


<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
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
</script>
  
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( ".agentview" ).load( "agentinfo.php" );
  var state = 0;
  var instance = false;
  updateChat();
function consumer(e, num){
	e.preventDefault();
	$( ".consumer" ).load( "consumerinfo.php",{id: num} );
}
function chatstart(e, id, chatid){
	e.preventDefault();
	$( ".chatperson" ).load( "chatbegin.php", {accountid: id, chat: chatid} );	
	$("#chatstart").html("");
	state = 0;
	//clearTimeout(updateChat());

	
}
function submitaction(e){
	e.preventDefault();
//	$("<div class=\"container darker\"><img src=\"img/xperson.jpg\" alt=\"Avatar\" class = \"right\" style=\"width:100%; \"><p>" + $('#msgarea').val() + "</p> <span class=\"time-left\">11:05</span></div>").appendTo( "#chatstart" );
	
//    var scrolli = document.getElementById('chatstart');
//    scrolli.scrollTop = scrolli.scrollHeight;
		
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
function getlines(){
	
	$.ajax({
		   type: "POST",
		   url: "countlines.php",
		   data: {  
					'state':state,
			},
			dataType: "json",
		   success: function(data){
			    state = data.state;
				instance = false;
				
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
  $( function() {
    $( "#draggable" ).draggable();
  } );

  $( function() {
    $( "#resizable" ).resizable();
  } );
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
  
</script>

     
</body>
</html>