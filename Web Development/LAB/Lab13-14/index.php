<html>
<head>
    <title>GTU Result</title>
		<meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style type="text/css">
      	div{
      		width: 40%;
      		margin-top: 20px;
      		border-radius: 15px;
      	}
      	input{
      		margin-top: 10px; 
      	}

      </style>
</head>
	
	
<body>
<center>
			<div class="well">
				<h1>Result</h1>
                <form id="myform">
                    <input class="form-control" placeholder="Enter your Enrollment No" type="text" id="enroll" ><br><br>
                    <input class="btn btn-success form-control" type="submit" name="" id="Submit" value="Submit" style="opacity: .8">
                </form>
            </div>

            <div id="restbl">
            </div>

</center>
    <script type="text/javascript">
        var form = document.getElementById("myform");
        form.addEventListener("submit", function(e) {
            e.preventDefault();
            var enroll = document.getElementById("enroll").value;
            var disp = document.getElementById("restbl");

            if (enroll != null && enroll != "") {
                var http = new XMLHttpRequest();
                var url = "resultinfo.php";
                var value = 'enroll=' + enroll;
                http.open('POST', url, true);
                http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                http.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        disp.innerHTML = this.responseText;
                    }
                }
                http.send(value);
            }
        });

    </script>
</body>

</html>
