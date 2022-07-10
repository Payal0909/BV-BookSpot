<%@page import="java.util.* " %>
<%@ page import ="java.sql.*" %>
<%@ page session = "true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h2>Login page</h2>

<form method="post" onsubmit="validate()">
  <label for="userid">User id:</label><br>
  <input type="text" id="userid" name="uid" required><br>
  <label for="password">Password:</label><br>
  <input type="text" id="password" name="pwd" required ><br>
  <label for="role">Role:</label><br>
  <select id="role" name="role">
  <option value="admin">Admin</option>
  <option value="seller">Seller</option>
  <option value="buyer">Buyer</option>
</select><br><br>
  <input type="submit" value="Submit">
</form> 
    </body>
</html>
<script>
    function validate()
    {
        <%
    try{
        String Userid = request.getParameter("uid"); 
        String password = request.getParameter("pwd");
        String role = request.getParameter("role");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        String query = "";
        if(role.equals("admin"))
        {
            session.setAttribute("aid",Userid);
             query="Select a_id,a_pass from admin where a_id=? and a_pass=?";
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("adminhome.jsp");        
                 else
                   out.println("Invalid login credentials");
        }  
        else if(role.equals("seller"))
        {
            session.setAttribute("sid",Userid);
            query="Select s_id,s_pass from seller where s_id=? and s_pass=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("sellerhome.jsp");        
                 else
                   out.println("Invalid login credentials");  
        }   
        else if(role.equals("buyer"))
        {
            session.setAttribute("bid",Userid);
             query="Select b_id,b_pass from buyer where b_id=? and b_pass=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("buyerhome.jsp");        
                 else
                   out.println("Invalid login credentials");
        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"); 
       
   }      
%>
    }
    </script>

