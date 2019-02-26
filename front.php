<?php
	require_once('session.php');
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>OXYSquare Analytics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/console.css" rel="stylesheet">
<link rel="icon" href="pictures/control.png">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>

<style>
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}
</style>
<body>

<div class="header">
  <h1>OXYSquare Analytics</h1>
  <p><b>Welcome</b> Agent.</p>
</div>
<?php
	include_once('html/navbar.html');
?>

<div class="row">
  <div class="side">
      <h2>Chats Today</h2>
      <center><div class="boximg" style="height:550px; width: 570px;">
		<canvas id="barChart" style = "height:550px; width: 550px; background-color: #FFF;"></canvas>
	  </div></center>
	  <h2>Agent Progress</h2>
      <h5>Customer Satisfaction:</h5>
	  <center><div class="boximg" style="height:550px; width: 570px;">
		<canvas id="radarChart" style = "background-color: #FFF;" ></canvas>
	  </div></center>
  </div>
  <div class="main">
      <h2>Notifications: </h2>
      <h5>Today's Alerts</h5>
	  <h5>	-Watch out for Lizard Squad Hacker Group ie. account187@yahoo.com</h5>
	  <h5>	-Troubleshooting Calls on the Rise</h5>
  </div>
</div>

<div class="footer">
  <h4>Thank you for serving OXYSquare!</h4>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
<script>
				var ctx = document.getElementById("barChart");
				var barChart = new Chart(ctx, {
					type: 'bar',
					data: {
						labels: ["Account Issues", "Troubleshooting", "Hardware Repair", "Billing", "Overall"],
						datasets: [{
							label: '# of Chats',
							data: [12, 19, 3, 5, 2],
							backgroundColor: [
								'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								
							],
							borderColor: [
								'rgba(255,99,132,1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								
							],
							borderWidth: 1
						}]
					},
					options: {
						scales: {
							yAxes: [{
								ticks: {
									beginAtZero:true
								}
							}]
						}
					}
				});
				var ctx2 = document.getElementById("radarChart");
				var radarChart = new Chart(ctx2, {
					type: 'radar',
					data: {
						labels: ["Account Issues", "Troubleshooting", "Hardware Repair", "Billing", "Overall"],
						datasets: [{
							label: 'This Agent',
							data: [12, 19, 3, 5, 10],
							backgroundColor: [
								'rgba(255, 99, 132, 0.2)',
								
							],
							borderColor: [
								'rgba(255,99,132,1)',
								
							],
							borderWidth: 1
						},
						{
							label: 'All Agents',
							data: [20, , 15, 10, 5],
							backgroundColor: [
								'rgba(54, 162, 235, 0.2)',
								
							],
							borderColor: [
								'rgba(54, 162, 235, 1)',
								
							],
							borderWidth: 1
						}]
					},
					options: {
						scales: {
							yAxes: [{
								ticks: {
									beginAtZero:true
								}
							}]
						}
					}
				});
				

				
</script>
<script>


	
</script>
</html>
