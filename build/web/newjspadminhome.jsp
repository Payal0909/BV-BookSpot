<%-- 
    Document   : adminhome
    Created on : 29 Mar, 2022, 11:01:38 PM
    Author     : HP
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
    </head>
    <body>
          
        <h2>Welcome <%=Aname%></h2> 
        <br>
        <br>
        <a href="http://localhost:8080/BVBookSpot/manageCategory.jsp?aid=<%=Aid%>&pageno=1"> Manage Category </a>
         <a href="http://localhost:8080/BVBookSpot/manage_products.jsp?aid=<%=Aid%>&pageno=1"> Manage Products </a>
    </body>
</html>



        



