<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <title>Post product</title>
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
    background: url("images/postProduct.webp");
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
div.main{
    padding-top: 150px;
    margin-top: 50px;
    padding-bottom: 0px;
    width: 400px;
    margin: auto;
}
h3{
    color: coral;
    font-size: 20px;
    font-style: italic;
}
h2 {
    color: whitesmoke;
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
form#card{
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
input[type="file"],
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
    margin-bottom: 15px;
    font-style: italic;
    border-radius: 15px;
}
textArea:focus,
select:focus{
    border: 4px solid orange;
    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.13);
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
input[type="email"]:focus,
input[type="number"]:focus,
input[type="password"]:focus,
input[type="file"]:focus,
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
                String sid = (String) session.getAttribute("sid");
                String sname="";
                 
                 String query="select s_name from seller where s_id='"+sid+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean status=rs.next();
                if(status)
                {
                    sname=rs.getString(1);
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
 <!--cards -->
        <div class="card">
            <h2 align="center">Product Details</h2>
            <div>
                <form name="f1" action="FileUpload" method="POST" enctype="multipart/form-data" class="form" onsubmit="return validateform()">
                    <input type="hidden" name="sid" value="<%=sid%>">
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="category" class="hidden-label">Category: </label>
                     
        <%
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
            Statement st = con.createStatement();
            String sql = "SELECT * FROM category";
            ResultSet rst = st.executeQuery(sql);
            int cflag=0;
        %>
         <select id="category" name="drpCat" required>
           <option disabled selected value>Choose Category </option>
        <%  while(rst.next()){
                cflag=rst.getInt(4);
                if(cflag==1){
        %>
            <option><%= rst.getString(2)%></option>
        <% }} %>
                        </select>
                    <label for="ProductTitle" class="hidden-label">Product Title: </label>
                    <input id="ProductTitle" type="text" name="txttitle" value="" placeholder="Enter Product Title" required>
                    <label for="ProductPrice" class="hidden-label">Product Selling Price: </label>
                    <input id="ProductPrice" type="text" name="txtprice" value="" placeholder="Enter Product Selling Price" required>
                    <label for="ProductPriceCP" class="hidden-label">Product Cost Price: </label>
                    <input id="ProductPriceCP" type="text" name="txtpriceCP" value="" placeholder="Enter Product Cost Price" required>
                    <label for="ProductDescription" class="hidden-label">Product Description: </label>
                    <input id="ProductDescription" type="text" name="txtdesc" value="" placeholder="Enter Product Description" required>
                    <label for="img" class="hidden-label">Select Image: </label>
                    <input type="file" id="img" name="img" accept="image/*" required>  
                    <input type="submit" value="Upload" name="btn_upload" id="submit">  
                    <br>
            </form>
            <script>  
function validateform(){  
var title=document.f1.txttitle.value; 
var price=parseInt(document.f1.txtprice.value); 
var price_cp=parseInt(document.f1.txtpriceCP.value);
var desc=document.f1.txtdesc.value;
    if(title.length>50){  
         alert("Product Title must be less than 50 Characters!!");  
         return false;  
    }  
  if(isNaN(price) && isNaN(price_cp)){
        alert("Product Price must be in digits!!");
        return false;
        }
      if(price_cp<price){  
         alert("Product cost price can't be less than product selling price!!");  
         return false;  
    }  
     if(desc.length>100){  
         alert("Product Description must be less than 100 characters!!");  
         return false;  
    }  
}  
</script> 
            </div>
        </div> 
 
    </div>
<!--cards -->
  </body>
</html>