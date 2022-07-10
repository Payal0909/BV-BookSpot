<%-- 
    Document   : success2
    Created on : 15 Mar, 2022, 6:30:37 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String aid=request.getParameter("aid");
     %>
       <script>
                alert("Record Inserted Successfully");
                window.location= "manageCategory.jsp?aid=<%=aid%>&pageno=1";
             </script>
</html>
