<%-- 
    Document   : resetpassword_s
    Created on : 23 Apr, 2022, 12:02:18 AM
    Author     : HP
--%>

<%@page import="java.sql.* " %>
<%@page import="java.util.* " %>
<% Class.forName("com.mysql.jdbc.Driver");%>
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
        body {
    font-size: 100%;
    font-family: Arial, Helvetica, sans-serif;
    background: url("images/registration2.jpeg");
  }
  h2 {
      text-align: center;
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
     margin: 0 20px; 
  }
  #menu li a:hover {
    color: #ff7200;
    text-decoration: underline;
  }
  section {
    width: 100%;
    height: 100vh;
    float: left;
  }
   
  #home {
    background: url("homepage2.jpeg");
    background-size: cover;
  }
  #AboutUs {
    background-color: rgb(0, 255, 149);
  }
  #ContactUs {
    background-color: #e5ff00;
  }
    
  /* .main{
    width: 350px;
    height: 450px;
    background-color: black;
    opacity: 0.75;
    position: absolute;
    text-align: center;
    margin-left: 200px;
    border-radius: 15px;
  
  } */
  .heading{
      color:aliceblue;
  }
  form {
      background-color: black;
      opacity: 0.75;
      padding: 20px 30px;
      border: 2px solid white;
      position: absolute;
      width: 350px;
      height: 350px;
      margin-left: 550px;
      border-radius: 15px;
      top: 100px;
  
  }
  input[type="password"],
  input[type="text"] {
      width: 100%;
      display:block;
      box-sizing: border-box;
      padding: 0 10px;
      height: 40px;
      margin-bottom: 15px;
      border: 1px solid black;
      border-radius: 10px;
  }
  input[type="submit"] {
      width: 100%;
      display:block;
      box-sizing: border-box;
      padding: 0 10px;
      height: 40px;
      background-color: #ff7200;
      margin-bottom: 15px;
      border: 1px solid black;
      border-radius: 10px;
  }
  input[type="email"]:focus,
  input[type="number"]:focus,
  input[type="password"]:focus,
  input[type="text"]:focus {
      border: 2px solid gray;
      box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);
      border-radius: 10px;
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
            <div class="reset">
                <form name="myform" id="reset" method="post" onsubmit="return resetPass()">
                    <h2 class="heading">Change Password</h2>
                    
                    <br><br>
                    <label hidden>New Password :</label>
                    
                    <input type="password" name="pass" id="pass" placeholder="Enter New Password" required="">
    
                    <label hidden>Confirm Password :</label>
                    
                    <input type="password" name="cpass" id="cpass" placeholder="Confirm Password" required="">
                  
                    <input type="submit" value="Reset" name="reset" id="reset">
                </form>
                <script>
                    function resetPass(){
//                        var uid = document.myform.uid.value;
//                        var role = document.myform.role.value;
                        var pass = document.myform.pass.value;
                        var cpass = document.myform.cpass.value;
                        if(pass.length < 8)
                        {
                            alert("Password must be at least 8 characters long");
                            return false;
                        }
                        if(pass != cpass)
                        {
                            alert("Confirm password is not same as new password");
                            return false;
                        }
                    }
                 </script>
            </div>
        </div>
    </body>
</html>
<%
    if(request.getParameter("reset") != null)
    {   String userid= (String) session.getAttribute("sid");
        String p = request.getParameter("pass");
        String query = "";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
             query = "update seller set s_pass = '"+p+"' where s_id = '"+userid+"'";
            Statement stmt = conn.createStatement();
            int i = stmt.executeUpdate(query);
            if(i > 0)
            {
                %>
                <script>
                    alert("Password is reset");
                    window.location = "resetpassword_s.jsp";
                </script>
                <%
            }
            else{
                %>
                <script>
                    alert("Error : Some of your creadentials are wrong");
                    window.location = "resetpassword_s.jsp";
                </script>
                <%
            }
        }catch(Exception e){e.printStackTrace();}
    }
    %>