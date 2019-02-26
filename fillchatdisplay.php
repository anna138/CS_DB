<?php
	session_start();
	
	function getfile($f) {
    
    	if (file_exists($f)) {
            $lines = file($f);
        }	
        
        return $lines; 
        
    }
    
    function getlines($fl){
          return count($fl);	
    }
    
    $state = htmlentities(strip_tags($_POST['state']), ENT_QUOTES);
	$file = "./chats/chattranscript";
	$file .= $_SESSION['chatid'];
	$file .= ".txt";


    
    if ($state == $count) {
    
        $log['state'] = $state;
        $log['text'] = false;
        
    } else {
    
        $text= array();
        $log['state'] = $state + getlines(getfile($file)) - $state;
        
        foreach (getfile($file) as $line_num => $line) {
            $text[] =  $line = str_replace("\n", "", $line);
            
            $log['text'] = $text; 
        }
    }
	
    echo json_encode($log);	

	

?>