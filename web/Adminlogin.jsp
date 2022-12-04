<%-- 
    Document   : Adminlogin
    Created on : 29 Mar, 2022, 11:16:01 PM
    Author     : HP
--%>



<%@page import="java.util.* " %>
<%@ page import ="java.sql.*" %>
<%@ page session = "true" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="loginstyle.css" />
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
    <style>
         

body {
  font-size: 100%;
  font-family: Arial, Helvetica, sans-serif;
}
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
        body {
  margin: 0;
  padding: 0;
  background-image: url("buyer_seller_data_img.jpeg");
  background-size: cover;
}
.login {
  width: 320px;
  height: 420px;
  background-color: black;
  opacity: 0.85;
  color: white;
  top: 55%;
  left: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  font-family: sans-serif;
  padding: 70px 30px;
}
.login {
  border-radius: 20px;
}
.logo {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  position: absolute;
  top: -40px;
  left: calc(39%);
}
h1 {
  text-align: center;
  font-size: 22px;
  margin: 0;
  padding: 0 0 12px;
  color: #f77c17;
  letter-spacing: 0.6;
  font-style: italic;
}

.login p {
  margin: 0;
  padding: 0;
  font-weight: bold;
  font-style: italic;
}
.login .id {
  padding-top: 20px;
}
.login input {
  width: 100%;
  margin-bottom: 20px;
}
.login input[type="text"],
input[type="password"] {
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  outline: none;
  height: 40px;
  color: #fff;
  font-size: 16px;
  font-style: italic;
}
.login input[type="submit"] {
  border: none;
  outline: none;
  height: 40px;
  background-color: #ff9b29;
  color: #fff;
  font-size: 18px;
  border-radius: 20px;
  margin-top: 10px;

  font-weight: bold;
}
.login input[type="submit"]:hover {
  cursor: pointer;
  background: #f7560b;
  color: #000;
}
.login a {
  text-decoration: none;
  font-size: 14px;
  line-height: 20px;
  color: rgb(18, 149, 236);
  font-weight: 600;
  font-style: italic;
}
.login .pass {
  font-size: 15px;
  margin-bottom: 5px;
  font-style: italic;
  color: #f77c17;
}
.login a:hover {
  text-decoration: underline;
  font-size: 14px;
  line-height: 20px;
  color: rgb(29, 233, 223);
  font-weight: 700;
  font-style: italic;
}

    </style>
    <title>Admin Login Page</title>
  </head>
  <body>
      <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#home">HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
        </ul>
      </header>
    <div class="login">
      <img src="images/icon.png" alt="logo" class="logo" />
      <h1>Admin's Login</h1>
      <form mwthod="post">
        <p class="id">User-Id</p>
        <input type="text" name="uid" placeholder="Enter User_id" />
        <p>Password</p>
        <input type="password" name="pwd" placeholder="Enter Password" />
        <input type="submit" name="submit" value="Login" />
        <p class="pass">Forgot Password ?</p>
        <a href="#">Click here</a>
      </form>
    </div>
  </body>
</html>
<%
    if(request.getParameter("submit")!=null)
    { 
    try{
        String Userid = request.getParameter("uid"); 
        String password = request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        String query = "";
           session.setAttribute("aid",Userid);
             query="Select a_id,a_pass from admin where a_id=? and a_pass=?";
             PreparedStatement pst = conn.prepareStatement(query);
                pst.setString(1, Userid);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();                      
                 if(rs.next())           
                   response.sendRedirect("adminhome.jsp");        
                 else
                 {  
                      response.sendRedirect("errorloginAdmin.jsp");    
                 }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"); 
       
   }      

    }
  
%>


