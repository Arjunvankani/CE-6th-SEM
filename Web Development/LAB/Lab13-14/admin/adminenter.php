<!DOCTYPE html>
<html>
<head>
	<title>Result Enter Panel</title>
	<link rel="stylesheet" href="register.css">
</head>
<body>
 <h1 id="reg_text">Registration</h1>
    <form id="form" action="datafill.php" method="get">
        <fieldset class="field">
            <legend>Personal Details</legend>
            <table class="table">
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" placeholder="Enter the name"><br></td>
                </tr>
                <tr>
                    <td><label for="enroll">Enrollment No.:</label></td>
                    <td><input type="number" id="enroll" name="enroll" placeholder="Enter the enrollment number"><br>
                    </td>
                </tr>
                <H2> Enter Grades for below subjects --> </H2>
                <tr>
                    <td><label for="wp">Web Devlopment : </label></td>
                    <td>
                        <select name="wp" id="wp">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label for="toc">Thoery of Computation : </label></td>
                    <td>
                        <select name="toc" id="toc">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label for="mpi">Micro Processor & Interfacing : </label></td>
                    <td>
                        <select name="mpi" id="mpi">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label for="ajp">Advance Java Programming : </label></td>
                    <td>
                        <select name="ajp" id="ajp">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>

                
                <tr>
                    <td><label for="iot">Internet Of Things : </label></td>
                    <td>
                        <select name="iot" id="iot">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label for="dv">Data Visulization : </label></td>
                    <td>
                        <select name="dv" id="dv">
                            <option value="Select">Select</option>
                            <option value="AA">AA</option>
                            <option value="AB">AB</option>
                            <option value="BB">BB</option>
                            <option value="BC">BC</option>
                            <option value="CC">CC</option>
                            <option value="CD">CD</option>
                            <option value="DD">DD</option>
                            <option value="FF">FF</option>
                        </select>
                    </td>
                </tr>
            </table>
        </fieldset>


        <table class="table">
            <tr>
                <td><input type="submit" value="Submit" class="submit_btn"></td>
            </tr>
        </table>
    </form>



</body>
</html>