	<!DOCTYPE html>
	<?php
	    session_start();
	    $en1=$_SESSION['start_time']+60;
	?>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv='refresh' content='10' URL="$_SESSION['PHP_SELF']">
	    <title>Document</title>
	</head>
	<body style="text-align: center;background-color:black;color: white">
	    <?php  
                  
	        echo "<h3>Username:-".$_SESSION['username']."</h3>";
	        echo "<h3>Subject:-".$_SESSION['subject']."</h3>";
	        echo "<h3>Start-time:-".$_SESSION['start_time']."</h3>";  
	    ?>
	    <?php
	        if(time()>=$en1){
	            session_unset();
	            echo "<script>alert('Session is unset')</script>";
	            session_destroy();
	            echo "<script>alert('Session is destroy')</script>";
	        }
	        else{
	            echo "<script>alert('Session is set')</script>";
	        }
	    ?>
	</body>
	</html>
