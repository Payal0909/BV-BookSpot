package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.*;
import java.io.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Feedback Page</title>\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("                padding: 0px;\n");
      out.write("                margin: 0px;\n");
      out.write("                font-family: arial;\n");
      out.write("            }\n");
      out.write("            nav{\n");
      out.write("                height: 135px;\n");
      out.write("                background: #2c3e50;\n");
      out.write("                box-shadow: 0 10px 15px rgba(0,0,0,0.1);\n");
      out.write("            } \n");
      out.write("            .logo{\n");
      out.write("                float: left;\n");
      out.write("                width: 150px;\n");
      out.write("                height: auto;\n");
      out.write("                margin-left:20px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        .title{\n");
      out.write("       position: absolute;\n");
      out.write("        top: 30%;\n");
      out.write("        left: 31%;\n");
      out.write("        transform: translate(-50%,-50%);\n");
      out.write("    }\n");
      out.write("    .title h1{\n");
      out.write("        color: #000000;\n");
      out.write("        font-size: 45px;\n");
      out.write("    }\n");
      out.write("    .title:after{\n");
      out.write("    display: block;\n");
      out.write("    content: \" \";\n");
      out.write("    border-bottom: 3px solid;\n");
      out.write("    flex: 1 1 auto;\n");
      out.write("    width: 800px;\n");
      out.write("    }\n");
      out.write("        \n");
      out.write("    .text{\n");
      out.write("        position: absolute;\n");
      out.write("        top:40%;\n");
      out.write("        left:5%;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    #email{\n");
      out.write("        margin-left:5%;\n");
      out.write("        width: 250px;\n");
      out.write("        border: 1px solid #ddd;\n");
      out.write("        border-radius: 3px;\n");
      out.write("        outline: 0;\n");
      out.write("        padding: 7px;\n");
      out.write("        background-color: #fff;\n");
      out.write("        box-shadow: inset 1px 1px 5px rgba(0,0,0,0.3);\n");
      out.write("    }\n");
      out.write("    textarea{\n");
      out.write("        width: 500px;\n");
      out.write("        border: 1px solid #ddd;\n");
      out.write("        outline: 0;\n");
      out.write("        padding: 7px;\n");
      out.write("        resize: none;\n");
      out.write("        background-color: #fff;\n");
      out.write("        box-shadow: inset 1px 1px 5px rgba(0,0,0,0.3);\n");
      out.write("    }\n");
      out.write("    .active,.links li:hover{\n");
      out.write("        background: #555;\n");
      out.write("   }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <nav>\n");
      out.write("                <img class=\"logo\" src=\"images/logo.png\">\n");
      out.write("            </nav>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"main\"> \n");
      out.write("            <div class=\"title\">\n");
      out.write("                <h1>Feedback Form</h1>\n");
      out.write("         </div>\n");
      out.write("            <div class=\"text\">\n");
      out.write("                <h4>We would love to hear your thoughts,suggestions,concerns or problems with anything so we can improve!</h4><br><br>\n");
      out.write("                <form name=\"myform\" id=\"feedback\" method=\"POST\" autocomplete=\"off\" onsubmit=\"return validateform()\">\n");
      out.write("                    <label><b>Feedback Type :</b></label>\n");
      out.write("                    &emsp;&emsp;<input type=\"radio\" name=\"type\" value=\"comment\"checked/> Comments&emsp;&emsp;&emsp;&emsp;&emsp;\n");
      out.write("                    <input type=\"radio\" name=\"type\" value=\"suggestion\"/> Suggestions&emsp;&emsp;&emsp;&emsp;&emsp;\n");
      out.write("                    <input type=\"radio\" name=\"type\" value=\"question\"/> Questions<br><br><br>\n");
      out.write("                <label><b>Email ID :</b></label>\n");
      out.write("                <input type=\"text\" name=\"email\" id=\"email\" placeholder=\"Enter your email id\" required>\n");
      out.write("                <br><br><br>\n");
      out.write("                <p style=\"font-size:18px;\"><textarea name=\"comment\" rows=5 cols=30 placeholder=\"Enter Feedback\" required></textarea></p><br>\n");
      out.write("                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button type=\"reset\" name=\"btn_reset\" style=\"width:25%;padding:10px 50px;background:linear-gradient(to right,rgba(73,264,65,.5),rgba(13,255,245,.4));\n");
      out.write("                        border:0;outline:none;border-radius:30px\">RESET</button>\n");
      out.write("                <button type=\"Submit\" name=\"btn_submit\" style=\"width:25%;padding:10px 30px;margin:10px 30px;background:linear-gradient(to right,rgba(73,264,65,.5),rgba(13,255,245,.4));\n");
      out.write("                        border:0;outline:none;border-radius:30px\">SUBMIT</button>\n");
      out.write("                 </form>\n");
      out.write("                <script>\n");
      out.write("                function validateform(){  \n");
      out.write("var email=document.myform.email.value; \n");
      out.write(" if (!(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$/.test(myform.email.value)))\n");
      out.write("  {\n");
      out.write("      alert(\"You have entered an invalid email address!\");\n");
      out.write("    return (false);\n");
      out.write("  }\n");
      out.write("}  \n");
      out.write("</script>  \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");

    if(request.getParameter("btn_submit")!=null )
    {
        String type=request.getParameter("type");
        String email=request.getParameter("email");
        String comment=request.getParameter("comment");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        Statement stmt=conn.createStatement();
        String query1="SELECT * FROM feedback WHERE f_id IN (SELECT MAX(f_id) FROM feedback)";
        ResultSet rs=stmt.executeQuery(query1);
        int fid=0;   
        while(rs.next())
        {
            fid=rs.getInt(1);
        }
        fid=fid+1;
        String query2="INSERT INTO feedback values (?,?,?,?)";
         PreparedStatement pst;
         pst=conn.prepareStatement(query2); 
          pst.setInt(1,fid);
           pst.setString(2,type);
           pst.setString(3,email);
           pst.setString(4,comment);
        int x=pst.executeUpdate();
        conn.close();
        }
        catch(Exception ex)
        {
           out.println(ex); 
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
