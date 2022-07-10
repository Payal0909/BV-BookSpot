<%-- 
    Document   : success1
    Created on : 2 Mar, 2022, 1:39:02 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <%
            String sid=request.getParameter("sid");
        %>
       <script>
                alert("Record Inserted Successfully");
                window.location= "sellerhome.jsp?sid=<%=sid%>";
             </script>
</html>