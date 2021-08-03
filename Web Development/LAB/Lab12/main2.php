<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $con=mysqli_connect("localhost",'root',"",'counterDB');
        if(!$con){
            die("Connection Failed: ".mysqli_connect_error());
        }
        $sql="UPDATE visitor_counter SET counter=counter+1";
        if(mysqli_query($con,$sql)){
            echo "update successfully";
        }
        else{
            echo "Not update";
        }
        $sql1="SELECT * from visitor_counter";
        $result=mysqli_query($con,$sql1);
        $view_result=0;
        if(mysqli_num_rows($result)>0){
            while($row=mysqli_fetch_assoc($result)){
                $view_result=$row["counter"];
            }
        }
        else{
            echo "0 result";
        }
        echo "<p>This website has total <b>$view_result</b> visitors</p> ";
    ?>
</body>
</html>
