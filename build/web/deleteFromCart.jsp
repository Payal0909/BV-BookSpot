<%-- 
    Document   : deleteFromCart
    Created on : 5 Apr, 2022, 9:52:00 AM
    Author     : DELL
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<%
        String Bid = (String) session.getAttribute("bid");  
        int pid = Integer.parseInt(request.getParameter("Pid"));
try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            Statement stmt = conn.createStatement(); 
            String q1 = "delete from favourites where b_id = '"+Bid+"' AND p_id = "+pid+"";
            int i = stmt.executeUpdate(q1);
            if(i > 0)
                {
                    %>
                    <script>
                        alert("Removed from Cart Successfully");
                        window.location= "favourites.jsp";
                    </script>
                    <%
                }
                else{
                    %>
                    <script>
                        alert("Error : Internal Error Occurred");
                        window.location= "favourites.jsp";
                    </script>
                    <%
                }
        }catch(Exception e){
                    e.printStackTrace();
                }

%>