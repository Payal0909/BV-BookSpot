package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class loginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2>Login page</h2>\n");
      out.write("\n");
      out.write("<form method=\"post\" onsubmit=\"validate()\">\n");
      out.write("  <label for=\"userid\">User id:</label><br>\n");
      out.write("  <input type=\"text\" id=\"userid\" name=\"uid\" required><br>\n");
      out.write("  <label for=\"password\">Password:</label><br>\n");
      out.write("  <input type=\"text\" id=\"password\" name=\"pwd\" required ><br>\n");
      out.write("  <label for=\"role\">Role:</label><br>\n");
      out.write("  <select id=\"role\" name=\"role\">\n");
      out.write("  <option value=\"admin\">Admin</option>\n");
      out.write("  <option value=\"seller\">Seller</option>\n");
      out.write("  <option value=\"buyer\">Buyer</option>\n");
      out.write("</select><br><br>\n");
      out.write("  <input type=\"submit\" value=\"Submit\">\n");
      out.write("</form> \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<script>\n");
      out.write("    function validate()\n");
      out.write("    {\n");
      out.write("        ");

    try{
        String Userid = request.getParameter("uid"); 
        String password = request.getParameter("pwd");
        String role = request.getParameter("role");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        String query = "";
        if(role.equals("admin"))
        {
            session.setAttribute("aid",Userid);
             query="Select a_id,a_pass from admin where a_id=? and a_pass=?";
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("adminhome.jsp");        
                 else
                   out.println("Invalid login credentials");
        }  
        else if(role.equals("seller"))
        {
            session.setAttribute("sid",Userid);
            query="Select s_id,s_pass from seller where s_id=? and s_pass=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("sellerhome.jsp");        
                 else
                   out.println("Invalid login credentials");  
        }   
        else if(role.equals("buyer"))
        {
            session.setAttribute("bid",Userid);
             query="Select b_id,b_pass from buyer where b_id=? and b_pass=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("buyerhome.jsp");        
                 else
                   out.println("Invalid login credentials");
        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"); 
       
   }      

      out.write("\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
