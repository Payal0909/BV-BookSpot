<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
    
        String Bid = (String) session.getAttribute("bid");
        int Pid = Integer.parseInt(request.getParameter("Pid"));
        String Bname ="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
        
        String query1 = "Select * from buyer where b_id = '"+Bid+"' ";
        Statement stmt=conn.createStatement(); 
        ResultSet rs1=stmt.executeQuery(query1);  
        if(rs1.next())
         Bname=rs1.getString(3);
  
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product specifications/Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" href="style.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  </head>
  <style>

       body{
            margin: 0px;
            padding: 0px;
            font-family: Verdana, Geneva, Tahoma, sans-serifs;
            background: url(images/homepage.jpeg);  

            
            
        }
          img{
          width: 500px;
          height: 600px;
         
      }
      .name{
          padding-left: 50px;
      }
      table{
                border-collapse: separate;
                border-spacing: 100px 15px;
                margin-left: 20px;
                margin-top: 10px;
            }
/*      table, td, th{
          border: 50px solid white;
      }*/
.btn {
  text-align: justify;
  display: inline-block;
  font-size: 20px;
  font-family: sans-serif;
  cursor: pointer;
  width: 125px;
  height: 40px;
  background-color: #ff7200;
}
.heading{
      color:black;
      font-family: Arial, Helvetica, sans-serif;
      text-align: center;
  }
  div.main{
    background-color: rgba(0,0,0,0.5);
    width: 100%;
    font-size: 18px;
    border-radius: 10px;
    border: 1px solid rbga(255,255,255,0.3);
    box-shadow: 2px 2px 15px;
    color: #fff;
}
  .product-content{
      padding-top: 30px;
/*    margin-top: 30px;*/
    padding-bottom: 30px;
    width: 650px;
    padding-left:30px;
     padding-right: 30px;
    
    
}

.card{
    background-color: #414141;
    opacity: 0.75;
}
.head{
    font-size: 25px;
    color: #ff7200;
    font-weight: bolder;
    font-family: inherit;
}
#menu li {
    list-style-type: none;
    display: inline-block;
    margin: 10px;
  }
  #menu li a {
    color: white;
    text-decoration: none;
    font-size: 15px;
    font-family: Arial;
    transition: 0.4s ease-in-out;
  }
  #menu li a:hover {
    color: #ff7200;
    text-decoration: underline;
  }
  input[type="submit"]{
    background-color:#ff7200;
}
</style>
  <body>
     <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <span class="head" href="#">&#128366; BV-BookSpot</span>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    </button>
                <ul id="menu">
                <li><a href="buyerHome.jsp">BUYER HOME</a></li>
                <li><a href="favourites.jsp">MY CART</a></li>
                <li><a href="feedback_buyer.jsp">FEEDBACK</a></li>
                <li><a href="homepage.jsp">LOGOUT</a></li>
              </ul>
  </div>
</nav>
      <br> <br><br><br>

      <%
            String name="",path="",desc="",sid="",sname="",sphn="",sadd="";
            int cp=0,sp=0,flag=0;
            PreparedStatement pstmt = null;
            ResultSet rst = null;
            PreparedStatement pstmt1 = null;
            ResultSet rst1 = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            pstmt = conn.prepareStatement("Select * from product where p_id = ?");
            pstmt.setInt(1, Pid);
            rst = pstmt.executeQuery();
            if(rst.next() )
            {
                name = rst.getString("p_name");
                    path = rst.getString("p_image");
                    cp = rst.getInt("p_cp");
                    sp = rst.getInt("p_price");
                    desc = rst.getString("p_desc");
                    flag = rst.getInt("p_status");
                    sid = rst.getString("s_id");
            }
                    pstmt1 = conn.prepareStatement("Select * from seller where s_id = ?");
                    pstmt1.setString(1, sid);
                    rst1 = pstmt1.executeQuery();
                    if(rst1.next() ){
                        sname = rst1.getString("s_name");
                        sphn = rst1.getString("s_phone");
                        sadd = rst1.getString("s_address");
                    }
                        }catch(Exception e){
                e.printStackTrace();
            }
                %>
                <div class="name">
                   <h2 style="color: white">Welcome <%=Bname%></h2>  
                </div>
     
      <table>
          <tr>
              <td>
                  <div class = "product-imgs">
                <img src = "images/<%=path%>"  alt = "books image">
                 </div>   
              </td>
              <td>
                  <div class="main"> 
                      <div class = "product-content">
                          <h2 class = "product-title"><u><i><%=name%></i></u></h2>
          
          

          <div class = "product-price">
            <p class = "last-price">Old Price: <span><%=cp%> Rs</span></p>
            <p class = "new-price">New Price: <span><%=sp%> Rs</span></p>
          </div>

          <div class = "product-detail">
              <h2><u><i>Item Description</i></u> </h2>
              <label class="desc-box" style="color:white ;font-size:20px;"><%=desc%></label>
              <br>
              <br>
            <div class = "seller-details">
                <h4> <u><i>Seller Details</u></i></h4>
            <p>Name : <span><%=sname%></span></p>
            <p>Phone no : <span><%=sphn%></span></p>
            <p>Address : <span><%=sadd%></span></p>
          </div>
            <ul>
                <%
                    if(flag > 0){
                            %>
              <li>Available: <span>In stock</span></li>
              <% }else{ %>
              <li>Available: <span>Not in stock</span></li>
              <%}%>
            </ul>
          </div>

          <div class = "purchase-info">
              <form method="post" onsubmit="addCart()">
              
                  <input type="submit" name="submit" id="submit" value="Add to Cart">
               <!--   <button type = "button" class = "btn">Add To Cart</button>  -->
              </form>
              <br>
          </div>
        </div>
                  </div>
                  
      </div> 
              </td>
          </tr>
          
      </table>

  
  </body>
</html>
    <%
        if(request.getParameter("submit") != null){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            stmt = conn.createStatement(); 
            String q1 = "select * from favourites where b_id = '"+Bid+"' AND p_id = "+Pid+"";
            ResultSet rs=stmt.executeQuery(q1);
            boolean status=rs.next(); 
            if(!status){
                String query = "insert into favourites(b_id,p_id) values('"+Bid+"',"+Pid+")";
                int i = stmt.executeUpdate(query);
                if(i > 0)
                {
                    %>
                    <script>
                        alert("Added to Cart Successfully");
                        window.location= "favourites.jsp";
                    </script>
                    <%
                }
                else{
                    %>
                    <script>
                        alert("Error : Internal Error Occurred");
                        window.location= "favourites.jsp";
                    </script>
                    <%
                }
}
            else
            {
                %>
                    <script>
                        alert("Already in cart"); 
                        window.location= "favourites.jsp";
                    </script>
                <%
            }
        }catch(Exception e){
            e.printStackTrace();
        }
}
    %>