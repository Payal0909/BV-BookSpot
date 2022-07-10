package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class proSpecify_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("com.mysql.jdbc.Driver");
      out.write('\n');

    
        String Bid = (String) session.getAttribute("bid");
        int Pid = Integer.parseInt(request.getParameter("Pid"));
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query1 = "Select * from buyer where b_id = '"+Bid+"' ";
        Statement stmt=conn.createStatement(); 
        ResultSet rs1=stmt.executeQuery(query1);  
        if(rs1.next())
         Bname=rs1.getString(3);
  

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <title>Product specifications/Page</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <!--<link rel=\"stylesheet\" href=\"style.css\">-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resource/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resource/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\" crossorigin=\"anonymous\" />\n");
      out.write("  </head>\n");
      out.write("  <style>\n");
      out.write("\n");
      out.write("       body{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            font-family: Verdana, Geneva, Tahoma, sans-serifs;\n");
      out.write("            background: url(images/homepage.jpeg);  \n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("          img{\n");
      out.write("          width: 500px;\n");
      out.write("          height: 600px;\n");
      out.write("         \n");
      out.write("      }\n");
      out.write("      .name{\n");
      out.write("          padding-left: 50px;\n");
      out.write("      }\n");
      out.write("      table{\n");
      out.write("                border-collapse: separate;\n");
      out.write("                border-spacing: 100px 15px;\n");
      out.write("                margin-left: 20px;\n");
      out.write("                margin-top: 10px;\n");
      out.write("            }\n");
      out.write("/*      table, td, th{\n");
      out.write("          border: 50px solid white;\n");
      out.write("      }*/\n");
      out.write(".btn {\n");
      out.write("  text-align: justify;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 20px;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 125px;\n");
      out.write("  height: 40px;\n");
      out.write("  background-color: #ff7200;\n");
      out.write("}\n");
      out.write(".heading{\n");
      out.write("      color:black;\n");
      out.write("      font-family: Arial, Helvetica, sans-serif;\n");
      out.write("      text-align: center;\n");
      out.write("  }\n");
      out.write("  div.main{\n");
      out.write("    background-color: rgba(0,0,0,0.5);\n");
      out.write("    width: 100%;\n");
      out.write("    font-size: 18px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    border: 1px solid rbga(255,255,255,0.3);\n");
      out.write("    box-shadow: 2px 2px 15px;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("  .product-content{\n");
      out.write("      padding-top: 30px;\n");
      out.write("/*    margin-top: 30px;*/\n");
      out.write("    padding-bottom: 30px;\n");
      out.write("    width: 650px;\n");
      out.write("    padding-left:30px;\n");
      out.write("     padding-right: 30px;\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".card{\n");
      out.write("    background-color: #414141;\n");
      out.write("    opacity: 0.75;\n");
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
      out.write("  input[type=\"submit\"]{\n");
      out.write("    background-color:#ff7200;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("  <body>\n");
      out.write("     <nav class=\"navbar fixed-top navbar-expand-lg navbar-dark bg-dark\">\n");
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
      out.write("      <br> <br><br><br>\n");
      out.write("\n");
      out.write("      ");

            String name="",path="",desc="",sid="",sname="",sphn="",sadd="";
            int cp=0,sp=0,flag=0;
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            PreparedStatement pstmt1 = null;
            ResultSet rst1 = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from product where p_id = ?");
            pstmt.setInt(1, Pid);
            rst = pstmt.executeQuery();
            if(rst.next() )
            {
                name = rst.getString("p_name");
                    path = rst.getString("p_image");
                    cp = rst.getInt("p_cp");
                    sp = rst.getInt("p_price");
                    desc = rst.getString("p_desc");
                    flag = rst.getInt("p_status");
                    sid = rst.getString("s_id");
            }
                    pstmt1 = conn.prepareStatement("Select * from seller where s_id = ?");
                    pstmt1.setString(1, sid);
                    rst1 = pstmt1.executeQuery();
                    if(rst1.next() ){
                        sname = rst1.getString("s_name");
                        sphn = rst1.getString("s_phone");
                        sadd = rst1.getString("s_address");
                    }
                        }catch(Exception e){
                e.printStackTrace();
            }
                
      out.write("\n");
      out.write("                <div class=\"name\">\n");
      out.write("                   <h2 style=\"color: white\">Welcome ");
      out.print(Bname);
      out.write("</h2>  \n");
      out.write("                </div>\n");
      out.write("     \n");
      out.write("      <table>\n");
      out.write("          <tr>\n");
      out.write("              <td>\n");
      out.write("                  <div class = \"product-imgs\">\n");
      out.write("                <img src = \"images/");
      out.print(path);
      out.write("\"  alt = \"books image\">\n");
      out.write("                 </div>   \n");
      out.write("              </td>\n");
      out.write("              <td>\n");
      out.write("                  <div class=\"main\"> \n");
      out.write("                      <div class = \"product-content\">\n");
      out.write("                          <h2 class = \"product-title\"><u><i>");
      out.print(name);
      out.write("</i></u></h2>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("\n");
      out.write("          <div class = \"product-price\">\n");
      out.write("            <p class = \"last-price\">Old Price: <span>");
      out.print(cp);
      out.write(" Rs</span></p>\n");
      out.write("            <p class = \"new-price\">New Price: <span>");
      out.print(sp);
      out.write(" Rs</span></p>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class = \"product-detail\">\n");
      out.write("              <h2><u><i>Item Description</i></u> </h2>\n");
      out.write("              <label class=\"desc-box\" style=\"color:white ;font-size:20px;\">");
      out.print(desc);
      out.write("</label>\n");
      out.write("              <br>\n");
      out.write("              <br>\n");
      out.write("            <div class = \"seller-details\">\n");
      out.write("                <h4> <u><i>Seller Details</u></i></h4>\n");
      out.write("            <p>Name : <span>");
      out.print(sname);
      out.write("</span></p>\n");
      out.write("            <p>Phone no : <span>");
      out.print(sphn);
      out.write("</span></p>\n");
      out.write("            <p>Address : <span>");
      out.print(sadd);
      out.write("</span></p>\n");
      out.write("          </div>\n");
      out.write("            <ul>\n");
      out.write("                ");

                    if(flag > 0){
                            
      out.write("\n");
      out.write("              <li>Available: <span>In stock</span></li>\n");
      out.write("              ");
 }else{ 
      out.write("\n");
      out.write("              <li>Available: <span>Not in stock</span></li>\n");
      out.write("              ");
}
      out.write("\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class = \"purchase-info\">\n");
      out.write("              <form method=\"post\" onsubmit=\"addCart()\">\n");
      out.write("                  <input type = \"number\" min = \"0\" value = \"1\">\n");
      out.write("                  <input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Add to Cart\">\n");
      out.write("               <!--   <button type = \"button\" class = \"btn\">Add To Cart</button>  -->\n");
      out.write("              </form>\n");
      out.write("              <br>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("                  </div>\n");
      out.write("                  \n");
      out.write("      </div> \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          \n");
      out.write("      </table>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("    ");

        if(request.getParameter("submit") != null){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            stmt = conn.createStatement(); 
            String q1 = "select * from favourites where b_id = '"+Bid+"' AND p_id = "+Pid+"";
            ResultSet rs=stmt.executeQuery(q1);
            boolean status=rs.next(); 
            if(!status){
                String query = "insert into favourites(b_id,p_id) values('"+Bid+"',"+Pid+")";
                int i = stmt.executeUpdate(query);
                if(i > 0)
                {
                    
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"Added to Cart Successfully\");\n");
      out.write("                        window.location= \"favourites.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                    ");

                }
                else{
                    
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"Error : Internal Error Occurred\");\n");
      out.write("                        window.location= \"favourites.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                    ");

                }
}
            else
            {
                
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"Already in cart\"); \n");
      out.write("                        window.location= \"favourites.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                ");

            }
        }catch(Exception e){
            e.printStackTrace();
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
