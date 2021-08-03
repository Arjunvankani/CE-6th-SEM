<%@ page import="java.sql.*" %>
<% 
    try{ 
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
        String id = (String)session.getAttribute("id");
        int id1 = Integer.parseInt(id);
        PreparedStatement ps = con.prepareStatement("Delete from register where id=?");
        ps.setInt(1, id1);
        int x=ps.executeUpdate();
        if(x>0){
            response.sendRedirect("registration.jsp");
        }
        else{
            response.sendRedirect("view_profile.jsp");
        }
    }
    catch(Exception e){
        out.println(e);
    }
%>