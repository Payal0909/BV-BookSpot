<%-- 
    Document   : forgotpassword_s
    Created on : 22 Apr, 2022, 11:45:43 PM
    Author     : HP
--%>

<%@page import="java.util.* " %>
<%@ page import ="java.sql.*" %>
<%@ page session = "true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Page</title>
        <link href="CSS/stylereset.css" rel="stylesheet" type="text/css">
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
   <style>
     
* {
    margin: 0;
    padding: 0;
}
body {
    background: url("images/registration2.jpeg");
}
div.main{
    padding-top: 80px;
    margin-top: 50px;
    padding-bottom: 0px;
    width: 400px;
    margin: auto;
}
h2 {
    text-align: center;
    padding: 20px;
    font-family: sans-serif;
    font-style: italic;
}

div.forget_pass{
    background-color: rgba(0,0,0,0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rbga(255,255,255,0.3);
    box-shadow: 2px 2px 15px;
    color: #fff;
}
form#my_form{
    margin:40px;
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
 
input[type="text"]
 {
    border-radius: 15px;
    text-align: center;
    width: 90%;
    display:block;
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    margin: auto;
    margin-bottom: 15px;
    border: 1px solid black;
    font-style: italic;
}


input[type="submit"]
 {
    border-radius: 15px;
    font-style: italic;
    width: 90%;
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
input[type="text"]
:focus {
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
    <body>
        <section id="home">
            <header>
              <span id="logo">&#128366; BV-BookSpot</span>
              <ul id="menu">
                <li><a href="http://localhost:8080/BookSpot/homepage.jsp">HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
              </ul>
            </header>
            <section>
      
        <div class="main">
            <div class="forget_pass">
                <form name="my_form" id="reset" method="post" onsubmit="return resetPass()">
                    <h2 class="heading">Forget Password</h2>
<!--                    <label>User id :</label>-->
       
                    <input type="text" name="uid" id="uid" placeholder="Enter Smart Id" required="">
                    <br>
<!--                    <label >Email :</label>-->
                    
                    <input type="text" name="email" id="uid" placeholder="Enter email Id" required="">
                    
                    <br>
                  <input type="submit" value="submit" name="submit" id="submit">
                  <br>
                </form>

            </div>
        </div>
    </body>
    <%
    if(request.getParameter("submit")!=null)
    { 
    try{
        String Userid = request.getParameter("uid"); 
        String email = request.getParameter("email");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        String query = "";
            session.setAttribute("sid",Userid);
            query="Select s_id,s_email from seller where s_id=? and s_email=?";  
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, email);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())        
                     response.sendRedirect("resetpassword_s.jsp");        
                 else
                 {
                   %>
                        <script>
                            alert("Invalid userid or password"); 
                            window.location= "forgotpassword_s.jsp";
                        </script>
                       
                    <%   
                 }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"); 
       
   }      

    }
  
%>
</html>