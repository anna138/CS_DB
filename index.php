
<?php

session_start();
//This if statement will be true when

if($_SERVER["REQUEST_METHOD"] == "POST"){
	
	
	$dbconn = pg_connect("host=localhost dbname=apoon port=5432 user=apoon password=Tuh73Qvaq")
	or die('Could not connect: ' . pg_last_error());
	//security
	//this helps gets SQL injection but doesn't completely eliminate them.
	$username = pg_escape_string($dbconn, $_POST['username']);
	$pass = pg_escape_string($dbconn, $_POST['password']);
	
	
	
	$id = "select agentID from agent where emailAdd = $1 and password = $2";
	$result = pg_query_params($dbconn,$id, array($username, $pass));
	
	$_SESSION = array();
	$numofrows = pg_num_rows($result);
	if($numofrows == 1){
		session_register("username");
		$array = pg_fetch_array($result);
		$_SESSION['login_user'] = $username;
		$_SESSION['id'] = $array['agentid'];
		//print_r($array['agentid']);
		//print_r($_SESSION);
		
		header("location: front.php");
		
	}else{
		echo "<h1 style = \"text-align:center\"> Password incorrect </h1>"; 
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width", initial=scale=1.0">
	<link rel="stylesheet" href="css/zindex.css">
	<script src="js/yindex.js"></script>
</head>
<body>

	<center> 
	<div class="container"  style=" top: 230px; width:30%;">
	  <form action="" method="post">  
		  <h2 style="text-align:center"> OXYSquare AgentView</h2>
			<input type="text" name="username" style="width:93%;" placeholder="Username" required>
			<input type="password" name="password" style="width:93%;"  placeholder="Password" required>
			<input type="submit" name = 'loginbutton' value="Login" style="width:60%; background-color: #82bcde; color: #eaeaea;"></form>
	  <input type = "submit" value = "Signup" onclick="document.getElementById('id01').style.display='block'" style="width:60%; background-color: #82bcde ; color:eaeaea ;">
	</div>
	<center><div id="id01" class="modal">
	  
	  <form class="modal-content" action="./signup.php">
	  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
		<div class="container">
		  <h1>Sign Up</h1>
		  <p>Please fill in this form to create an account.</p>
		  <hr>
		  <label for="email"><b>Email</b></label>
		  <input type="text" placeholder="Enter Email" style="width:95%;" name="email" required>

		  <label for="psw"><b>Password</b></label>
		  <input type="password" placeholder="Enter Password" style="width:95%;" name="psw" required>

		  <label for="psw-repeat"><b>Repeat Password</b></label>
		  <input type="password" placeholder="Repeat Password" style="width:95%;" name="psw-repeat" required>

		  <div class="clearfix">
			<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
			<button type="submit" class="signupbtn">Sign Up</button>
		  </div>
		</div>
	  </form>
	</div>
	</center>

<script>
</script>
</body>
	
