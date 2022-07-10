<%-- 
    Document   : deleteFeedback
    Created on : 16 Mar, 2022, 2:56:15 PM
    Author     : parid
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<%
        int fid = Integer.parseInt(request.getParameter("Fid"));
        try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
String q1 = "DELETE FROM feedback WHERE f_id=?";
PreparedStatement pstmt=conn.prepareStatement(q1);
pstmt.setInt(1, fid);
int i = pstmt.executeUpdate();
if(i > 0)
                {
                    %>
                    <script>
                        alert("Feedback Removed Successfully");
                        window.location= "manageFeedback.jsp";
                    </script>
                    <%
                }
                else{
                    %>
                    <script>
                        alert("Error : Internal Error Occurred");
                        window.location= "manageFeedback.jsp";
                    </script>
                    <%
                }
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
    %>


