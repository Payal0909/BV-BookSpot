<%-- 
    Document   : registration
    Created on : 17 Feb, 2022, 5:40:47 PM
    Author     : DELL
--%>
<%@page import="java.sql.DriverManager,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
  <!--      <link rel="stylesheet" type="text/css" href="CSS/style_registration_page.css"> -->
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

div.register{
    background-color: rgba(0,0,0,0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rbga(255,255,255,0.3);
    box-shadow: 2px 2px 15px;
    color: #fff;
}
form#register{
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
input[type="email"],
input[type="number"],
input[type="password"],
input[type="text"] {
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
textArea{
    font-style: italic;
    border-radius: 6px;
}
select{
    font-style: italic;
    border-radius: 15px;
}
textArea:focus,
select:focus{
    border: 4px solid orange;
    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);
}
input[type="submit"],
input[type="reset"] {
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
input[type="email"]:focus,
input[type="number"]:focus,
input[type="password"]:focus,
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
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#home">HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
        </ul>
      </header>
    <body>
        <div class="main">
            <div class="register">
    <!--        <img src="images/water.png" alt="logo" class="center" width="200" height="100"> -->
                <form name="myform" method="post" onsubmit="return validateForm()">
                    <h2>Register Here</h2>
                    <br>
                    <label for="name" class="hidden-label">Name : </label>
                    <input id="name" type="text" name="name" placeholder="Enter your name" required>
                    <label for="studentID" class="hidden-label">Student ID : </label>
                    <input id="studentID" type="text" name="sid" placeholder="Enter Smart-ID" required>
                    <label for="pass" class="hidden-label">Password : </label>
                    <input id="pass" type="password" name="password" placeholder="Enter Password" required>
                    <label for="no" class="hidden-label">Contact Number : </label>
                    <input id="no" type="number" name="pno" placeholder="Enter Contact Number" required>
                    <label for="mail" class="hidden-label">Email ID : </label>
                    <input id="mail" type="email" name="email" placeholder="Enter your email id" required>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="mytextarea" class="hidden-label">Address : </label>
                    <textarea name="address" rows="5" cols="35" id="mytextarea" placeholder="  Hostel Name Room number Bed number" required></textarea>
                    <br><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="role" class="hidden-label">Role : </label>
                    <select name="drprole" id="role" required>
                        <option disabled selected value>Choose role </option>
                        <option value="Seller">Seller</option>
                        <option value="Buyer">Buyer</option>
                    </select>
                    <br><br>
                    <input type="submit" value="Submit" name="submit" id="submit">
                    <input type="reset" value="Reset" name="reset" id="reset">
                    <br>
                </form>
                <script>
                    function validateForm()
                    {
                        var email = document.myform.email.value;
                        var address = document.myform.address.value;
                        var password = document.myform.password.value;
                        var pno = document.myform.pno.value;
                        var sid = document.myform.sid.value;
                        if(!(/\b(BTBT)[A-Z][0-9]{5}\b/.test(myform.sid.value)))
                        {
                            alert("Enter Valid SmartCardID"); 
                            return false;
                        }
                        if(!(/btbt[a-z][0-9]{5}+_[a-z]+@banasthali.in/.test(myform.email.value)))
                        {
                            alert("You have entered an invalid email address!"); 
                            return false;
                        }
                        if(password.length < 8)
                        {
                            alert("Password must be at least 8 characters long."); 
                            return false;
                        }
                        if(!(/^\d{10}$/.test(myform.pno.value)))
                        { 
                            alert("Enter Valid Phone Number"); 
                            return false;
                        }
                        if(address.length < 8)
                        {
                            alert("Address must be atleast 10 characters long.");
                            return false;
                        }
                    }
                </script>
            </div>
        </div>
    </body>
</html>
<%
    if(request.getParameter("submit")!=null)
    {
        String n=request.getParameter("name");
        String i=request.getParameter("sid");
        String p=request.getParameter("password");
        String pnoo=request.getParameter("pno");
        String e=request.getParameter("email");
        String a=request.getParameter("address");
        String r=request.getParameter("drprole");
        if(r.equals("Seller"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=con.createStatement();
                String query1="select s_id from seller where s_id='"+i+"'"; 
                ResultSet rs=stmt.executeQuery(query1);
                boolean status=rs.next(); 
                if(!status)
                {
                    String query="insert into seller(s_id,s_pass,s_name,s_email,s_phone,s_address)values('"+i+"','"+p+"','"+n+"','"+e+"','"+pnoo+"','"+a+"')";
                    int x=stmt.executeUpdate(query); 
                    if(x>0)
                    {%>
                        <script>
                            alert("Successfully Registered"); 
                            window.location= "homepage.jsp";
                        </script>
                        <!--	response.sendRedirect("seller_cardpage.jsp?sid="+uid);	-->
                    <%}
                    else
                    {%>
                        <script> 
                            alert("Error");
                            window.location= "registration.jsp";
                        </script>
                        <!--	response.sendRedirect("login_s.jsp");-->
                    <%}
                }
                else
                {%>
                    <script>
                        alert("Student ID is already registered"); 
                        window.location= "registration.jsp";
                    </script>
                <%}
            }catch(Exception ex){ex.printStackTrace();}
        }
        else if(r.equals("Buyer"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=con.createStatement();
                String query1="select b_id from buyer where b_id='"+i+"'"; 
                ResultSet rs=stmt.executeQuery(query1);
                boolean status=rs.next(); 
                if(!status)
                {
                    String query="insert into buyer(b_id,b_pass,b_name,b_email,b_phone,b_address)values('"+i+"','"+p+"','"+n+"','"+e+"','"+pnoo+"','"+a+"')";
                    int x=stmt.executeUpdate(query); 
                    if(x>0)
                    {%>
                        <script>
                            alert("Successfully Registered"); 
                            window.location= "homepage.jsp";
                        </script>
                    <%}
                    else
                    {%>
                        <script> 
                            alert("Error");
                            window.location= "registration.jsp";
                        </script>
                    <%}
                }
                else
                {%>
                    <script>
                        alert("Student ID is already registered"); 
                        window.location= "registration.jsp";
                    </script>
                <%}
            }catch(Exception ex){ex.printStackTrace();}
        }
    }
%>