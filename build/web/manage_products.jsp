<%-- 
    Document   : manage_products
    Created on : 30 Mar, 2022, 12:25:23 AM
    Author     : HP
--%>

<%-- 
    Document   : manage_products
    Created on : 16 Mar, 2022, 6:08:41 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
      <link rel="stylesheet" href="stylehomepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@507&family=Poppins:wght@100;200;400;600;700&family=Tangerine:wght@700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@1&display=swap"
      rel="stylesheet"
    />
    <title>Manage Product</title>
  </head>
   <style type="text/css">
      * {
  margin: 0;
  padding: 0;
}

body {
    background: url("images/homepage.jpeg");
  font-size: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

section,
span,
ul,
li,
a,
header {
  box-sizing: border-box;
}
 
/*css reset*/
 
header {
  width: 100%;
  display: flex;
  justify-content: space-between;
  padding: 5px 30px;
  align-items: center;
  position: fixed;
  
}
#logo {
  color: #ff7200;
  font-family: "Tangerine", cursive;
  font-weight: bolder;
  font-size: 45px;
}
#menu li {
  list-style-type: none;
  display: inline-block;
  margin: 20px;
}
#menu li a {
  color: white;
  text-decoration: none;
  font-size: 20px;
  font-family: Arial;
  font-weight: 500;
  transition: 0.4s ease-in-out;
}
#menu li a:hover {
  color: #ff7200;
  text-decoration: underline;
}
  
     
    .card{
         width: 80%;
         height: 75%;
         background: #ff5c33;
         display: inline-block;
         box-shadow: 2px 2px 20px black;
         border-radius: 5px; 
         margin-top: 8%;
         margin-left: 10%;
         margin-bottom: 2%; 
         border-radius: 30px;
         margin-right: 10%;
        }
    .image img{
      width: 80%;
      height: 200px;
      border-top-right-radius: 5px;
      border-top-left-radius: 5px;
     }
    span b a{
          color: white;
          margin-bottom: 5%; 
    }
     .btn1:hover{
        background:#ff704d;
    }
    .btn1 {
    background:blue;
    display: inline-block;
    list-style: none;
    position: relative;
    font-size: 20px;
    display: inline-block;
    color: black;
    padding: 20px;
    font-weight: 600;
    text-decoration: none;
    background-color: orange ;
    border-radius: 10px;
    
    }
   .card tr {
       background:  #ffbf80;
        
    }
    .card tr td {
      border-radius: 5px;
        
    }
    .page b{
        margin-left: 10%;
        color:#fff;
    }
</style>


            <% 
                 String aid=request.getParameter("aid");
                 String aname="";
                 String query="select a_name from admin where a_id='"+aid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    aname=rs.getString(1);
                }
                
             %>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
         <p style="color:white;font-size: 30px; text-decoration: underline; font-weight: bold;font-style: italic;" >&#10159; Welcome <label><%=aname%></label></p>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/adminhome.jsp#home">ADMIN HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
        </ul>
      </header>
<div class="main">
         <%
            try {
                int pageNumber = 0;
                int totalNumberOfRecords = 0;
                int recordPerPage = 3;
                int startIndex = 0;
                int numberOfPages = 0;
                String sPageNo = request.getParameter("pageno");
                pageNumber = Integer.parseInt(sPageNo);
                startIndex = (pageNumber * recordPerPage) - recordPerPage + 1;
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement st2 = con.createStatement();

                
                String pro_status="";
                String pimage="";
                String pname="";
                int pid=0,cid=0,cflag=0;
                int count=0;
                Statement st3 = con.createStatement();
                ResultSet rst3 = st3.executeQuery("select count(*) from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=1");
		 ResultSet rst2 = st2.executeQuery("select p_id,p_name,p_image,p_status from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=1");
                rst3.next();
		count = rst3.getInt(1);
		rst3.close();
                if(count==0){
                    %>
                    <table>
                    <tr>
                        <td class="pro">SORRY!! NO PRODUCTS AVAILABLE</td>
                        </tr></table>
                    <%
                }
                else{
                   
                   %>
                   <div class="card">
                    <table style="width:100%;padding:20px;border-style: groove;" border="5">
                    <%
                    
                    int i = 0;
                        while(rst2.next())
                        {   i++;
                            if(i==startIndex)
                                break;

                        }
                        i=0;
                        do{
                            i++;
                        
                            pname=rst2.getString(2);              //productID
                            pimage = rst2.getString(3);
                                    int statuss=rst2.getInt(4);
                                    pid=rst2.getInt(1);
                                    if(statuss==1)
                                        pro_status="images/inStock.jpg";
                                    else
                                        pro_status="images/soldOut.jpg";
                       
        %>  
            <tr>
               <td align="center"width="20%" style="padding:5px;font-size: 20px"><i><b><%=pname%></b></i></td>
                <td align="center" width="30%" style="padding:5px;"><a href="zoom_product2.jsp?pid=<%=pid%>"><img src="images/<%=pimage%>" width="200px" height="150px"/></a></td>
                 <td align="center" width="20%" style="padding:5px;"><image src="<%=pro_status%>" width="100px" height="100px" /></td>
                 <td align="center" width="20%" style="padding:5px;"><a class="btn1" href="removeproduct_a.jsp?pid=<%=pid%>&aid=<%=aid%>" onclick="return confirm('Are you sure?')">REMOVE</a></td>
            </tr>
       
        <% 
           }while(rst2.next()&&i!=recordPerPage);
           
                rst2.close();             
                totalNumberOfRecords = count;           
                numberOfPages = totalNumberOfRecords / recordPerPage;
                if(totalNumberOfRecords > numberOfPages * recordPerPage) {
                    numberOfPages = numberOfPages + 1;
                }
%>
        </table>
        </div>
<span class="page"><b>Page No. &nbsp;-&nbsp;&nbsp;&nbsp;</b></span>
  <%
            int k;
            for(k = 1; k <= numberOfPages; k++) {
%>
<span><b><a href="manage_products.jsp?aid=<%=aid%>&pageno=<%=k%>"><%=k%></a>
        &nbsp;&nbsp;&nbsp;&nbsp;</b></span>

<%
}
%>
<br>
<br>
<%
        }               
            } catch (Exception e) {
                out.println(e);
            }
        %>
       </table>       
        </div>
    </div>  
<!--cards -->
  </body>
</html>



