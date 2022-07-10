<%-- 
    Document   : removeproduct_a
    Created on : 16 Mar, 2022, 6:21:02 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            
            int pid=Integer.parseInt(request.getParameter("pid"));
            String aid=request.getParameter("aid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
            Statement stmt=con.createStatement();
            Statement stmt1=con.createStatement();
            Statement stmt2=con.createStatement();
            
             String query1="select p_id from product where p_id="+pid+"";
             
             ResultSet rst = stmt.executeQuery(query1);
             while(rst.next())
             {
                 pid=rst.getInt(1);
                 String query2="delete from favourites where p_id="+pid+"";
                 int i=stmt1.executeUpdate(query2); 
             }
             
            String query3="delete from product where p_id="+pid+"";
            int i=stmt.executeUpdate(query3);
            if(i>0)
            {
                response.sendRedirect("manage_products.jsp?aid="+aid+"&pageno=1");
            }
                
            else
                System.out.println("Error in deleting record ");
            

        %>
            
    </body>
</html>
