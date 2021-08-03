<?php 
$con = new mysqli("localhost", "root", "", "Result");

if(isset($_POST['enroll'])){
	$enroll = $_POST['enroll'];
	$myqur = $con->prepare("select * from SEM6_result where `enroll` = ?");
	$myqur->bind_param("i", $enroll);
	$myqur->execute();
	$data = $myqur->get_result();
	$data = $data->fetch_assoc();
	if($data <= 0){
		echo "<h2 style='color:red'>Result not found, <br>Please contact administraion panel.<h2>";
	}else{
		?>

		<table class="table table-bordered" style="background-color: #7DE3E3; border-radius: 15px">
		    <tr>
		    	<th>Student Name</th>
			    <th>Enrollment No.</th>
			    <th>WP</th>
			    <th>TOC</th>
			    <th>MPI</th>
			    <th>AJP</th>
			    <th>IOT</th>
			    <th>DV</th>
			</tr>
		    <tr>
		        <td><?php echo $data['Name']; ?></td>

		        <td><?php echo $data['enroll']; ?></td>

		        <td><?php echo $data['WP']; ?></td>

		        <td><?php echo $data['TOC']; ?></td>

		        <td><?php echo $data['MPI']; ?></td>

		        <td><?php echo $data['AJP']; ?></td>

		        <td><?php echo $data['IOT']; ?></td>

		        <td><?php echo $data['DV']; ?></td>
		    </tr>
		</table>

		<h2 style="color: green"> Congratulation For your result!!</h2>
		<?php
	}

}
?>
