package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class forgotpassword_005fs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Reset Page</title>\n");
      out.write("        <link href=\"CSS/stylereset.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\" />\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin />\n");
      out.write("    <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Dancing+Script:wght@507&family=Poppins:wght@100;200;400;600;700&family=Tangerine:wght@700&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("    <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@1&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("    </head>\n");
      out.write("   <style>\n");
      out.write("     \n");
      out.write("* {\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("    background: url(\"images/registration2.jpeg\");\n");
      out.write("}\n");
      out.write("div.main{\n");
      out.write("    padding-top: 80px;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    padding-bottom: 0px;\n");
      out.write("    width: 400px;\n");
      out.write("    margin: auto;\n");
      out.write("}\n");
      out.write("h2 {\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 20px;\n");
      out.write("    font-family: sans-serif;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div.forget_pass{\n");
      out.write("    background-color: rgba(0,0,0,0.5);\n");
      out.write("    width: 100%;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 1px solid rbga(255,255,255,0.3);\n");
      out.write("    box-shadow: 2px 2px 15px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("form#my_form{\n");
      out.write("    margin:40px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div,\n");
      out.write("section,\n");
      out.write("span,\n");
      out.write("ul,\n");
      out.write("li,\n");
      out.write("a,\n");
      out.write("header {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("header {\n");
      out.write("  width: 100%;\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: space-between;\n");
      out.write("  padding: 5px 30px;\n");
      out.write("  align-items: center;\n");
      out.write("  position: fixed;\n");
      out.write("}\n");
      out.write("#logo {\n");
      out.write("  color: #ff7200;\n");
      out.write("  font-family: \"Tangerine\", cursive;\n");
      out.write("  font-weight: bolder;\n");
      out.write("  font-size: 45px;\n");
      out.write("}\n");
      out.write("#menu li {\n");
      out.write("  list-style-type: none;\n");
      out.write("  display: inline-block;\n");
      out.write("  margin: 20px;\n");
      out.write("}\n");
      out.write("#menu li a {\n");
      out.write("  color: white;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 20px;\n");
      out.write("  font-family: Arial;\n");
      out.write("  font-weight: 500;\n");
      out.write("  transition: 0.4s ease-in-out;\n");
      out.write("}\n");
      out.write("#menu li a:hover {\n");
      out.write("  color: #ff7200;\n");
      out.write("  text-decoration: underline;\n");
      out.write("}\n");
      out.write(" \n");
      out.write("input[type=\"text\"]\n");
      out.write(" {\n");
      out.write("    border-radius: 15px;\n");
      out.write("    text-align: center;\n");
      out.write("    width: 90%;\n");
      out.write("    display:block;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    padding: 0 10px;\n");
      out.write("    height: 40px;\n");
      out.write("    margin: auto;\n");
      out.write("    margin-bottom: 15px;\n");
      out.write("    border: 1px solid black;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("input[type=\"submit\"]\n");
      out.write(" {\n");
      out.write("    border-radius: 15px;\n");
      out.write("    font-style: italic;\n");
      out.write("    width: 90%;\n");
      out.write("    margin: auto;\n");
      out.write("    display:block;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    padding: 0 10px;\n");
      out.write("    height: 40px;\n");
      out.write("    background-color:#ff9b29;\n");
      out.write("    color:#fff;\n");
      out.write("    font-size: 18px;\n");
      out.write("    margin-bottom: 15px;\n");
      out.write("    border: 1px solid black;\n");
      out.write("}\n");
      out.write("input[type=\"text\"]\n");
      out.write(":focus {\n");
      out.write("    border: 4px solid orange;\n");
      out.write("    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);\n");
      out.write("}\n");
      out.write(".hidden-label {\n");
      out.write("    position:absolute;\n");
      out.write("    height:0;\n");
      out.write("    width:0;\n");
      out.write("    overflow:hidden;\n");
      out.write("    visibility:hidden;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("      <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp\">HOME</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#AboutUs\">ABOUT US</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#ContactUs\">CONTACT US</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </header>\n");
      out.write("    <body>\n");
      out.write("        <section id=\"home\">\n");
      out.write("            <header>\n");
      out.write("              <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("              <ul id=\"menu\">\n");
      out.write("                <li><a href=\"#home\">HOME</a></li>\n");
      out.write("                <li><a href=\"#AboutUs\">ABOUT US</a></li>\n");
      out.write("                <li><a href=\"#ContactUs\">CONTACT US</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </header>\n");
      out.write("            <section>\n");
      out.write("      \n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"forget_pass\">\n");
      out.write("                <form name=\"my_form\" id=\"reset\" method=\"post\" onsubmit=\"return resetPass()\">\n");
      out.write("                    <h2 class=\"heading\">Forget Password</h2>\n");
      out.write("<!--                    <label>User id :</label>-->\n");
      out.write("       \n");
      out.write("                    <input type=\"text\" name=\"uid\" id=\"uid\" placeholder=\"Enter Smart Id\" required=\"\">\n");
      out.write("                    <br>\n");
      out.write("<!--                    <label >Email :</label>-->\n");
      out.write("                    \n");
      out.write("                    <input type=\"text\" name=\"email\" id=\"uid\" placeholder=\"Enter email Id\" required=\"\">\n");
      out.write("                    \n");
      out.write("                    <br>\n");
      out.write("                  <input type=\"submit\" value=\"submit\" name=\"submit\" id=\"submit\">\n");
      out.write("                  <br>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");

    if(request.getParameter("submit")!=null)
    { 
    try{
        String Userid = request.getParameter("uid"); 
        String email = request.getParameter("email");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        String query = "";
            session.setAttribute("sid",Userid);
            query="Select s_id,s_email from seller where s_id=? and s_email=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, email);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())        
                     response.sendRedirect("resetpassword_s.jsp");        
                 else
                 {
                   
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert(\"Invalid userid or password\"); \n");
      out.write("                            window.location= \"forgotpassword_s.jsp\";\n");
      out.write("                        </script>\n");
      out.write("                       \n");
      out.write("                    ");
   
                 }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"); 
       
   }      

    }
  

      out.write("\n");
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
