<%@ page import="java.sql.*" %>
<%
    String s = (String)session.getAttribute("id");
    if(s=="-1"){
        response.sendRedirect("login.jsp");
    }
%>
<% 
    try{ 
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
        String id = (String)session.getAttribute("id");
        int id1 = Integer.parseInt(id);
        if(request.getParameter("update")!=null){
            String Name,Email,Cont;
            out.println(request.getParameter("update"));
            PreparedStatement ps1 = con.prepareStatement("select * from register where id=?");
            ps1.setInt(1, id1);
            ResultSet rs = ps1.executeQuery();
            if(rs.next()){
                Name = rs.getString(2);
                Email = rs.getString(4);
                Cont = rs.getString(5);
                if(request.getParameter("name_update")!=""){
                    Name = request.getParameter("name_update");
                }
                if(request.getParameter("email_update")!=""){
                    Email = request.getParameter("email_update");
                }
                
                if(request.getParameter("cont_update")!=""){
                    Cont = request.getParameter("cont_update");
                }
                PreparedStatement ps2 = con.prepareStatement("Update register set name=?,email=?,cont_no=? where id=?");
                ps2.setString(1,Name);
                ps2.setString(2,Email);
                ps2.setString(3,Cont);
                ps2.setInt(4,id1);
                ps2.executeUpdate();
            }
        }
        PreparedStatement ps = con.prepareStatement("select * from register where id=?");
        ps.setInt(1, id1);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            out.println(" Name :"+rs.getString(2)+"<br>"+" email :"+rs.getString(4)+"<br>"+" contact No : "+rs.getString(5));
        }

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
    <body >
        <br><br>
        <button onclick="location.href='edit_profile.jsp'">Edit Profile</button><br><br>
        <button onclick="location.href='delete_profile.jsp'">Delete Profile</button><br><br>
        <button name='logout' onclick="location.href='login.jsp'">Log Out</button><br><br>
    </body>
</html>