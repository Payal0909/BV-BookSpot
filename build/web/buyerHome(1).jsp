<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.util.* " %>
<%@ page session = "true" %>

<%
    
        String Bid = (String) session.getAttribute("bid");  
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query = "Select * from buyer where b_id = '"+Bid+"' ";
        
        Statement stmt1=conn1.createStatement(); 
        ResultSet rs1=stmt1.executeQuery(query);  
        if(rs1.next())
         Bname=rs1.getString(3);  
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller home page</title>
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
                background: url("images/book81.jpeg");
            }
            a{
               text-decoration: none;
            } 
            h2{
                color: whitesmoke;
                font-size: 40px;
                font-style: italic;
            }
            h3{
                color: coral;
                font-size: 20px;
                font-style: italic;
            }
            .div1{
                column-gap: 80px;
                background-color: #ffdab3;
                padding:20px;
                border-radius: 40px;
                box-shadow: 0px 0px 15px 2px teal;
                transition: 0.5s;
            }
            .div1:hover{
                transform:scale(0.9);
                box-shadow:0px 0px 5px 7px teal;
                transition: 0.3s;
            }
            table{
                border-collapse: separate;
                border-spacing: 130px 15px;
                text-align: center;
                margin-left: 180px;
/*                margin-right: 180px;*/
                margin-top: 190px;
            }
            img{
                height: 200px;
                width: 300px;
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
  font-family: inherit;
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
        </style>
    </head>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
         <h2>Welcome <%=Bname%></h2>
        <ul id="menu">
          <li><a href="homepage.jsp">HOME</a></li>
          <li><a href="feedback_buyer.jsp">FEEDBACK</a></li>
          <li><a href="homepage.jsp">LOGOUT</a></li>
        </ul>
    </header>
    <body>
        <br>
        <br>
        <table id="table">
        <tr>
            <td>
                <div class="div1">
                    <br>
                    <a href="education.jsp">
                       <img src="Picture1.svg"/>
                       <h3>Education category</h3>
                    </a>
                </div>
            </td>
            <td>
<!--                <div class="div1">
                    <br>
                    <a href="miscellaneous.jsp">
                       <img src="Picture5.svg"/>
                       <h3>Miscellaneous category</h3>
                    </a>
                </div>-->
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="entertain.jsp">
                    <img src="Picture3.svg"/>
                    <h3>Entertainment category</h3>
                </a>
                </div>
            </td>
            
        </tr>
    </table>
    </body>
</html>