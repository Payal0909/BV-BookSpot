<%-- 
    Document   : feedback_seller
    Created on : 5 Apr, 2022, 6:19:47 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
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
    padding-top: 140px;
    margin-top: 50px;
    padding-bottom: 0px;
    width: 800px;
    margin: auto;
}
h2 {
    color:whitesmoke;
    text-align: center;
    padding: 20px;
    font-family: sans-serif;
    font-style: italic;
}

div.text{
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
textArea{
    width: 100%;
    text-align: center;
    font-style: italic;
    border-radius: 15px;
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
label{
    font-style: italic;
    font-size:20px;
}
input[type="text"]:focus,
input[type="radio"]:focus {
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
h1,
h4{
    text-align: center;
    font-style: italic;
}
  </style>
    </head>
    <body>
        <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <ul id="menu">
            <li><a href="sellerhome.jsp">SELLER HOME</a></li>
          <li><a href="feedback_seller.jsp">FEEDBACK</a></li>
          <li><a href="homepage.jsp">LOGOUT</a></li>
        </ul>
      </header>
        <div class="main"> 
            <div class="text">
                <br>
                <h1>Feedback Form</h1>
                <br>
                <h4>We would love to hear your thoughts,suggestions,concerns or problems with anything so we can improve!</h4><br><br>
                <form name="myform" id="feedback" method="POST" autocomplete="off" onsubmit="return validateform()">
                    <label><b>Feedback Type :</b></label>
                    &emsp;&emsp;<input type="radio" name="type" value="comment"checked/> Comments&emsp;&emsp;&emsp;&emsp;&emsp;
                    <input type="radio" name="type" value="suggestion"/> Suggestions&emsp;&emsp;&emsp;&emsp;&emsp;
                    <input type="radio" name="type" value="question"/> Questions<br><br><br>
                <label class="hidden-label"><b>Email ID :</b></label>
                <input type="text" name="email" id="email" placeholder="Enter your email id" required>
                <br><br><br>
                <p style="font-size:18px;"><textarea name="comment" rows=5 cols=30 placeholder="Enter Feedback" required></textarea></p><br>
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                <button type="reset" name="btn_reset" style="width:25%;padding:10px 50px;background:orange;
                        border:0;outline:none;border-radius:30px">RESET</button>
                <button type="Submit" name="btn_submit" style="width:25%;padding:10px 30px;margin:10px 30px;background:orange;
                        border:0;outline:none;border-radius:30px">SUBMIT</button>
                 </form>
                <script>
                function validateform(){  
var email=document.myform.email.value; 
 if (!(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(myform.email.value)))
  {
      alert("You have entered an invalid email address!");
    return (false);
  }
}  
</script>  
            </div>
        </div>
        
    </body>
</html>
<%
    if(request.getParameter("btn_submit")!=null )
    {
        String type=request.getParameter("type");
        String email=request.getParameter("email");
        String comment=request.getParameter("comment");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
        Statement stmt=conn.createStatement();
        String query1="SELECT * FROM feedback WHERE f_id IN (SELECT MAX(f_id) FROM feedback)";
        ResultSet rs=stmt.executeQuery(query1);
        int fid=0;   
        while(rs.next())
        {
            fid=rs.getInt(1);
        }
        fid=fid+1;
        String query2="INSERT INTO feedback values (?,?,?,?)";
         PreparedStatement pst;
         pst=conn.prepareStatement(query2); 
          pst.setInt(1,fid);
           pst.setString(2,type);
           pst.setString(3,email);
           pst.setString(4,comment);
        int x=pst.executeUpdate();
        if(x>0)
        {%>
            <script>
                alert("Feedback Submitted Successfully"); 
                window.location= "feedback_seller.jsp";
            </script>
        <%}
        else
        {%>
            <script>
                alert("Internal Error"); 
                window.location= "feedback_seller.jsp";
            </script>
        <%}
        conn.close();
        }
        catch(Exception ex)
        {
           out.println(ex); 
        }
    }
    %>
