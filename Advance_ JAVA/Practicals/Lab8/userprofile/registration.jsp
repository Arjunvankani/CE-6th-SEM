<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
    </head>
    <body >
        <div>
            <div style="text-align: center;">
        <div class='jumbotron'style='background-color: #E1FFBF'> 
            <br>
        <form action='reg_connect.jsp' method="post">
            <h1>Registration Page</h1>
            <table style="margin-left: 600px;">
                <tr>
                    <td>Username:-</td>
                    <td><input type='text' name='user'></td>
                </tr>
                <tr>
                    <td>Password:-</td>
                    <td><input type='password' name='pass'></td>
                </tr>
                <tr>
                    <td>Email:-</td>
                    <td><input type='email' name='email'></td>
                </tr>
                <tr>
                    <td>Contact No:-</td>
                    <td><input type='number' name='cont_no'></td>
                </tr>
            </table>
            <button type="Submit">Submit</button><br><br>
        </form>
    </div>
</div></div>
    </body>
</html>