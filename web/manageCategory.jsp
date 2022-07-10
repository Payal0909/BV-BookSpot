<%-- 
    Document   : manageCategory
    Created on : 29 Mar, 2022, 11:19:23 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
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
    <title>Categories</title>
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
    .btn2 {
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
    background-color: #1aff1a ;
    border-radius: 10px;
    
    }
    .btn2:hover{
        background: #47d147;
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
    .image img{
      width: 80%;
      height: 140px;
      border-top-right-radius: 5px;
      border-top-left-radius: 5px;
     }
</style>

 <% 
                 String aid=request.getParameter("aid");
                 String aname="";
                 String query="select a_name from admin where a_id='"+aid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    aname=rs.getString(1);
                }
                
             %>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
         <p style="color:white;font-size: 30px; text-decoration: underline; font-weight: bold;font-style: italic;" >&#10159; Welcome <label><%=aname%></label></p>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/adminhome.jsp#home">ADMIN HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
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
                Statement st = con.createStatement();
                Statement st1 = con.createStatement();
                
                String sql1 = "SELECT c_id,c_name,c_image,c_flag FROM category";
               
                ResultSet rst = st.executeQuery(sql1);
                int cid=0,cflag=0,p=0;
                String cname="";
                String cimage="";
                int count=0;
                Statement st2 = con.createStatement();
                ResultSet rst3 = st2.executeQuery("select count(*) from category");
		rst3.next();
		count = rst3.getInt(1);
		rst3.close();
                if(count==0){
                    %>
                    <table>
                    <tr>
                        <td class="pro">NO CATEGORIES AVAILABLE</td>
                        </tr></table>
                    <%
                }
                else{
                        int i = 0;
                        while(rst.next())
                        {   i++;
                            if(i==startIndex)
                                break;

                        }
                        i=0;
                   %>
                    <div class="card">
           
        <table style="width:100%;padding:20px;border-style: groove;" border="5">
                    <%
                do{
                    i++;
                    cid=rst.getInt(1);
                    cname=rst.getString(2);
                    cimage=rst.getString(3);
                    cflag=rst.getInt(4);
                    String sql2 = "SELECT p_id FROM product WHERE c_id="+cid+"";
                    ResultSet rst2 = st1.executeQuery(sql2);
                    p=0;
                    if(rst2.next())
                         p=1;
                    else
                         p=0;
        %>  
            <tr>
                <td align="center"width="12%" style="padding:5px;font-size: 20px"><i><b><%=cname%></b></i></td>
                <td align="center" width="24%" style="padding:5px;"><img src="images/<%=cimage%>" width="180px" height="150px"/></td>
                 <%
                     if(cflag==1)
                     {
                         if(p==1)
                         {
                 %>
                        <td align="center" width="15%" style="padding:5px;"><a class="btn1" href="removecategory.jsp?cid_=<%=cid%>&cflag=<%=cflag%>&aid=<%=aid%>" onclick="return confirm('Products are available!!!Are You Sure you want to disable this category?')">DISABLE</a></td>
                 <%
                        }
                        else
                       {
                 %>
                        <td align="center" width="15%" style="padding:5px;"><a class="btn1" href="removecategory.jsp?cid_=<%=cid%>&cflag=<%=cflag%>&aid=<%=aid%>">DISABLE</a></td>
                        <%
                       }
                    }
                     else
                    {
                 %>
                       <td align="center" width="15%" style="padding:5px;"><a class="btn2" href="removecategory.jsp?cid_=<%=cid%>&cflag=<%=cflag%>&aid=<%=aid%>" onclick="return confirm('Are you sure?')">ENABLE</a></td>   
                    <%
                     }
                     %>
                 
            </tr>
       
        <% 
           }while(rst.next()&&i!=recordPerPage);
           
                rst.close();
                ResultSet rs2 = st.executeQuery("select count(*) from category");
                rs2.next();
                totalNumberOfRecords = rs2.getInt(1);
                rs2.close();
                numberOfPages = totalNumberOfRecords / recordPerPage;
                if(totalNumberOfRecords > numberOfPages * recordPerPage) {
                    numberOfPages = numberOfPages + 1;
                }
            }
%>
        </table>
        </div>
        <span class="page"><b>Page No. &nbsp;-&nbsp;&nbsp;&nbsp;</b></span>

  <%
            int k;
            for(k = 1; k <= numberOfPages; k++) {
%>
         <span>   <b><a href="manageCategory.jsp?aid=<%=aid%>&pageno=<%=k%>"><%=k%></a>
                 &nbsp;&nbsp;&nbsp;&nbsp;</b></span>
<%
}
%>
<br>
<br>
<%
   
        }
         catch (Exception e) {
                out.println(e);
            }
        %>
    </div>  
<!--cards -->
  </body>
</html>


