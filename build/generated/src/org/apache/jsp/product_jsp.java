package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("\n");
 Class.forName("com.mysql.jdbc.Driver");
      out.write('\n');

    
        String Bid = (String) session.getAttribute("bid");  
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query1 = "Select * from buyer where b_id = '"+Bid+"' ";
        Statement stmt=conn.createStatement(); 
        ResultSet rs1=stmt.executeQuery(query1);  
        if(rs1.next())
         Bname=rs1.getString(3);
  

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resource/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            font-family: Verdana, Geneva, Tahoma, sans-serifs;\n");
      out.write("            background-color: #ffdab3;\n");
      out.write("        }\n");
      out.write("h4{\n");
      out.write("    text-align: center;\n");
      out.write("    font-family: Arial, Helvetica, sans-serif;\n");
      out.write("    font-size: 25px;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write(".btn {\n");
      out.write("  text-align: center;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 20px;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 250px;\n");
      out.write("  height: 43px;\n");
      out.write("  background-color: #ff7200;\n");
      out.write("}\n");
      out.write(".heading{\n");
      out.write("      color:black;\n");
      out.write("      font-family: Arial, Helvetica, sans-serif;\n");
      out.write("      text-align: center;\n");
      out.write("  }\n");
      out.write(".card{\n");
      out.write("    background-color: #414141;\n");
      out.write("    /*opacity: 0.75;*/\n");
      out.write("}\n");
      out.write(".head{\n");
      out.write("    font-size: 25px;\n");
      out.write("    color: #ff7200;\n");
      out.write("    font-weight: bolder;\n");
      out.write("    font-family: inherit;\n");
      out.write("}\n");
      out.write("#menu li {\n");
      out.write("    list-style-type: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    margin: 10px;\n");
      out.write("  }\n");
      out.write("  #menu li a {\n");
      out.write("    color: white;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font-size: 15px;\n");
      out.write("    font-family: Arial;\n");
      out.write("    transition: 0.4s ease-in-out;\n");
      out.write("  }\n");
      out.write("  #menu li a:hover {\n");
      out.write("    color: #ff7200;\n");
      out.write("    text-decoration: underline;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar fixed-top navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <span class=\"head\" href=\"#\">&#128366; BV-BookSpot</span>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    </button>\n");
      out.write("                <ul id=\"menu\">\n");
      out.write("                <li><a href=\"buyerHome.jsp\">BUYER HOME</a></li>\n");
      out.write("                <li><a href=\"favourites.jsp\">MY CART</a></li>\n");
      out.write("                <li><a href=\"feedback_buyer.jsp\">FEEDBACK</a></li>\n");
      out.write("                <li><a href=\"homepage.jsp\">LOGOUT</a></li>\n");
      out.write("              </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <h2 class=\"heading\">Welcome ");
      out.print(Bname);
      out.write("</h2>\n");
      out.write("        <div class=\"row mx-4\">\n");
      out.write("            ");

            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                int Cid = Integer.parseInt(request.getParameter("Cid"));
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from product where c_id = ?");
            pstmt.setInt(1, Cid);
            rst = pstmt.executeQuery();
             while (rst.next()) {
                    String name = rst.getString("p_name");
                    String path = rst.getString("p_image");
                    int pid = rst.getInt("p_id");
                    int sp = rst.getInt("p_price");
                
      out.write("\n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("            <div class=\"card my-3 mx-1\">\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                  <img src=\"images/");
      out.print( path);
      out.write("\" width=\"90rem\" height=\"200\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                  <br>\n");
      out.write("                  <br>\n");
      out.write("                  <h4>Price : ");
      out.print(sp );
      out.write("</h4>\n");
      out.write("                <a href=\"proSpecify.jsp?Pid=");
      out.print(pid);
      out.write("\" class=\"btn btn-secondary my-3\">");
      out.print(name );
      out.write("</a>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("                ");

            }
}
catch(Exception e)
{
System.out.println(e.toString());
}
            
      out.write("\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("   </body>\n");
      out.write("</html>\n");
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
