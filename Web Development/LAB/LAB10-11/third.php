	<!DOCTYPE html>
	<?php 
	    session_start();
	?>
	<html lang="en">
	
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>PHP Cookies</title>
	</head>
	
	<body style="text-align: center;background-color:black;color: white">
	    <form action="fourth.php">
	        <?php
	            $_SESSION['username']='Arjun Vankani';
	            $_SESSION['subject']='Maths';
	            $_SESSION['start_time']=time();
	            echo "<h3>Username:-".$_SESSION['username']."</h3>";
	            echo "<h3>Subject:-".$_SESSION['subject']."</h3>";
	            echo "<h3>Start-time:-".$_SESSION['start_time']."</h3>";
	        ?>
	        <input type="submit" name="submit" value="Submit">
	    </form>
	    
	</body>
	
	</html>
