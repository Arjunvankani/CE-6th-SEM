<%@ page import="java.sql.*" %>

<% 
    String name = request.getParameter("user"); 
    String password = request.getParameter("pass");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
        PreparedStatement ps = con.prepareStatement("select * from register where name=? and password=?");
        ps.setString(1, name);
        ps.setString(2, password);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            String id = String.valueOf(rs.getInt(1));
            session.setAttribute("id",id);
            response.sendRedirect("view_profile.jsp");
        }
        else{
            response.sendRedirect("login.jsp");
        }
    }
    catch(Exception e){
        out.println(e);
    }
%>