<%-- 
    Document   : modifydetails
    Created on : 7 Mar, 2022, 6:17:14 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <title>Modify Product</title>
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
    padding-top: 80px;
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
    border-radius: 15px;
    text-align: center;
    padding: 0 10px;
    height: 40px;
    border: 1px solid black;
    font-style: italic;
}
textArea{
    text-align: center;
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
label{
    font-style: italic;
    font-size:20px;
}
input[type="submit"]{
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
.img_text {
    display: flex;
  align-items: center;
}
  </style>
    </head>
            <% 
                String sid=request.getParameter("sid");
                String sname="";
                String query="select s_name from seller where s_id='"+sid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rst1=stmt.executeQuery(query);
                boolean status=rst1.next();
                if(status)
                {
                    sname=rst1.getString(1);
                }               
             %>
             <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <h2>Welcome <%=sname%></h2>
        <ul id="menu">
            <li><a href="sellerhome.jsp">SELLER HOME</a></li>
          <li><a href="feedback_seller.jsp">FEEDBACK</a></li>
          <li><a href="homepage.jsp">LOGOUT</a></li>
        </ul>
      </header>
    <div class="main">
         <div class="card">
             
                <h2 align="center">Modify Product Details</h2>
                    <form action="modify.jsp" method="GET">
           
        <%
            try {
               
               int ID = Integer.parseInt(request.getParameter("ID"));             
               System.out.println(ID);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM product where p_id="+ID+"";
                ResultSet rs = st.executeQuery(sql);
                String pname="",pdesc="",pimg="",catname="";
                int pstatus=0,pcat=0,pprice=0;
                while (rs.next()) {
                    pname = rs.getString(2);
                    pprice=rs.getInt(3);
                    pdesc = rs.getString(4);
                    pimg = rs.getString(5);                    
                    pstatus=rs.getInt(6);
                    pcat=rs.getInt(7);
                     
                
                ResultSet rst=st.executeQuery("select c_name from category where c_id="+pcat+"");
                while(rst.next()){
                catname=rst.getString(1);                 
         %> 
                <input type="hidden" name="ID" value="<%=ID%>">
                <input type="hidden" name="sid" value="<%=sid%>">
                <label for="category">Category: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label style="color:white ;font-size:20px;"><%=catname%></label>
                <br><br>
                <div class="img_text">
                <label for="img">Image: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <image src="images\\<%=pimg%>" width="150" height="150"/> 
                </div>
                <br>
                <label for="ProductTitle">Product Title: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="ProductTitle" type="text" name="txttitle" value="<%=catname%>" required>
                <br><br>
                <label for="ProductPrice">Product Price: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="ProductPrice" type="text" name="txtprice" value="<%=pprice%>" required>
                <br><br>
                <label for="ProductDescription">Product Description: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <textarea id="ProductDescription" name="txtdesc" value="<%=pdesc%>"required><%=pdesc%></textarea>
                <br><br>
                <label for="ProductStatus">Product Status: </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="ProductStatus" name="drpStatus">
                            <option >InStock</option>
                            <option >SoldOut</option>                          
                        </select>
                <br><br>
                <input type="submit" value="Update" name="btn_update" id="submit">
                <br>
            
                   
<%}}
 } catch (Exception e) {
                e.printStackTrace();;
            }
%>
        </table> 
       </form>
        </div>   
    </div>
<!--cards -->
  </body>
</html>