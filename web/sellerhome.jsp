<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.util.* " %>
<%@ page session = "true" %>
<%
    
        String Sid = (String) session.getAttribute("sid");
        session.setAttribute("sid",Sid);
        String Sname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        
        String query = "Select * from seller where s_id = '"+Sid+"' ";
        
        Statement stmt=conn.createStatement(); 
        ResultSet rs=stmt.executeQuery(query);  
        if(rs.next())
         Sname=rs.getString(3);  
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
                column-gap: 100px;
                background-color: #ffdab3;
                padding:20px;
                border-radius: 10px;
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
                border-spacing: 150px 15px;
                text-align: center;
                margin-left: 290px;
                margin-right: 170px;
                margin-top: 190px;
            }
            img{
                height: 150px;
                width: 200px;
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
        </style>
    </head>
    <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <h2>Welcome <%=Sname%></h2>
        <ul id="menu">
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp">HOME</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#AboutUs">ABOUT US</a></li>
          <li><a href="http://localhost:8080/BookSpot/homepage.jsp#ContactUs">CONTACT US</a></li>
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
                    <a href="http://localhost:8080/BookSpot/post_product.jsp">
                       <img src="images/post.svg"/>
                       <h3>Post Products</h3>
                    </a>
                </div>
            </td>
            <td>
                <div class="div1">
                    <br>
                    <a href="http://localhost:8080/BookSpot/viewmyproducts.jsp?sid=<%=Sid%>&pageno=1">
                    <img src="images/view.svg"/>
                    <h3>View My Products</h3>
                </a>
                </div>
            </td>
        </tr>
    </table>
    </body>
</html>



        