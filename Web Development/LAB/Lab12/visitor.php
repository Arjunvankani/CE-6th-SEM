<!DOCTYPE html>
<html>
<head>
	<title>Visitor Counter</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<?php 
		$server = "localhost";
		$user = "root";
		$pass = "";
		$db = "counterdb";


		//Connection Query
		$conn = mysqli_connect($server, $user, $pass, $db);

		if($conn){
			"Succfully Connected";
		}
		else{
			die("Connection Failed :" .mysqli_connect_error());
		}

		//Create Query
		$query = "CREATE TABLE view_counter (counter INT(10) NOT NULL)";

		if(mysqli_query($conn, $query)){
			echo "<div class='container'><div class='jumbotron'> <H3>view_counter TABLE created Successfully</H3></div></div>";
		}
		else{
			echo "Error in creating Table :". mysqli_error($conn);
		}

		mysqli_close($conn);
		?>
</body>
</html>



