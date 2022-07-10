package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.sql.DriverManager;

public final class add_005fcategory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html style=\"font-size: 16px;\">\n");
      out.write("  <head>\n");
      out.write("    <title>Add Category</title>\n");
      out.write("  <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\" />\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin />\n");
      out.write("    <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Dancing+Script:wght@507&family=Poppins:wght@100;200;400;600;700&family=Tangerine:wght@700&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("    <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@1&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("  <style>\n");
      out.write("     \n");
      out.write("* {\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("    background: url(\"images/registration1.webp\");\n");
      out.write("}\n");
      out.write("div.main{\n");
      out.write("    padding-top: 80px;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    padding-bottom: 0px;\n");
      out.write("    width: 500px;\n");
      out.write("    margin: auto;\n");
      out.write("}\n");
      out.write("h2 {\n");
      out.write("    color:whitesmoke;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 20px;\n");
      out.write("    font-family: sans-serif;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div.card{\n");
      out.write("    background-color: rgba(0,0,0,0.5);\n");
      out.write("    width: 100%;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 1px solid rbga(255,255,255,0.3);\n");
      out.write("    box-shadow: 2px 2px 15px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("form{\n");
      out.write("    margin:40px;\n");
      out.write("}\n");
      out.write("h3{\n");
      out.write("    color: coral;\n");
      out.write("    font-size: 20px;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
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
      out.write("input[type=\"text\"] {\n");
      out.write("    border-radius: 15px;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 0 10px;\n");
      out.write("    height: 40px;\n");
      out.write("    border: 1px solid black;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
      out.write("textArea{\n");
      out.write("    text-align: center;\n");
      out.write("    font-style: italic;\n");
      out.write("    border-radius: 6px;\n");
      out.write("}\n");
      out.write("select{\n");
      out.write("    font-style: italic;\n");
      out.write("    border-radius: 15px;\n");
      out.write("}\n");
      out.write("textArea:focus,\n");
      out.write("select:focus{\n");
      out.write("    border: 4px solid orange;\n");
      out.write("    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);\n");
      out.write("}\n");
      out.write("label{\n");
      out.write("    font-style: italic;\n");
      out.write("    font-size:20px;\n");
      out.write("}\n");
      out.write("input[type=\"submit\"]{\n");
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
      out.write("input[type=\"text\"]:focus {\n");
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
      out.write("    </head>\n");
      out.write("             ");
 
                 String aid=request.getParameter("aid");               
             
      out.write("   \n");
      out.write("      <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <h2>Welcome ");
      out.print(aid);
      out.write("</h2>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"feedback.jsp\">FEEDBACK</a></li>\n");
      out.write("          <li><a href=\"#Logout\">LOGOUT</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </header>\n");
      out.write("      <div class=\"main\">\n");
      out.write(" <!--cards -->\n");
      out.write("        <div class=\"card\">\n");
      out.write("                <h1 align=\"center\">Add Category</h1>\n");
      out.write("            <div>\n");
      out.write("                <form name=\"f1\" action=\"UploadCategory\" method=\"POST\" enctype=\"multipart/form-data\" class=\"form\">\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("            <table width='100%' align=\"center\">        \n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\">Category Name:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"txttitle\" value=\"\" size=\"30\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><br></td></tr>\n");
      out.write("                <tr><td><br></td></tr>\n");
      out.write("               <input type=\"hidden\" name=\"aid\" value=\"");
      out.print(aid);
      out.write("\">\n");
      out.write("                <tr>\n");
      out.write("                    <td for=\"img\" align=\"center\">Select image:</td>\n");
      out.write("                    <td><input type=\"file\" id=\"img\" name=\"img\" accept=\"image/*\" required> </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td><br></td></tr>   \n");
      out.write("                 <tr><td><br></td></tr>\n");
      out.write("                 <tr><td><br></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"right\"><button type=\"submit\" name=\"btn_upload\" style=\"font-size:15px;margin-left:100px;\" >Upload</button></td>                  \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            </form>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write(" <br>\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("<!--cards -->\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
