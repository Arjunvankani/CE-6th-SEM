<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <?php
    $servername="localhost";
    $username="root";
    $pass="";
    $con=mysqli_connect($servername,$username,$pass);
    if(!$con){
        die("connection faled:-".mysqli_connect_error());
    }
    $sql="create database counterDB ";
    if(mysqli_query($con,$sql)){
        echo "database created";
        mysqli_select_db($con,'counterDB');
        $con1=mysqli_connect($servername,$username,$pass,"counterDB");
        if(!$con1){
            echo "Not Connected to database";
        }
        else{
            $table="Create table visitor_counter(
                counter INT(10) NOT NULL)";
            if(mysqli_query($con,$table)){
                echo "</br>table created";
            }
            else{
                echo "table not created".mysqli_connect_error($con1);
            }
        }
    }
    else{
        echo "Error:-".mysqli_error($con);
    }
    mysqli_close($con);
    ?>
</body>
</html>
