<%@ page language="java" contentType="text/html"%>
<%
    if(request.getParameter("logout")==null){
        session.setAttribute("id","-1");
    }

%>
<!DOCTYPE html>
<html>
    <head>

        <title>Login</title>
    </head>
    <body >
        <div style="text-align: center;">
        <div class='jumbotron'style='background-color: #E1FFBF'> 
            <br>
        <div>
        <form action='login_connect.jsp' method="post">
            <h1>Login Page</h1>
            <table style="margin-left: 600px;">
                <tr>
                    <td >Username:-</td>
                    <td><input type='text' name='user'></td>
                </tr>
                <tr>
                    <td>Password:-</td>
                    <td><input type='password' name='pass'></td>
                </tr>
            </table><br>
            <button type="Submit">Submit</button><br><br>
        </form>
    </div>
</div></div>
    </body>
</html>