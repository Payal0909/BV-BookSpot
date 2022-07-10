package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.sql.DriverManager;

public final class post_005fproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html style=\"font-size: 16px;\">\n");
      out.write("  <head>\n");
      out.write("    <title>Post product</title>\n");
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
      out.write("    background: url(\"images/postProduct.webp\");\n");
      out.write("    -webkit-background-size: cover;\n");
      out.write("    -moz-background-size: cover;\n");
      out.write("    -o-background-size: cover;\n");
      out.write("    background-size: cover;\n");
      out.write("}\n");
      out.write("div.main{\n");
      out.write("    padding-top: 150px;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    padding-bottom: 0px;\n");
      out.write("    width: 400px;\n");
      out.write("    margin: auto;\n");
      out.write("}\n");
      out.write("h3{\n");
      out.write("    color: coral;\n");
      out.write("    font-size: 20px;\n");
      out.write("    font-style: italic;\n");
      out.write("}\n");
      out.write("h2 {\n");
      out.write("    color: whitesmoke;\n");
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
      out.write("form#card{\n");
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
      out.write("input[type=\"file\"],\n");
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
      out.write("    margin-bottom: 15px;\n");
      out.write("    font-style: italic;\n");
      out.write("    border-radius: 15px;\n");
      out.write("}\n");
      out.write("textArea:focus,\n");
      out.write("select:focus{\n");
      out.write("    border: 4px solid orange;\n");
      out.write("    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);\n");
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
      out.write("input[type=\"email\"]:focus,\n");
      out.write("input[type=\"number\"]:focus,\n");
      out.write("input[type=\"password\"]:focus,\n");
      out.write("input[type=\"file\"]:focus,\n");
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
      out.write("  </head>\n");
      out.write("           ");
 
                String sid = (String) session.getAttribute("sid");
                String sname="";
                 
                 String query="select s_name from seller where s_id='"+sid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    sname=rs.getString(1);
                }
                
             
      out.write("\n");
      out.write("             <header>\n");
      out.write("        <span id=\"logo\">&#128366; BV-BookSpot</span>\n");
      out.write("        <h2>Welcome ");
      out.print(sname);
      out.write("</h2>\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <li><a href=\"feedback.jsp\">FEEDBACK</a></li>\n");
      out.write("          <li><a href=\"#Logout\">LOGOUT</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </header>\n");
      out.write("      <div class=\"main\">\n");
      out.write(" <!--cards -->\n");
      out.write("        <div class=\"card\">\n");
      out.write("            <h2 align=\"center\">Product Details</h2>\n");
      out.write("            <div>\n");
      out.write("                <form name=\"f1\" action=\"FileUpload\" method=\"POST\" enctype=\"multipart/form-data\" class=\"form\" onsubmit=\"return validateform()\">\n");
      out.write("                    <input type=\"hidden\" name=\"sid\" value=\"");
      out.print(sid);
      out.write("\">\n");
      out.write("                    <br>\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <label for=\"category\" class=\"hidden-label\">Category: </label>\n");
      out.write("                     \n");
      out.write("        ");

          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
            Statement st = con.createStatement();
            String sql = "SELECT * FROM category";
            ResultSet rst = st.executeQuery(sql);
            int cflag=0;
        
      out.write("\n");
      out.write("         <select id=\"category\" name=\"drpCat\" required>\n");
      out.write("           <option disabled selected value>Choose Category </option>\n");
      out.write("        ");
  while(rst.next()){
                cflag=rst.getInt(4);
                if(cflag==1){
        
      out.write("\n");
      out.write("            <option>");
      out.print( rst.getString(2));
      out.write("</option>\n");
      out.write("        ");
 }} 
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    <label for=\"ProductTitle\" class=\"hidden-label\">Product Title: </label>\n");
      out.write("                    <input id=\"ProductTitle\" type=\"text\" name=\"txttitle\" value=\"\" placeholder=\"Enter Product Title\" required>\n");
      out.write("                    <label for=\"ProductPrice\" class=\"hidden-label\">Product Selling Price: </label>\n");
      out.write("                    <input id=\"ProductPrice\" type=\"text\" name=\"txtprice\" value=\"\" placeholder=\"Enter Product Selling Price\" required>\n");
      out.write("                    <label for=\"ProductPriceCP\" class=\"hidden-label\">Product Cost Price: </label>\n");
      out.write("                    <input id=\"ProductPriceCP\" type=\"text\" name=\"txtpriceCP\" value=\"\" placeholder=\"Enter Product Cost Price\" required>\n");
      out.write("                    <label for=\"ProductDescription\" class=\"hidden-label\">Product Description: </label>\n");
      out.write("                    <input id=\"ProductDescription\" type=\"text\" name=\"txtdesc\" value=\"\" placeholder=\"Enter Product Description\" required>\n");
      out.write("                    <label for=\"img\" class=\"hidden-label\">Select Image: </label>\n");
      out.write("                    <input type=\"file\" id=\"img\" name=\"img\" accept=\"image/*\" required>  \n");
      out.write("                    <input type=\"submit\" value=\"Upload\" name=\"btn_upload\" id=\"submit\">  \n");
      out.write("                    <br>\n");
      out.write("            </form>\n");
      out.write("            <script>  \n");
      out.write("function validateform(){  \n");
      out.write("var title=document.f1.txttitle.value; \n");
      out.write("var price=document.f1.txtprice.value; \n");
      out.write("var price_cp=document.f1.txtpriceCP.value;\n");
      out.write("var desc=document.f1.txtdesc.value;\n");
      out.write("    if(title.length>50){  \n");
      out.write("         alert(\"Product Title must be less than 50 Characters!!\");  \n");
      out.write("         return false;  \n");
      out.write("    }  \n");
      out.write("  if(isNaN(price) && isNaN(price_cp)){\n");
      out.write("        alert(\"Product Price must be in digits!!\");\n");
      out.write("        return false;\n");
      out.write("        }\n");
      out.write("     if(desc.length>100){  \n");
      out.write("         alert(\"Product Description must be less than 100 characters!!\");  \n");
      out.write("         return false;  \n");
      out.write("    }  \n");
      out.write("}  \n");
      out.write("</script> \n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write(" \n");
      out.write("    </div>\n");
      out.write("<!--cards -->\n");
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
