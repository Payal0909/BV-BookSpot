<%-- 
    Document   : add_category
    Created on : 15 Mar, 2022, 6:09:42 PM
    Author     : DELL
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <title>Add Category</title>
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
  <style>
     
* {
    margin: 0;
    padding: 0;
}
body {
    background: url("images/registration1.webp");
}
div.main{
    padding-top: 200px;
    margin-top: 50px;
    padding-bottom: 0px;
    width: 500px;
    margin: auto;
}
h2 {
    color:whitesmoke;
    text-align: center;
    padding: 20px;
    font-family: sans-serif;
    font-style: italic;
}

div.card{
    background-color: rgba(0,0,0,0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rbga(255,255,255,0.3);
    box-shadow: 2px 2px 15px;
    color: #fff;
}
form{
    margin:40px;
}
h3{
    color: coral;
    font-size: 20px;
    font-style: italic;
}
div,
section,
span,
ul,
li,
a,
header {
  box-sizing: border-box;
}

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
input[type="text"] {
    width: 100%;
    border-radius: 15px;
    text-align: center;
    padding: 0 10px;
    height: 40px;
    border: 1px solid black;
    font-style: italic;
}
label{
    font-style: italic;
    font-size:20px;
}
input[type="submit"]{
    border-radius: 15px;
    font-style: italic;
    width: 70%;
    margin: auto;
    display:block;
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    background-color:#ff9b29;
    color:#fff;
    font-size: 18px;
    margin-bottom: 15px;
    border: 1px solid black;
}
input[type="text"]:focus {
    border: 4px solid orange;
    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);
}
.hidden-label {
    position:absolute;
    height:0;
    width:0;
    overflow:hidden;
    visibility:hidden;
}
  </style>
    </head>
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
        <h2>Welcome <%=aname%></h2>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/adminhome.jsp#home">ADMIN HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
        </ul>
      </header>
      <div class="main">
 <!--cards -->
        <div class="card">
                <h2 align="center">Add Category</h2>
                <form name="f1" action="UploadCategory" method="POST" enctype="multipart/form-data" class="form">
                <label for="CategoryName" class="hidden-label">Category Name: </label>
                <input id="CategoryName" type="text" name="txttitle" value="" placeholder="Enter Category Name" required>
                <br><br><br>
                <input type="hidden" name="aid" value="<%=aid%>">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="img">Select Image: </label>
                &nbsp;&nbsp;
                <input type="file" id="img" name="img" accept="image/*" required>
                <br><br><br>
                <input type="submit" value="Update" name="btn_update" id="submit">
                <br><br>
            </form>
                
        </div> 
 <br>
    </div>
   
<!--cards -->
  </body>
</html>
