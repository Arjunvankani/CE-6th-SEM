<!DOCTYPE html>
<html>
<head>
	<title>DATABAE CREATE</title>
</head>
<body>

	<?php 
		$server = "localhost";
		$user = "root";
		$pass = "";
		$db = "Result";

		$conn = mysqli_connect($server, $user, $pass, $db);

		if(!$conn) {
			die("Connection failed: ".mysqli_connect_error());	
				}

		$stmt = $conn->prepare("INSERT INTO SEM6_result (enroll, Name, WP, TOC, MPI, AJP, IOT, DV) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("isssssss",$enroll, $name, $wp, $toc, $mpi, $ajp, $iot, $dv);

		$enroll = $_GET["enroll"];
		$name = $_GET["name"];
		$wp = $_GET["wp"];
		$toc = $_GET["toc"];
		$mpi = $_GET["mpi"];
		$ajp = $_GET["ajp"];
		$iot = $_GET["iot"];
		$dv = $_GET["dv"];

		$stmt->execute();

		echo "<div class='container'><div class='jumbotron'> <H3>Result is successfully stored into Database.</H3></div></div>";

		?>
</body>
</html>