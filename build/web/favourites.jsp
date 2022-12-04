<%-- 
    Document   : favourites
    Created on : 11 Mar, 2022, 11:49:32 PM
    Author     : parid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
        int pid = 0;
        String Bid = (String) session.getAttribute("bid");  
//   String Bid = "BTBTC19167";
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query1 = "Select * from buyer where b_id = '"+Bid+"' ";
        Statement stmt=conn.createStatement(); 
        ResultSet rs1=stmt.executeQuery(query1);  
        if(rs1.next())
         Bname=rs1.getString(3);
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
        <title></title>
    </head>
    <style>
        body{
            margin: 0px;
            padding: 0px;
            font-family: Verdana, Geneva, Tahoma, sans-serifs;
            background-color: #ffdab3;  
        }
.rem{
    text-align: center;
    cursor: ponter;
    display: inline-block;
    width: 150px;
}
h4{
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 25px;
    color: white;
}
.btn {
  text-align: center;
  display: inline-block;
  font-size: 20px;
  font-family: sans-serif;
  cursor: pointer;
  width: 235px;
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
        <h2 class="heading">Welcome <%=Bname%></h2>
        <div class="row mx-3">
            <%
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select p_id from favourites where b_id = ?");
            pstmt.setString(1, Bid);
            rst = pstmt.executeQuery();
             while (rst.next()) {
                 pid = rst.getInt("p_id");
                 Class.forName("com.mysql.jdbc.Driver");
                 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");    
                 pstmt = conn.prepareStatement("Select * from product where p_id = ?");
                 pstmt.setInt(1, pid);
                 ResultSet rest = pstmt.executeQuery();
                 while(rest.next()){
                    String name = rest.getString("p_name");
                    String path = rest.getString("p_image");
                    int sp = rest.getInt("p_price");
                %>
                <div class="col-sm-3">
            <div class="card my-3 mx-1">
              <div class="card-body">
                  <img src="images/<%= path%>" width="90rem" height="200" class="card-img-top" alt="...">
                  <br><br>
                  <h4>Price : <%=sp %></h4>
                <a href="proSpecify.jsp?Pid=<%=pid%>" class="btn btn-secondary my-3"><%=name %></a>
                <a href="deleteFromCart.jsp?Pid=<%=pid%>" class="btn btn-secondary my-3">Remove</a>
              </div>
            </div>
          </div>
                <%
            }
}
}
catch(Exception e)
{
System.out.println(e.toString());
}
            %>
            
        </div>
   </body>
</html>