<%@ page import="java.sql.*"%>
<%
    String name=request.getParameter("user");
    String password=request.getParameter("pass");
    String email=request.getParameter("email");
    String cont_no = request.getParameter("cont_no");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
        
        Statement st = con.createStatement();
        String sqr = "insert into register(name,password,email,cont_no) values('"+name+"','"+password+"','"+email+"','"+cont_no+"')";
        int x = st.executeUpdate(sqr);
        if(x>0){
            PreparedStatement ps = con.prepareStatement("select * from register where name=? and password=?");
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                String id = String.valueOf(rs.getInt(1));
                session.setAttribute("id",id);
                response.sendRedirect("view_profile.jsp");
            }
            response.sendRedirect("view_profile.jsp");
        }
        else{
            response.sendRedirect("registration.jsp");
        }

    }
    catch(Exception e){
        out.println(e);
    }
%>