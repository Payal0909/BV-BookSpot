<%-- 
    Document   : manageFeedback
    Created on : 16 Mar, 2022, 2:23:10 PM
    Author     : parid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
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
<%
    int fid = 0;
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
        <title></title>
    </head>
    <style>
        div.main{
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
    width: 800px;
   margin:auto;
    }
    .heading{
    text-align: center;
    }
        body{
            padding-left: 200px;
            padding-right: 200px;
           background: url(manage_feedback.jpeg);
        }
        table{
            width: 100%;
        }
table, th, td {
  border:1px solid white;
}

.Fid{
    text-align: center;
}
.btn{
    background-color: #ff7200;
    text-align: center;
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
  .heading{
      font-family: monospace;
  }
  h2{
      text-align: center;
      color: white;
      font-style: italic;
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
                <li><a href="http://localhost:8080/BookSpot/adminhome.jsp">ADMIN HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
              </ul>
  </div>
</nav>
        <br><br><br><br>
        <h2>Welcome <%=Aname%></h2>
        <div class="main">
            <br><br>
            <div class="heading"><h2>The feedbacks of users are : </h2></div>
            <div class="content">
        <table>
            <tr>
                <th class="Fid">Feedback Id</th>
                <th class="Fid">Description</th>
                <th class="Fid">Manage Feedback</th>
            </tr>
            <%
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from feedback");
            rst = pstmt.executeQuery();
             while (rst.next()) {
                    fid = rst.getInt("f_id");
                    String desc = rst.getString("f_desc");
                %>
                <tr id="<%=fid%>">
                    <td class="Fid"><%=fid %></td>
                    <td><%=desc %></td>
                    <td class="Fid"><a href="deleteFeedback.jsp?Fid=<%=fid%>" class="btn btn-secondary my-3">Remove</a></td>
                </tr>
                <%}}catch(Exception e){e.printStackTrace();}
                %>
        </table>
         </div>  
        
        </div>
    </body>
</html>