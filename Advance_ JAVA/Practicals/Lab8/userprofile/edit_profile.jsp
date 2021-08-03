<%@ page import="java.sql.*" %>
<%
    String s=(String)session.getAttribute("id");
    if(s=="-1"){
        response.sendRedirect("login.jsp");
    }
%>
<% 
    try{ 
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
        String id = (String)session.getAttribute("id");
        int id1 = Integer.parseInt(id);
        PreparedStatement ps = con.prepareStatement("select * from register where id=?");
        ps.setInt(1, id1);
        ResultSet rs = ps.executeQuery();
    }
    catch(Exception e){
        out.println(e);
}
%>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
    <body>
    <form action="view_profile.jsp" method='post'>
        Name:-<input type='text' placeholder="Enter the Name" name='name_update'/><br><br>
        Email:-<input type='email' placeholder="Enter the Email" name="email_update"/><br><br>
        Contact No:-<input type="number" placeholder="Enter the Contact No" name="cont_update"/><br><br>
        <button name="update" type="submit">Update</button>
    </form>
    </body>
</html>
