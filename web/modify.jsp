<%-- 
    Document   : modify
    Created on : 7 Mar, 2022, 6:22:44 PM
    Author     : DELL
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>MODIFY DETAILS</title>
</head>
<body>
 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        int ID = Integer.parseInt(request.getParameter("ID"));
        String sid=request.getParameter("sid");
         String pname=request.getParameter("txttitle");
            int pprice=Integer.parseInt(request.getParameter("txtprice"));
            String pdesc=request.getParameter("txtdesc");
           String tempstatus=request.getParameter("drpStatus");
           int pstatus=1;
           if(tempstatus.equals("SoldOut"))
               pstatus=0;
        PreparedStatement ps;
       
          ps= con.prepareStatement("UPDATE product SET p_name=?,p_price=?,p_desc=?,p_status=? WHERE p_id=?");
             ps.setString(1,pname);
                ps.setInt(2,pprice);
               ps.setString(3,pdesc);
                ps.setInt(4,pstatus);
                ps.setInt(5,ID);
               int insertResult = ps.executeUpdate();
            if (insertResult>0)
            {
		 %>
            <script>
                alert("Details Modified Successfully!!!");
                window.location= "viewmyproducts.jsp?sid=<%=sid%>&pageno=1";
             </script>
            <%
        }
        else
        {
            %>
            <script>
                alert("Error!!!");
                window.location= "modifydetails.jsp?sid=<%=sid%>&ID=<%=ID%>";
             </script>
<%
        }}
catch(Exception ex){ex.printStackTrace();}
    
%>
</body>
</html>