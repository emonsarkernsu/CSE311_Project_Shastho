<?php
	/* Database connection settings */
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$db = 'org';
	$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);

	$dateofentry = '';
	$levelofbloodsugar = '';

	//query to get data from the table
	$sql = "SELECT * FROM bloodsugar ";
    $result = mysqli_query($mysqli, $sql);

	//loop through the returned data
	while ($row = mysqli_fetch_array($result)) {

		$dateofentry = $dateofentry . '"'. $row['dateofentry'].'",';
		$levelofbloodsugar = $levelofbloodsugar . '"'. $row['levelofbloodsugar'] .'",';
	}

	$dateofentry = trim($dateofentry,",");
	$levelofbloodsugar = trim($levelofbloodsugar,",");
?>

<!DOCTYPE html>
<html>
	<head>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
		<title>Accelerometer data</title>

		<style type="text/css">
			body{
				font-family: Arial;
			    margin: 80px 100px 10px 100px;
			    padding: 0;
			    color: white;
			    text-align: center;
			    background: #555652;
			}

			.container {
				color: #E8E9EB;
				background: #222;
				border: #555652 1px solid;
				padding: 10px;
			}
		</style>

	</head>

	<body>
	    <div class="container">
			<canvas id="chart" style="width: 100%; height: 65vh; background: #white; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'line',
		        data: {
		            labels:  [<?php echo $dateofentry; ?>],
		            datasets:
		             [
		            {
		            	label: 'Blood Sugar level',
		                data: [<?php echo $levelofbloodsugar; ?>],
		                backgroundColor: 'white',
		                borderColor:'rgba(0,255,255)',
		                borderWidth: 4
		            }]
		        },

		        options: {
		            scales: {scales:{yAxes: [{beginAtZero: false}],
							  xAxes: [{maxTicketsLimit: 20}]}},
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}}
		        }
		    });
			</script>
	    </div>

	</body>
</html>
