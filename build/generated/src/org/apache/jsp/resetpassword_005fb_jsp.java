package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class resetpassword_005fb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("com.mysql.jdbc.Driver");
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
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("    font-size: 100%;\n");
      out.write("    font-family: Arial, Helvetica, sans-serif;\n");
      out.write("    background: url(\"images/registration2.jpeg\");\n");
      out.write("  }\n");
      out.write("  h2 {\n");
      out.write("      text-align: center;\n");
      out.write("  }\n");
      out.write("  header {\n");
      out.write("    width: 100%;\n");
      out.write("    display: flex;\n");
      out.write("    justify-content: space-between;\n");
      out.write("    padding: 5px 30px;\n");
      out.write("    align-items: center;\n");
      out.write("    position: fixed;\n");
      out.write("  }\n");
      out.write("  #logo {\n");
      out.write("    color: #ff7200;\n");
      out.write("    font-family: \"Tangerine\", cursive;\n");
      out.write("    font-weight: bolder;\n");
      out.write("    font-size: 45px;\n");
      out.write("  }\n");
      out.write("  #menu li {\n");
      out.write("    list-style-type: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    margin: 20px;\n");
      out.write("  }\n");
      out.write("  #menu li a {\n");
      out.write("    color: white;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font-size: 20px;\n");
      out.write("    font-family: Arial;\n");
      out.write("    font-weight: 500;\n");
      out.write("    transition: 0.4s ease-in-out;\n");
      out.write("     margin: 0 20px; \n");
      out.write("  }\n");
      out.write("  #menu li a:hover {\n");
      out.write("    color: #ff7200;\n");
      out.write("    text-decoration: underline;\n");
      out.write("  }\n");
      out.write("  section {\n");
      out.write("    width: 90%;\n");
      out.write("    height: 100vh;\n");
      out.write("    float: left;\n");
      out.write("  }\n");
      out.write("   \n");
      out.write("  #home {\n");
      out.write("    background: url(\"homepage2.jpeg\");\n");
      out.write("    background-size: cover;\n");
      out.write("  }\n");
      out.write("  #AboutUs {\n");
      out.write("    background-color: rgb(0, 255, 149);\n");
      out.write("  }\n");
      out.write("  #ContactUs {\n");
      out.write("    background-color: #e5ff00;\n");
      out.write("  }\n");
      out.write("    \n");
      out.write("  /* .main{\n");
      out.write("    width: 350px;\n");
      out.write("    height: 450px;\n");
      out.write("    background-color: black;\n");
      out.write("    opacity: 0.75;\n");
      out.write("    position: absolute;\n");
      out.write("    text-align: center;\n");
      out.write("    margin-left: 200px;\n");
      out.write("    border-radius: 15px;\n");
      out.write("  \n");
      out.write("  } */\n");
      out.write("  .heading{\n");
      out.write("      color:aliceblue;\n");
      out.write("  }\n");
      out.write("  form {\n");
      out.write("      background-color: black;\n");
      out.write("      opacity: 0.75;\n");
      out.write("      padding: 20px 30px;\n");
      out.write("      border: 2px solid white;\n");
      out.write("      position: absolute;\n");
      out.write("      width: 350px;\n");
      out.write("      height: 350px;\n");
      out.write("      margin-left: 550px;\n");
      out.write("      border-radius: 15px;\n");
      out.write("      top: 100px;\n");
      out.write("  \n");
      out.write("  }\n");
      out.write("  input[type=\"password\"],\n");
      out.write("  input[type=\"text\"] {\n");
      out.write("      width: 100%;\n");
      out.write("      display:block;\n");
      out.write("      box-sizing: border-box;\n");
      out.write("      padding: 0 10px;\n");
      out.write("      height: 40px;\n");
      out.write("      margin-bottom: 15px;\n");
      out.write("      border: 1px solid black;\n");
      out.write("      border-radius: 10px;\n");
      out.write("  }\n");
      out.write("  input[type=\"submit\"] {\n");
      out.write("      width: 100%;\n");
      out.write("      display:block;\n");
      out.write("      box-sizing: border-box;\n");
      out.write("      padding: 0 10px;\n");
      out.write("      height: 40px;\n");
      out.write("      background-color: #ff7200;\n");
      out.write("      margin-bottom: 15px;\n");
      out.write("      border: 1px solid black;\n");
      out.write("      border-radius: 10px;\n");
      out.write("  }\n");
      out.write("  input[type=\"email\"]:focus,\n");
      out.write("  input[type=\"number\"]:focus,\n");
      out.write("  input[type=\"password\"]:focus,\n");
      out.write("  input[type=\"text\"]:focus {\n");
      out.write("      border: 2px solid gray;\n");
      out.write("      box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);\n");
      out.write("      border-radius: 10px;\n");
      out.write("  }\n");
      out.write("  .hidden-label {\n");
      out.write("      position:absolute;\n");
      out.write("      height:0;\n");
      out.write("      width:0;\n");
      out.write("      overflow:hidden;\n");
      out.write("      visibility:hidden;\n");
      out.write("  }\n");
      out.write("        </style>\n");
      out.write("    <body>\n");
      out.write("        <section id=\"home\">\n");
      out.write("            <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp\">HOME</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#AboutUs\">ABOUT US</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/BookSpot/homepage.jsp#ContactUs\">CONTACT US</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </header>\n");
      out.write("            <section>\n");
      out.write("      \n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"reset\">\n");
      out.write("                <form name=\"myform\" id=\"reset\" method=\"post\" onsubmit=\"return resetPass()\">\n");
      out.write("                    <h2 class=\"heading\">Change Password</h2>\n");
      out.write("                    \n");
      out.write("                    <br><br>\n");
      out.write("                    <label hidden>New Password :</label>\n");
      out.write("                    \n");
      out.write("                    <input type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Enter New Password\" required=\"\">\n");
      out.write("    \n");
      out.write("                    <label hidden>Confirm Password :</label>\n");
      out.write("                    \n");
      out.write("                    <input type=\"password\" name=\"cpass\" id=\"cpass\" placeholder=\"Confirm Password\" required=\"\">\n");
      out.write("                  \n");
      out.write("                    <input type=\"submit\" value=\"Reset\" name=\"reset\" id=\"reset\">\n");
      out.write("                </form>\n");
      out.write("                <script>\n");
      out.write("                    function resetPass(){\n");
      out.write("//                        var uid = document.myform.uid.value;\n");
      out.write("//                        var role = document.myform.role.value;\n");
      out.write("                        var pass = document.myform.pass.value;\n");
      out.write("                        var cpass = document.myform.cpass.value;\n");
      out.write("                        if(pass.length < 8)\n");
      out.write("                        {\n");
      out.write("                            alert(\"Password must be at least 8 characters long\");\n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                        if(pass != cpass)\n");
      out.write("                        {\n");
      out.write("                            alert(\"Confirm password is not same as new password\");\n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                 </script>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    if(request.getParameter("reset") != null)
    {   String userid= (String) session.getAttribute("bid");
        String p = request.getParameter("pass");
        String query = "";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
             query = "update buyer set b_pass = '"+p+"' where b_id = '"+userid+"'";
            Statement stmt = conn.createStatement();
            int i = stmt.executeUpdate(query);
            if(i > 0)
            {
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Password is reset\");\n");
      out.write("                    window.location = \"resetpassword_b.jsp\";\n");
      out.write("                </script>\n");
      out.write("                ");

            }
            else{
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Error : Some of your creadentials are wrong\");\n");
      out.write("                    window.location = \"resetpassword_b.jsp\";\n");
      out.write("                </script>\n");
      out.write("                ");

            }
        }catch(Exception e){e.printStackTrace();}
    }
    
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
