<?php
	session_start();
	
    
    $state = htmlentities(strip_tags($_POST['state']), ENT_QUOTES);
	$file = "./chats/chattranscript";
	$file .= $_SESSION['chatid'];
	$file .= ".txt";
	
	if (file_exists($file)) {
        $lines = file($file);
    }

	if($state < count($lines)){
		$log['state'] = count($lines);
		echo json_encode($log);	
	}
	else{
		echo false;
	}
?>