<%-- 
    Document   : entertain
    Created on : 27 Feb, 2022, 11:46:01 PM
    Author     : parid
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
    
        String Bid = (String) session.getAttribute("bid");  
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query = "Select * from buyer where b_id = '"+Bid+"' ";
        
        Statement stmt=conn.createStatement(); 
        ResultSet rs=stmt.executeQuery(query);  
        if(rs.next())
         Bname=rs.getString(3);  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
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
        <title></title>
    </head>
    <style>
        body{
            margin: 0px;
            padding: 0px;
            font-family: Verdana, Geneva, Tahoma, sans-serifs;
            background-color: #ffdab3;
            
        }
.btn {
  text-align: center;
  display: inline-block;
  font-size: 20px;
  font-family: sans-serif;
  cursor: pointer;
  width: 350px;
  height: 43px;
  background-color: #ff7200;
}
.heading{
      color:black;
      font-family: Arial, Helvetica, sans-serif;
      text-align: center;
  }
.card{
    background-color: #414141;
    /*opacity: 0.75;*/
}
.head{
    font-size: 25px;
    color: #ff7200;
    font-weight: bolder;
    font-family: inherit;
}
#menu li {
    list-style-type: none;
    display: inline-block;
    margin: 10px;
  }
  #menu li a {
    color: white;
    text-decoration: none;
    font-size: 15px;
    font-family: Arial;
    transition: 0.4s ease-in-out;
  }
  #menu li a:hover {
    color: #ff7200;
    text-decoration: underline;
  }
</style>
    <body>
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <span class="head" href="#">&#128366; BV-BookSpot</span>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    </button>
                <ul id="menu">
                <li><a href="buyerHome.jsp">BUYER HOME</a></li>
                <li><a href="favourites.jsp">MY CART</a></li>
                <li><a href="feedback_buyer.jsp">FEEDBACK</a></li>
                <li><a href="homepage.jsp">LOGOUT</a></li>
              </ul>
  </div>
</nav>
        <br><br><br><br>
                <div class="main">
        <h2 class="heading">Welcome <%=Bname%></h2>
        <div class="row mx-4">
            <%
            byte[] imgData = null;
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from category where c_name LIKE ? and c_flag=?");
            pstmt.setString(1, "Entertainment-%");
            pstmt.setInt(2, 1);
            rst = pstmt.executeQuery();
             while (rst.next()) {
                    int cid = rst.getInt("c_id");
                    String name = rst.getString("c_name");
                    name = name.substring(14);
                    String path = rst.getString("c_image");
                %>
                <div class="col-sm-4">
            <div class="card my-3 mx-1">
              <div class="card-body">
                  <img src="images/<%= path%>" width="90rem" height="200" class="card-img-top" alt="...">
                  
                <a href="product.jsp?Cid=<%=cid%>" class="btn btn-secondary my-3"><%=name %></a>
              </div>
            </div>
          </div>
                <%
            }
}
catch(Exception e)
{
System.out.println(e.toString());
}
            %>
            
        </div>
            </div>
   </body>
</html>
