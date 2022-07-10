<%-- 
    Document   : buyer_data
    Created on : 5 Apr, 2022, 5:36:03 PM
    Author     : DELL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
        
        <title></title>
    </head>
    <style>
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
         div.main{
             padding-top: 30px;
             text-align: centre;
   background-color: rgba(0,0,0,0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rbga(255,255,255,0.3);
    box-shadow: 2px 2px 15px;
    color: #fff;
}
  .content{
      padding-top: 30px;
    margin-top: 50px;
    padding-bottom: 30px;
    width: 1000px;
   margin:auto;
    }
    .heading{
    text-align: center;
    }
        body{
            padding-top: 150px;
            padding-left: 200px;
            padding-right: 200px;
           background: url(buyer_seller_data_img.jpeg);
           background-size: cover;
        }
        table{
            width: 100%;
        }
table, th, td {
  border:1px solid white;
}
h2{
      text-align: center;
      color: white;
      font-style: italic;
      text-decoration: underline;
  }
</style>
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
    <body>
         <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <span class="head" href="#">&#128366; BV-BookSpot</span>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    </button>
                <ul id="menu">
                <li><a href="http://localhost:8080/BookSpot/adminhome.jsp#home">ADMIN HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
              </ul>
  </div>
</nav>
        <h2>Welcome <%=Aname%></h2>
        <div class="main">
            <div class="heading"><h1>Buyer Details: </h1></div>
            
            <div class="content">
                <table>
            <tr>
                <th>Buyer Id</th>
                <th>Buyer Name</th>
                <th>Buyer email</th>
                <th>Buyer Phone No.</th>
                <th>Buyer Address</th>
            </tr>
            <%
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from buyer");
            rst = pstmt.executeQuery();
             while (rst.next()) {
                   String bid = rst.getString("b_id");
                    String bname=rst.getString("b_name");
                    String bemail=rst.getString("b_email");
                    String bphno=rst.getString("b_phone");
                    String baddress=rst.getString("b_address");
                %>
                <tr id="<%=bid%>">
                <td><%=bid%></td>
                <td><%=bname%></td>
                <td><%=bemail%></td>
                 <td><%=bphno%></td>
                  <td><%=baddress%></td>
                </tr>
                <%}}catch(Exception e){e.printStackTrace();}
                %>
        </table>
            </div>  
        
        </div>
        
    </body>
</html>