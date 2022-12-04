package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class manageFeedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    
        String Aid = (String) session.getAttribute("aid");
        session.setAttribute("aid",Aid);
        String Aname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        
        String query = "Select * from admin where a_id = '"+Aid+"' ";
        
        Statement stmt=conn.createStatement(); 
        ResultSet rs=stmt.executeQuery(query);  
        if(rs.next())
         Aname=rs.getString(3);  

      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    int fid = 0;
    
      out.write("\n");
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
      out.write("        div.main{\n");
      out.write("             text-align: centre;\n");
      out.write("   background-color: rgba(0,0,0,0.5);\n");
      out.write("    width: 100%;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 1px solid rbga(255,255,255,0.3);\n");
      out.write("    box-shadow: 2px 2px 15px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("  .content{\n");
      out.write("      padding-top: 30px;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    padding-bottom: 30px;\n");
      out.write("    width: 800px;\n");
      out.write("   margin:auto;\n");
      out.write("    }\n");
      out.write("    .heading{\n");
      out.write("    text-align: center;\n");
      out.write("    }\n");
      out.write("        body{\n");
      out.write("            padding-left: 200px;\n");
      out.write("            padding-right: 200px;\n");
      out.write("           background: url(manage_buyer.jpeg);\n");
      out.write("        }\n");
      out.write("        table{\n");
      out.write("            width: 100%;\n");
      out.write("        }\n");
      out.write("table, th, td {\n");
      out.write("  border:1px solid white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".Fid{\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".btn{\n");
      out.write("    background-color: #ff7200;\n");
      out.write("    text-align: center;\n");
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
      out.write("  .heading{\n");
      out.write("      font-family: monospace;\n");
      out.write("  }\n");
      out.write("  h2{\n");
      out.write("      text-align: center;\n");
      out.write("      color: white;\n");
      out.write("      font-style: italic;\n");
      out.write("      text-decoration: underline;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar fixed-top navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <span class=\"head\" href=\"#\">&#128366; BV-BookSpot</span>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    </button>\n");
      out.write("                <ul id=\"menu\">\n");
      out.write("                <li><a href=\"http://localhost:8080/BookSpot/adminhome.jsp\">ADMIN HOME</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#AboutUs\">ABOUT US</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#ContactUs\">CONTACT US</a></li>\n");
      out.write("              </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <h2>Welcome ");
      out.print(Aname);
      out.write("</h2>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"heading\"><h2>The feedbacks of users are : </h2></div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <th class=\"Fid\">Feedback Id</th>\n");
      out.write("                <th class=\"Fid\">Description</th>\n");
      out.write("                <th class=\"Fid\">Manage Feedback</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from feedback");
            rst = pstmt.executeQuery();
             while (rst.next()) {
                    fid = rst.getInt("f_id");
                    String desc = rst.getString("f_desc");
                
      out.write("\n");
      out.write("                <tr id=\"");
      out.print(fid);
      out.write("\">\n");
      out.write("                    <td class=\"Fid\">");
      out.print(fid );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(desc );
      out.write("</td>\n");
      out.write("                    <td class=\"Fid\"><a href=\"deleteFeedback.jsp?Fid=");
      out.print(fid);
      out.write("\" class=\"btn btn-secondary my-3\">Remove</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
}}catch(Exception e){e.printStackTrace();}
                
      out.write("\n");
      out.write("        </table>\n");
      out.write("         </div>  \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
