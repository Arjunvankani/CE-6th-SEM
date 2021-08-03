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

		if(!$conn){
			die("Connection Failed :" .mysqli_connect_error());
		}

		$sql = "UPDATE view_counter SET counter = counter + 1";

		if(mysqli_query($conn, $sql)){
			//echo "<div class='container'><div class='jumbotron'> <H3>Counter Updated Successfully</H3></div></div>";
		}
		else{
			//echo "Error updating  counter :". mysqli_error($conn);
		}



		$sql = "SELECT counter FROM view_counter";
		$result = mysqli_query($conn, $sql);
		$view_count =0;

		if(mysqli_num_rows($result) > 0){
			while($row = mysqli_fetch_assoc($result)){
				$view_count = $row["counter"];
			}
		} 
		else {
			echo "0 results";
		}
		
		echo "<div class='container' ><div class='jumbotron'style='background-color: #E1FFBF'> <H3>This Site has total $view_count  visitors";
		?>



</body>
</html>