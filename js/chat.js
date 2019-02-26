function submitaction(e){
	e.preventDefault();
//	$("<div class=\"container darker\"><img src=\"img/xperson.jpg\" alt=\"Avatar\" class = \"right\" style=\"width:100%; \"><p>" + $('#msgarea').val() + "</p> <span class=\"time-left\">11:05</span></div>").appendTo( "#chatstart" );
//	$('#msgarea').val("");
//    var scrolli = document.getElementById('chatstart');
//    scrolli.scrollTop = scrolli.scrollHeight;
		message = $('#msgarea').val()
	    $.ajax({
		   type: "POST",
		   url: "sendmessage.php",
		   data: {  
					'message': message,
					},
	//	   dataType: "json",
		   success: function(data){
		  
		   },
		});
	
}
