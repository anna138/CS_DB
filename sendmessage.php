<?php
	session_start();
	$file = "./chats/chattranscript";
	$file .= $_SESSION['chatid'];
	$file .= ".txt";
	$today = new DateTime("now");
	
	chmod($file, 0777);
	$fh = fopen($file, 'a') or die($php_errormsg);

	fwrite($fh,"<div class=\"container darker\"><img src=\"img/xperson.jpg\" alt=\"Avatar\" class = \"right\" style=\"width:100%; \"><p>".$_POST['message']."</p> <span class=\"time-left\">".$today->format('Y.m.d')."</span></div>\n" )
		or die($php_errormsg);

?>