<%-- 
    Document   : viewmyproducts
    Created on : 24 Mar, 2022, 10:15:11 PM
    Author     : HP
--%>

<%@page import="java.util.* " %>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <title>My products</title>
    <link rel="stylesheet" href="stylehomepage.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@507&family=Poppins:wght@100;200;400;600;700&family=Tangerine:wght@700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@1&display=swap"
      rel="stylesheet"
    />

  </head>
  
  <style type="text/css">
      * {
  margin: 0;
  padding: 0;
}

body {
    background: url("images/homepage.jpeg");
  font-size: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

section,
span,
ul,
li,
a,
header {
  box-sizing: border-box;
}
 
/*css reset*/
 
header {
  width: 100%;
  display: flex;
  justify-content: space-between;
  padding: 5px 30px;
  align-items: center;
  position: fixed;
  
}
#logo {
  color: #ff7200;
  font-family: "Tangerine", cursive;
  font-weight: bolder;
  font-size: 45px;
}
#menu li {
  list-style-type: none;
  display: inline-block;
  margin: 20px;
}
#menu li a {
  color: white;
  text-decoration: none;
  font-size: 20px;
  font-family: Arial;
  font-weight: 500;
  transition: 0.4s ease-in-out;
}
#menu li a:hover {
  color: #ff7200;
  text-decoration: underline;
}
  
     
    .card{
         width: 80%;
         height: 75%;
         background: #ff5c33;
         display: inline-block;
         box-shadow: 2px 2px 20px black;
         border-radius: 5px; 
         margin-top: 8%;
         margin-left: 10%;
         margin-bottom: 2%; 
         border-radius: 30px;
         margin-right: 10%;
        }
    .image img{
      width: 80%;
      height: 200px;
      border-top-right-radius: 5px;
      border-top-left-radius: 5px;
     }
    span b a{
          color: white;
          margin-bottom: 5%; 
    }
     .btn1:hover{
        background:#ff704d;
    }
    .btn1 {
    background:blue;
    display: inline-block;
    list-style: none;
    position: relative;
    font-size: 20px;
    display: inline-block;
    color: black;
    padding: 20px;
    font-weight: 600;
    text-decoration: none;
    background-color: orange ;
    border-radius: 10px;
    
    }
   .card tr {
       background:  #ffbf80;
        
    }
    .card tr td {
      border-radius: 5px;
        
    }
    .page b{
        margin-left: 10%;
        color:#fff;
    }
</style>


            <% 
                 String sid=request.getParameter("sid");
                 String sname="";
                 String query="select s_name from seller where s_id='"+sid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    sname=rs.getString(1);
                }
                
             %>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
         <p style="color:white;font-size: 30px; text-decoration: underline; font-weight: bold;font-style: italic;" > Welcome <label><%=sname%></label></p>
        <ul id="menu">
          <li><a href="sellerhome.jsp">SELLER HOME</a></li>
          <li><a href="feedback_seller.jsp">FEEDBACK</a></li>
          <li><a href="homepage.jsp">LOGOUT</a></li>
        </ul>
      </header>

    <div class="main">
       
         <%
            try {
                int pageNumber = 0;
                int totalNumberOfRecords = 0;
                int recordPerPage = 3;
                int startIndex = 0;
                int numberOfPages = 0;
                String sPageNo = request.getParameter("pageno");
                pageNumber = Integer.parseInt(sPageNo);
                startIndex = (pageNumber * recordPerPage) - recordPerPage + 1;
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                
                Statement st2 = con.createStatement();
                Statement st3 = conn.createStatement();
                 
                int ID=0,cid=0,cflag=0;
                int count=0;
                
                ResultSet rst2 = st2.executeQuery("select p_id,p_name,p_image,p_status from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=1 and p.s_id='"+sid+"'");
                ResultSet rst3 = st3.executeQuery("select count(*) from product p INNER JOIN category c ON p.c_id=c.c_id and c.c_flag=1 and p.s_id='"+sid+"'");
                
		rst3.next();
		count = rst3.getInt(1);
		rst3.close();
                if(count==0){
                    %>
                    <table>
                    <tr>
                        <td class="pro">SORRY!! NO PRODUCTS AVAILABLE</td>
                        </tr></table>
                    <%
                }
                else{ 
                %>
                 <div class="card">
                     <table style="width:100%;padding:10px;border-style:groove;border:5px solid red;">
                 <%                
                            int i = 0;
                            while(rst2.next())
                            {   i++;
                                if(i==startIndex)
                                    break;
                            }
                            i=0;
                            do{
                                i++;
                            ID=rst2.getInt(1);                 //productID
                            String pname = rst2.getString(2);
                            String path = rst2.getString(3);
                            int statuss=rst2.getInt(4);
                            String pro_status;
                            if(statuss==1)
                                pro_status="images/inStock.jpg";
                            else
                                pro_status="images/soldOut.jpg";
                   
        %>  
       
            <tr>
                <td align="center"width="20%" style="padding:5px;font-size: 20px"><i><b><%=pname%></b></i></td>
                <td align="center" width="40%" style="padding:5px;"><image src="images\\<%=path%>" width="250px" height="150px"/></td>
                <td align="center" width="25%" style="padding:5px;"><image src="<%=pro_status%>" width="150" height="150"/></td>
                <td align="center" width="15%" style="padding:5px;"><a class="btn1" href="modifydetails.jsp?sid=<%=sid%>&ID=<%=ID%>">EDIT</a></td>
            </tr>
            
            
       
        <%
           }while(rst2.next()&&i!=recordPerPage);
           
                rst2.close();             
                totalNumberOfRecords = count;           
                numberOfPages = totalNumberOfRecords / recordPerPage;
                if(totalNumberOfRecords > numberOfPages * recordPerPage) {
                    numberOfPages = numberOfPages + 1;
                }
%>
        </table>
        </div>
        <span class="page"><b>Page No. &nbsp;-&nbsp;&nbsp;&nbsp;</b></span>
<!--<br>-->

 <%
            int k;
            for(k = 1; k <= numberOfPages; k++) {
%>
<span><b><a href="viewmyproducts.jsp?sid=<%=sid%>&pageno=<%=k%>"><%=k%></a>
        &nbsp;&nbsp;&nbsp;&nbsp;</b></span>
            
            
<%
}
%>
<br>
<br>
<%
                
            } }catch (Exception e) {
                out.println(e);
            }
        %>
         </table>
           
        </div>
    </div>  
 
  </body>
</html>

