// Import required java libraries
import java.io.*;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
 
// Extend HttpServlet class
public class CurrentDate extends HttpServlet {
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      // Set response content type
      response.setContentType("text/html");
 
      PrintWriter out = response.getWriter();
      Date date = new Date();
      out.println("<h2>"+"Current Date & Time: " +date.toString()+"</h2>");
   }
}