package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.*;
import java.io.*;

public final class viewmyproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html style=\"font-size: 16px;\">\n");
      out.write("  <head>\n");
      out.write("    <title>My products</title>\n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("  <style type=\"text/css\">\n");
      out.write("    *{\n");
      out.write("     margin: 0px;\n");
      out.write("     padding: 0px;\n");
      out.write("    }\n");
      out.write("    body{\n");
      out.write("     font-family: arial;\n");
      out.write("    }\n");
      out.write("    nav{\n");
      out.write("        height: 110px;\n");
      out.write("        background: #2c3e50;\n");
      out.write("        box-shadow: 0 10px 15px rgba(0,0,0,0.1);\n");
      out.write("    }\n");
      out.write("    .logo{\n");
      out.write("        float: left;\n");
      out.write("        width: 150px;\n");
      out.write("        height: auto;\n");
      out.write("        margin-left:20px;\n");
      out.write("    }\n");
      out.write("    .links {\n");
      out.write("    margin-right: 150px;\n");
      out.write("    float: right;\n");
      out.write("    margin-top: 30px;\n");
      out.write("    }     \n");
      out.write("    .links li {\n");
      out.write("    display: inline-block;\n");
      out.write("    list-style: none;\n");
      out.write("    position: relative;\n");
      out.write("    font-size: 20px;\n");
      out.write("    }\n");
      out.write("    .links li a{\n");
      out.write("    display: inline-block;\n");
      out.write("    color: #fff;\n");
      out.write("    padding: 20px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    }\n");
      out.write("    .links li:hover{\n");
      out.write("    background: #555;\n");
      out.write("    }\n");
      out.write("    .active,.links li:hover{\n");
      out.write("        background: #555;  \n");
      out.write("    }\n");
      out.write("    .main{\n");
      out.write("     background: #BFBFFF;\n");
      out.write("     background-repeat: no-repeat;\n");
      out.write("     background-size: cover;\n");
      out.write("     padding-bottom: 100px;\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("    .header_inside {\n");
      out.write("       width:100%;\n");
      out.write("       height: 8vh;\n");
      out.write("       background-color: #000033;\n");
      out.write("    }\n");
      out.write("    .navbar{\n");
      out.write("        width:85%;\n");
      out.write("        margin: auto;\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("    }\n");
      out.write("    .logo{\n");
      out.write("        width: 120px;\n");
      out.write("        position: absolute;\n");
      out.write("        top: 5px;\n");
      out.write("        left: 10px;\n");
      out.write("        cursor: pointer;\n");
      out.write("    }\n");
      out.write("    .navbar ul li{\n");
      out.write("        list-style: none;\n");
      out.write("        display: inline-block;\n");
      out.write("        margin: 0 20px;\n");
      out.write("    }\n");
      out.write("    .navbar ul li a{\n");
      out.write("        padding: 8px;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        border: 2px #1abc9c solid;\n");
      out.write("        font-size: 25px;\n");
      out.write("    }\n");
      out.write("    .card{\n");
      out.write("         width: 80%;\n");
      out.write("         height: 80%;\n");
      out.write("         background: #E9E9E9;\n");
      out.write("         display: inline-block;\n");
      out.write("         box-shadow: 2px 2px 20px black;\n");
      out.write("         border-radius: 5px; \n");
      out.write("         margin-top: 2.25%;\n");
      out.write("         margin-left: 10%;\n");
      out.write("         margin-bottom: 2.25%; \n");
      out.write("        }\n");
      out.write("    .image img{\n");
      out.write("      width: 100%;\n");
      out.write("      height: 250px;\n");
      out.write("      border-top-right-radius: 5px;\n");
      out.write("      border-top-left-radius: 5px;\n");
      out.write("     }\n");
      out.write("    .navi {\n");
      out.write("        align: center;\n");
      out.write("    }\n");
      out.write("    label{\n");
      out.write("        color: white;\n");
      out.write("        font-size:40px;\n");
      out.write("        padding-left: 20px;\n");
      out.write("    }\n");
      out.write("    .footer {\n");
      out.write("         padding: 20px;\n");
      out.write("        text-align: center;\n");
      out.write("        background-color: #000033;\n");
      out.write("        color: black;\n");
      out.write("        height:5vh;\n");
      out.write("        font-size: 30px;\n");
      out.write("        position:fixed;\n");
      out.write("        right: 0;\n");
      out.write("        left:0;\n");
      out.write("        bottom:0;\n");
      out.write("    }\n");
      out.write("    .pro{\n");
      out.write("            font-size: 30px;\n");
      out.write("            font-weight: 500;\n");
      out.write("            padding-left: 490px;\n");
      out.write("            padding-top: 200px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("    .btn1:hover{\n");
      out.write("        background:#8693ab;\n");
      out.write("    }\n");
      out.write("    .btn1 {\n");
      out.write("    background:blue;\n");
      out.write("    display: inline-block;\n");
      out.write("    list-style: none;\n");
      out.write("    position: relative;\n");
      out.write("    font-size: 20px;\n");
      out.write("    display: inline-block;\n");
      out.write("    color: black;\n");
      out.write("    padding: 20px;\n");
      out.write("    font-weight: 600;\n");
      out.write("    text-decoration: none;\n");
      out.write("    background-color: #9e8fb2 ;\n");
      out.write("    }\n");
      out.write("    .try{\n");
      out.write("        width: 80px;\n");
      out.write("        position: absolute;\n");
      out.write("        top:110px;\n");
      out.write("        left:90%;\n");
      out.write("        cursor: pointer;\n");
      out.write("        filter: brightness(2);\n");
      out.write("    }\n");
      out.write("    .icons a:hover img{   \n");
      out.write("    filter: brightness(8); \n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<div class=\"header\">\n");
      out.write("            <nav>\n");
      out.write("                <img class=\"logo\" src=\"images/logo.png\">\n");
      out.write("                <ul class=\"links\">\n");
      out.write("                    <li ><a href=\"AboutUs.jsp\">About Us</a></li>\n");
      out.write("                    <li><a href=\"ContactUs.jsp\">Contact Us</a></li>\n");
      out.write("                    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("            ");
 
                 String sid=request.getParameter("sid");
                 String sname="";
                 String query="select s_name from seller where s_id='"+sid+"'";
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/bvmart");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    sname=rs.getString(1);
                }
                
             
      out.write("\n");
      out.write("        </div>\n");
      out.write("<div class=\"header_inside\">\n");
      out.write("    <div class=\"navbar\">\n");
      out.write("        <label>Welcome <label>");
      out.print(sname);
      out.write("</label></label>\n");
      out.write("        <div class=\"icons\">\n");
      out.write("            <a href=\"seller_cardpage.jsp?sid=");
      out.print(sid);
      out.write("\">\n");
      out.write("                <img class=\"try\" src=\"images/main.png\">\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("    <div class=\"main\">\n");
      out.write("       \n");
      out.write("         ");

            try {
                int pageNumber = 0;
                int totalNumberOfRecords = 0;
                int recordPerPage = 4;
                int startIndex = 0;
                int numberOfPages = 0;
                String sPageNo = request.getParameter("pageno");
                pageNumber = Integer.parseInt(sPageNo);
                startIndex = (pageNumber * recordPerPage) - recordPerPage + 1;
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/bvmart");
                
                Statement st2 = con.createStatement();
                Statement st3 = conn.createStatement();
                 
                int ID=0,cid=0,cflag=0;
                int count=0;
                
                ResultSet rst2 = st2.executeQuery("select p_id,p_name,p_image,p_status from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=0 and p.s_id='"+sid+"'");
                ResultSet rst3 = st3.executeQuery("select count(*) from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=0 and p.s_id='"+sid+"'");
                
		rst3.next();
		count = rst3.getInt(1);
		rst3.close();
                if(count==0){
                    
      out.write("\n");
      out.write("                    <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td class=\"pro\">SORRY!! NO PRODUCTS AVAILABLE</td>\n");
      out.write("                        </tr></table>\n");
      out.write("                    ");

                }
                else{ 
                
      out.write("\n");
      out.write("                 <div class=\"card\">\n");
      out.write("                     <table style=\"width:100%;padding:20px;border-style: groove;\" border=\"5\">\n");
      out.write("                 ");
                
                            int i = 0;
                            while(rst2.next())
                            {   i++;
                                if(i==startIndex)
                                    break;
                            }
                            i=0;
                            do{
                                i++;
                            ID=rst2.getInt(1);                 //productID
                            String pname = rst2.getString(2);
                            String path = rst2.getString(3);
                            int statuss=rst2.getInt(4);
                            String pro_status;
                            if(statuss==0)
                                pro_status="images/instock3.png";
                            else
                                pro_status="images/soldout3.png";
                   
        
      out.write("  \n");
      out.write("       \n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\"width=\"20%\" style=\"padding:5px;font-size: 20px\"><i><b>");
      out.print(pname);
      out.write("</b></i></td>\n");
      out.write("                <td align=\"center\" width=\"40%\" style=\"padding:5px;\"><image src=\"");
      out.print(path);
      out.write("\" width=\"270px\" height=\"200px\"/></td>\n");
      out.write("                <td align=\"center\" width=\"25%\" style=\"padding:5px;\"><image src=\"");
      out.print(pro_status);
      out.write("\" width=\"150\" height=\"150\"/></td>\n");
      out.write("                <td align=\"center\" width=\"15%\" style=\"padding:5px;\"><a class=\"btn1\" href=\"modifydetails.jsp?sid=");
      out.print(sid);
      out.write("&ID=");
      out.print(ID);
      out.write("\">EDIT</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("       \n");
      out.write("        ");

           }while(rst2.next()&&i!=recordPerPage);
           
                rst2.close();             
                totalNumberOfRecords = count;           
                numberOfPages = totalNumberOfRecords / recordPerPage;
                if(totalNumberOfRecords > numberOfPages * recordPerPage) {
                    numberOfPages = numberOfPages + 1;
                }

      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("<!--<br>-->\n");
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("  ");

            int k;
            for(k = 1; k <= numberOfPages; k++) {

      out.write("\n");
      out.write("            <b><a href=\"viewmyproducts.jsp?sid=");
      out.print(sid);
      out.write("&pageno=");
      out.print(k);
      out.write('"');
      out.write('>');
      out.print(k);
      out.write("</a>\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;</b>\n");

}
                
            } }catch (Exception e) {
                out.println(e);
            }
        
      out.write("\n");
      out.write("         </table>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("    </div>  \n");
      out.write(" <div class=\"footer\">\n");
      out.write("        <div class=\"links\">\n");
      out.write("            <ul>\n");
      out.write("            <li style=\"float:left;margin-right:550px;position:relative;margin-top: -42px;\"><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
