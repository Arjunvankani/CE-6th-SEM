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


				$sql = "CREATE TABLE SEM6_result ( id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
					enroll BIGINT(18) NOT NULL,
					Name VARCHAR(20) NOT NULL,
					WP VARCHAR(2) NOT NULL,
					TOC VARCHAR(2) NOT NULL,
					MPI VARCHAR(2) NOT NULL,
					AJP VARCHAR(2) NOT NULL,
					IOT VARCHAR(2) NOT NULL,
					DV VARCHAR(2) NOT NULL,
					TimeStamp TIMESTAMP)";

			if(mysqli_query($conn, $sql)){
			echo "<div class='container'><div class='jumbotron'> <H3>Result  TABLE created Successfully</H3></div></div>";
		}
		else{
			echo "Error in creating Table :". mysqli_error($conn);
		}

		mysqli_close($conn);
		?>
</body>
</html>