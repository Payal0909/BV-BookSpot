<%-- 
    Document   : adminhome
    Created on : 14 Mar, 2022, 6:17:21 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.util.* " %>
<%@ page session = "true" %>
<%
    
        String Aid = (String) session.getAttribute("aid");
        session.setAttribute("aid",Aid);
        String Aname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        
        String query = "Select * from admin where a_id = '"+Aid+"' ";
        
        Statement stmt=conn.createStatement(); 
        ResultSet rs=stmt.executeQuery(query);  
        if(rs.next())
         Aname=rs.getString(3);  
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller home page</title>
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
        <style>
            body {
                background: url("images/book81.jpeg");
            }
            a{
               text-decoration: none;
            } 
            h2{
                color: whitesmoke;
                font-size: 40px;
                font-style: italic;
            }
            h3{
                color: coral;
                font-size: 20px;
                font-style: italic;
            }
            .div1{
                column-gap: 100px;
                background-color: #ffdab3;
                padding:20px;
                border-radius: 10px;
                box-shadow: 0px 0px 15px 2px teal;
                transition: 0.5s;
            }
            .div1:hover{
                transform:scale(0.9);
                box-shadow:0px 0px 5px 7px teal;
                transition: 0.3s;
            }
            table{
                border-collapse: separate;
                border-spacing: 150px 15px;
                text-align: center;
                margin-left: 150px;
                margin-top: 140px;
            }
            img{
                height: 100px;
                width: 150px;
            }
            div,
section,
span,
ul,
li,
a,
header {
  box-sizing: border-box;
}

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
        </style>
    </head>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <h2>Welcome <%=Aname%></h2>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#home">HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
        </ul>
    </header>
    <body>
        <br>
        <br>
        <table id="table">
        <tr>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/manageCategory.jsp?aid=<%=Aid%>&pageno=1">
                       <img src="images/manageCategory.svg"/>
                       <h3>Manage Category</h3>
                    </a>
                </div>
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/manage_products.jsp?aid=<%=Aid%>&pageno=1">
                    <img src="images/manageProduct.svg"/>
                    <h3>Manage Products</h3>
                </a>
                </div>
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/add_category.jsp?aid=<%=Aid%>">
                       <img src="images/addCategory.svg"/>
                       <h3>Add Category</h3>
                    </a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/buyer_data.jsp">
                       <img src="images/manageSeller.svg"/>
                       <h3>Manage Buyer</h3>
                    </a>
                </div>
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/seller_data.jsp">
                       <img src="images/manageSeller.svg"/>
                       <h3>Manage Seller</h3>
                    </a>
                </div>
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/manageFeedback.jsp">
                       <img src="images/feedback.svg"/>
                       <h3>Manage Feedback</h3>
                    </a>
                </div>
            </td>
        </tr>
    </table>
    </body>
</html>




        
