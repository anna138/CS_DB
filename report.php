<?php
	require_once('session.php');
	
	$flag = 0;
	$startDate = strip_tags($_POST['startDate']); 
	$endDate = strip_tags($_POST['endDate']);
	
	/* B- REPORTS FOR CUSTOMER SATISFACTION*/
	$query = "SELECT * FROM agentPerformance where astarttime > '$startDate' and aendtime < '$endDate'";
	
	$result = pg_query($dbconn, $query);
	$resultArr = pg_fetch_all($result);
	
	$query2 = "SELECT speciality, avg(avgCustSat) as \"Customer Satisfaction\", sum(totaltime) as \"Total Time\", sum(totalcost) as \"Total Cost\" FROM aggSalesAgentReport where astarttime > '$startDate' and aendtime < '$endDate' group by speciality";
	$result2 = pg_query($dbconn, $query2);
	$resultArr2 = pg_fetch_all($result2);
	/* E- REPORTS FOR CUSTOMER SATISFACTION*/
	
	/* B- REPORTS FOR CUSTOMER SATISFACTION*/
	$query3 = "select to_char(startdate, 'MM-DD-YYYY') as \"Date\", \"Zip Code\",
	 SUM(\"Time in Queue\") as \"Time in Queue\",
	 SUM(\"Total Cost\") as \"Cost\"
	 from chatsDropped where startdate > '$startDate' and enddate < '$endDate'
	 group by startdate, \"Zip Code\" order by startdate ASC";
	$result3 = pg_query($dbconn, $query3);
	$resultArr3 = pg_fetch_all($result3);

	$query4 = "select \"Zip Code\", 
	 TRUNC(avg(\"Total Dropped\"), 3) as \"Dropped Percentage\", 
	 TRUNC(sum(\"Total Cost\"), 2) as \"Total Cost\", 
	 TRUNC(sum(\"Time in Queue\"),2)  as \"Time in Queue\"
	 from chatsDroppedByZipCode where startdate > '$startDate' and enddate < '$endDate' group by \"Zip Code\" order by \"Zip Code\" ASC";

	$result4 = pg_query($dbconn, $query4);
	$resultArr4 = pg_fetch_all($result4);
	/* E- REPORTS FOR CUSTOMER SATISFACTION*/
	
	if ($result) 
		{
			$flag = 1;
		}
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>OXYSquare Analytics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link rel="icon" href="pictures/control.png">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.semanticui.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.semanticui.min.css">
<!--
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css">
 

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<script src="https://cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js"></script>
-->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.semanticui.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.semanticui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>


<link href="./css/front.css" rel="stylesheet">
<link href="./css/report.css" rel="stylesheet">

<style>

table caption {
	padding: .5em 0;
}

table.dataTable th,
table.dataTable td {
  white-space: nowrap;
}
</style>


</head>
<body style = "overflow:auto;">

<div class="header">
  <h1>OXYSquare Analytics</h1>
  <p><b>Welcome</b> Agent.</p>
</div>
	<div class="navbar">
	  <a href="http://delphi.cs.csubak.edu/~apoon/front.php">Home</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/console.php">Agent Console</a>
	  <a href="#">Visual Analytics</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/report.php" class="active">Report Generator</a>
	  <a href="#">Training</a>
	  <a href="http://delphi.cs.csubak.edu/~apoon/logout.php" class="right">Log Out</a>
	</div>


<div class="row1">
  <div class="side1">
  
	  <form action="http://delphi.cs.csubak.edu/~apoon/report.php" method="post" enctype="multipart/form-data">
      <h3>Start Date:</h3>
      <center><input type="date" value="2018-01-01" name="startDate" required="required"></center>
	  <h3>End Date:</h3>
      <center><input type="date" value = "2018-12-30" name = "endDate" required="required"></center>
	  <h3>Report:</h3>
	  <select name="report_type">
      <option value="csFPDF.php">Customer Satisfaction</option>
	  <option value="droppedFPDF.php">Chats Dropped</option>
      <option value="agentPerform">Agent Performance</option>
      </select>
	  </center>
	  <center><input type="submit" name="submit_time"></input></center></pre><hr>
	  </form>
	  <form action="" method="post" enctype="multipart/form-data">
	  <h3>Report History:</h3>
	  <center>
	  <select id="report_history" onchange="location = this.value;">

	  <?php
			
			$dir    = './pdf';
			$files = array_diff(scandir($dir), array('.', '..'));

			foreach($files as $file){
				echo '<option value=./pdf/'.$file.'>'.$file.'</option>';
			}
			
	  
	  ?>
	  
      </select>
	  </center>
	  <center><input type="submit" name="Delete" value="Delete" onclick="deletefile(event, this)"></input></center></pre><hr>
	  </form>
	  	
  </div>
  <div class="main" style="height:900px; overflow-y: auto;">
      

<?php
	if($_POST['report_type'] == "droppedFPDF.php"){
		include_once('php/droppedReport.php');
	}else{
		include_once('php/csReport.php');
	}
?>
	  
  </div>
     
</div>

<div class="footer" style="position:  absolute; bottom:100%;">
  <h4>Thank you for serving OXYSquare!</h4>
</div>

</body>

<script>
var pdf = "<?php echo $_POST['report_type']?>";

$.get("./pdf/", function(data){
	
    $("#main").append(data);
});

function deletefile(event, the){
	event.preventDefault();
	var selected = $('#report_history option:selected').val();
	
	$.ajax({
	   type: "GET",
	   url: "deletefiles.php",
	   data: {  
				'file': selected,
				},
	   success: function(data){
			
			
	   },
	});
	
	
}


$(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: [ {text: 'Aggregate Summary',
			action:function ( e, dt, node, config ) {
				window.open(pdf);
            }

		}, 'excel', 'pdf', 'colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( $('div.eight.column:eq(0)', table.table().container()) );
} );
/*
$('.table').DataTable( {
    buttons: [
        {
            extend: 'pdf',
            text: 'Save current page',
            exportOptions: {
                modifier: {
                    page: 'current'
                }
            }
        }
    ]
});*/
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
/* B- REPORTS FOR CUSTOMER SATISFACTION/
jQuery(document).ready(function($) {
    $(".pdf_report").click(function() {
		window.open("csFPDF.php");
      
    });
/ E- REPORTS FOR CUSTOMER SATISFACTION*/

/* B- REPORTS FOR CUSTOMER SATISFACTION*/

jQuery(document).ready(function($) {
    $(".pdf_report").click(function() {	
		window.open(pdf);
});
/* E- REPORTS FOR CUSTOMER SATISFACTION*/
	
	
});
</script>
</html>
