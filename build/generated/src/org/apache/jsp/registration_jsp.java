package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.*;
import java.io.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registration Page</title>\n");
      out.write("  <!--      <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/style_registration_page.css\"> -->\n");
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
      out.write("div.register{\n");
      out.write("    background-color: rgba(0,0,0,0.5);\n");
      out.write("    width: 100%;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 1px solid rbga(255,255,255,0.3);\n");
      out.write("    box-shadow: 2px 2px 15px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("form#register{\n");
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
      out.write("textArea{\n");
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
      out.write("input[type=\"submit\"],\n");
      out.write("input[type=\"reset\"] {\n");
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
      out.write("input[type=\"email\"]:focus,\n");
      out.write("input[type=\"number\"]:focus,\n");
      out.write("input[type=\"password\"]:focus,\n");
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
      out.write("    <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"#home\">HOME</a></li>\n");
      out.write("          <li><a href=\"#AboutUs\">ABOUT US</a></li>\n");
      out.write("          <li><a href=\"#ContactUs\">CONTACT US</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </header>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"register\">\n");
      out.write("    <!--        <img src=\"images/water.png\" alt=\"logo\" class=\"center\" width=\"200\" height=\"100\"> -->\n");
      out.write("                <form name=\"myform\" method=\"post\" onsubmit=\"return validateForm()\">\n");
      out.write("                    <h2>Register Here</h2>\n");
      out.write("                    <br>\n");
      out.write("                    <label for=\"name\" class=\"hidden-label\">Name : </label>\n");
      out.write("                    <input id=\"name\" type=\"text\" name=\"name\" placeholder=\"Enter your name\" required>\n");
      out.write("                    <label for=\"studentID\" class=\"hidden-label\">Student ID : </label>\n");
      out.write("                    <input id=\"studentID\" type=\"text\" name=\"sid\" placeholder=\"Enter Smart-ID\" required>\n");
      out.write("                    <label for=\"pass\" class=\"hidden-label\">Password : </label>\n");
      out.write("                    <input id=\"pass\" type=\"password\" name=\"password\" placeholder=\"Enter Password\" required>\n");
      out.write("                    <label for=\"no\" class=\"hidden-label\">Contact Number : </label>\n");
      out.write("                    <input id=\"no\" type=\"number\" name=\"pno\" placeholder=\"Enter Contact Number\" required>\n");
      out.write("                    <label for=\"mail\" class=\"hidden-label\">Email ID : </label>\n");
      out.write("                    <input id=\"mail\" type=\"email\" name=\"email\" placeholder=\"Enter your email id\" required>\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <label for=\"mytextarea\" class=\"hidden-label\">Address : </label>\n");
      out.write("                    <textarea name=\"address\" rows=\"5\" cols=\"35\" id=\"mytextarea\" placeholder=\"  Hostel Name Room number Bed number\" required></textarea>\n");
      out.write("                    <br><br>\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <label for=\"role\" class=\"hidden-label\">Role : </label>\n");
      out.write("                    <select name=\"drprole\" id=\"role\" required>\n");
      out.write("                        <option disabled selected value>Choose role </option>\n");
      out.write("                        <option value=\"Seller\">Seller</option>\n");
      out.write("                        <option value=\"Buyer\">Buyer</option>\n");
      out.write("                    </select>\n");
      out.write("                    <br><br>\n");
      out.write("                    <input type=\"submit\" value=\"Submit\" name=\"submit\" id=\"submit\">\n");
      out.write("                    <input type=\"reset\" value=\"Reset\" name=\"reset\" id=\"reset\">\n");
      out.write("                    <br>\n");
      out.write("                </form>\n");
      out.write("                <script>\n");
      out.write("//                   function generateOTP()\n");
      out.write("//                   {\n");
      out.write("//                       var digits = '0123456789';\n");
      out.write("//                       let OTP = '';\n");
      out.write("//                       for (let i = 0; i < 4; i++)\n");
      out.write("//                       {\n");
      out.write("//                          OTP += digits[Math.floor(Math.random() * 10)];\n");
      out.write("//                       }\n");
      out.write("//                       return OTP;\n");
      out.write("//                   }\n");
      out.write("                    function validateForm()\n");
      out.write("                    {\n");
      out.write("                        var email = document.myform.email.value;\n");
      out.write("                        var address = document.myform.address.value;\n");
      out.write("                        var password = document.myform.password.value;\n");
      out.write("                        var pno = document.myform.pno.value;\n");
      out.write("                        var sid = document.myform.sid.value;\n");
      out.write("                        if (!(/\\b(BTBT)[A-Z][0-9]{5}\\b/.test(myform.sid.value)))\n");
      out.write("                        {\n");
      out.write("                            alert(\"Enter Valid SmartCardID\"); \n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                        if (!(/btbt[a-z][0-9]{5}+_[a-z]+@banasthali.in/.test(myform.email.value)))\n");
      out.write("                        {\n");
      out.write("                            alert(\"You have entered an invalid email address!\"); \n");
      out.write("                            return (false);\n");
      out.write("                        }\n");
      out.write("                        if (password.length < 8)\n");
      out.write("                        {\n");
      out.write("                            alert(\"Password must be at least 8 characters long.\"); \n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                        if (!(/^\\d{10}$/.test(myform.pno.value)))\n");
      out.write("                        { \n");
      out.write("                            alert(\"Enter Valid Phone Number\"); \n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                        if (address.length < 8)\n");
      out.write("                        {\n");
      out.write("                            alert(\"Address must be atleast 10 characters long.\");\n");
      out.write("                            return false;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                </script>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    if(request.getParameter("submit")!=null)
    {
        String n=request.getParameter("name");
        String i=request.getParameter("sid");
        String p=request.getParameter("password");
        String pnoo=request.getParameter("pno");
        String e=request.getParameter("email");
        String a=request.getParameter("address");
        String r=request.getParameter("drprole");
        if(r.equals("Seller"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=con.createStatement();
                String query1="select s_id from seller where s_id='"+i+"'"; 
                ResultSet rs=stmt.executeQuery(query1);
                boolean status=rs.next(); 
                if(!status)
                {
                    String query="insert into seller(s_id,s_pass,s_name,s_email,s_phone,s_address)values('"+i+"','"+p+"','"+n+"','"+e+"','"+pnoo+"','"+a+"')";
                    int x=stmt.executeUpdate(query); 
                    if(x>0)
                    {
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert(\"Successfully Registered\"); \n");
      out.write("                            window.location= \"HomeFinal.jsp\";\n");
      out.write("                        </script>\n");
      out.write("                        <!--\tresponse.sendRedirect(\"seller_cardpage.jsp?sid=\"+uid);\t-->\n");
      out.write("                    ");
}
                    else
                    {
      out.write("\n");
      out.write("                        <script> \n");
      out.write("                            alert(\"Error\");\n");
      out.write("                            window.location= \"registration.jsp\";\n");
      out.write("                        </script>\n");
      out.write("                        <!--\tresponse.sendRedirect(\"login_s.jsp\");-->\n");
      out.write("                    ");
}
                }
                else
                {
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"Student ID is already registered\"); \n");
      out.write("                        window.location= \"registration.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                ");
}
            }catch(Exception ex){ex.printStackTrace();}
        }
        else if(r.equals("Buyer"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=con.createStatement();
                String query1="select b_id from buyer where b_id='"+i+"'"; 
                ResultSet rs=stmt.executeQuery(query1);
                boolean status=rs.next(); 
                if(!status)
                {
                    String query="insert into buyer(b_id,b_pass,b_name,b_email,b_phone,b_address)values('"+i+"','"+p+"','"+n+"','"+e+"','"+pnoo+"','"+a+"')";
                    int x=stmt.executeUpdate(query); 
                    if(x>0)
                    {
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert(\"Successfully Registered\"); \n");
      out.write("                            window.location= \"HomeFinal.jsp\";\n");
      out.write("                        </script>\n");
      out.write("                    ");
}
                    else
                    {
      out.write("\n");
      out.write("                        <script> \n");
      out.write("                            alert(\"Error\");\n");
      out.write("                            window.location= \"registration.jsp\";\n");
      out.write("                        </script>\n");
      out.write("                    ");
}
                }
                else
                {
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"Student ID is already registered\"); \n");
      out.write("                        window.location= \"registration.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                ");
}
            }catch(Exception ex){ex.printStackTrace();}
        }
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
