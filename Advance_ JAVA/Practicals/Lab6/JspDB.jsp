<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2;
    public void jspInit()
    {
        try
        {
			
			//loading the driver
            Class.forName("com.mysql.jdbc.Driver");
            //establish the connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/java_practical", "root", "");
            //create statement object
            ps1 = con.prepareStatement("select count(*) from userlist where username = ? and password=?");
            ps2 = con.prepareStatement("select * from userlist");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
    String param = request.getParameter("s1");
    if(param =="link")
    {
        ResultSet rs = ps2.executeQuery();
        out.println("<table>");
        while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {
        //write jdbc code for authentication
        String user = request.getParameter("uname");
        String pass = request.getParameter("pwd");
        //set form data as param value
        ps1.setString(1,user);
        ps1.setString(2,pass);
        //excute the query
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
            out.println("<div style='margin-left:400px'><b><i><font color='#A0DBDB'>Invalid credential! <br> Please Try again!</font></i></b></div>");
        else
        {
            out.println("<form style='margin-left:400px' ><fieldset style= width:75%; >");
            out.println("<b><i><font color='#A0DBDB'>valid credential..</font></i></b><br>");
            out.println("<b><i><font size=18 color='#ABD6BF' >Welcome to My Page</font></i></b>");
            out.println("</fieldset></form>");
        }
    }
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>