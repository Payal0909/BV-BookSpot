package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class sellerhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    
        String Sid = (String) session.getAttribute("sid");
        session.setAttribute("sid",Sid);
        String Sname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        
        String query = "Select * from seller where s_id = '"+Sid+"' ";
        
        Statement stmt=conn.createStatement(); 
        ResultSet rs=stmt.executeQuery(query);  
        if(rs.next())
         Sname=rs.getString(3);  

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Seller home page</title>\n");
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
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                background: url(\"images/book81.jpeg\");\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("               text-decoration: none;\n");
      out.write("            } \n");
      out.write("            h2{\n");
      out.write("                color: whitesmoke;\n");
      out.write("                font-size: 40px;\n");
      out.write("                font-style: italic;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                color: coral;\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-style: italic;\n");
      out.write("            }\n");
      out.write("            .div1{\n");
      out.write("                column-gap: 100px;\n");
      out.write("                background-color: #ffdab3;\n");
      out.write("                padding:20px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                box-shadow: 0px 0px 15px 2px teal;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("            .div1:hover{\n");
      out.write("                transform:scale(0.9);\n");
      out.write("                box-shadow:0px 0px 5px 7px teal;\n");
      out.write("                transition: 0.3s;\n");
      out.write("            }\n");
      out.write("            table{\n");
      out.write("                border-collapse: separate;\n");
      out.write("                border-spacing: 150px 15px;\n");
      out.write("                text-align: center;\n");
      out.write("                margin-left: 290px;\n");
      out.write("                margin-right: 170px;\n");
      out.write("                margin-top: 190px;\n");
      out.write("            }\n");
      out.write("            img{\n");
      out.write("                height: 150px;\n");
      out.write("                width: 200px;\n");
      out.write("            }\n");
      out.write("            div,\n");
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
      out.write("input[type=\"email\"],\n");
      out.write("input[type=\"number\"],\n");
      out.write("input[type=\"password\"],\n");
      out.write("input[type=\"text\"] {\n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <h2>Welcome ");
      out.print(Sname);
      out.write("</h2>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"#home\">HOME</a></li>\n");
      out.write("          <li><a href=\"#AboutUs\">ABOUT US</a></li>\n");
      out.write("          <li><a href=\"#ContactUs\">CONTACT US</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </header>\n");
      out.write("    <body>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <table id=\"table\">\n");
      out.write("        <tr>\n");
      out.write("            <td>\n");
      out.write("                <div class=\"div1\">\n");
      out.write("                    <br>\n");
      out.write("                    <a href=\"http://localhost:8080/BookSpot/post_product.jsp\">\n");
      out.write("                       <img src=\"images/post.svg\"/>\n");
      out.write("                       <h3>Post Products</h3>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <div class=\"div1\">\n");
      out.write("                    <br>\n");
      out.write("                    <a href=\"http://localhost:8080/BookSpot/viewmyproducts.jsp?sid=");
      out.print(Sid);
      out.write("&pageno=1\">\n");
      out.write("                    <img src=\"images/view.svg\"/>\n");
      out.write("                    <h3>View My Products</h3>\n");
      out.write("                </a>\n");
      out.write("                </div>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
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
