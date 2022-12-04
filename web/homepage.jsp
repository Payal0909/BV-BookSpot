<%-- 
    Document   : homepage.jsp
    Created on : 24 Mar, 2022, 9:33:13 PM
    Author     : HP
--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
        * {
  margin: 0;
  padding: 0;
}
html {
  scroll-behavior: smooth;
}
body {
  font-size: 100%;
  font-family: Arial, Helvetica, sans-serif;
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
section {
  width: 100%;
  height: 100vh;
  float: left;
}

#home {
  background: url("images/homepage.jpeg");
  background-size: cover;
}
#AboutUs {
  background-color: rgb(0, 255, 149);
}
#ContactUs {
  background-color: #e5ff00;
}
.content {
  width: 1300px;
  height: auto;
  margin: auto;
  color: white;
  position: relative;
  top: 15%;
  left: 3%;
}

.content .par {
  margin-left: 5px;
  margin-top: 15px;
  padding-left: 20px;
  padding-bottom: 25px;
  letter-spacing: 1.4px;
  line-height: 35px;
  font-size: 20px;
  font-weight: bolder;
  position: relative;
  left: 20px;
  color: white;
  font-family: "Libre Baskerville", serif;
}

.content h1 {
  font-family: Georgia, "Times New Roman", Times, serif;
  font-style: oblique;
  font-size: 60px;
  padding-left: 20px;
  margin-top: 10%;
  letter-spacing: 2px;
  color: #f79707;
  font-weight: bold;
}
.logsign {
  width: 350px;
  height: 450px;
  background-color: black;
  opacity: 0.75;
  position: absolute;
  top: -35%;
  left: 60%;
  text-align: center;
  border-radius: 15px;
}

.seller,
.buyer {
  background-color: #0bee12;
  border: none;
  color: white;
  width: 250px;
  padding: 15px 32px;
  margin: 30px auto;
  text-align: center;
  text-decoration: none;
  display: block;
  font-size: 18px;
  cursor: pointer;
  font-weight: 600;
  border-radius: 45px;
}

.signup {
  background-color: #f36a09;
  border: none;
  color: white;
  width: 250px;
  padding: 15px 32px;
  margin: 15px auto;
  text-align: center;
  text-decoration: none;
  display: block;
  font-size: 18px;
  cursor: pointer;
  font-weight: 600;
  border-radius: 45px;
}
.logsign #one,
.logsign #two {
  padding: 6px 6px;
  margin: 12px auto;
  color: #f36a09;
  font-style: italic;
}
.logsign #three {
  padding: 5px 5px;
  margin: 25px 4px auto;
  color: #f36a09;
  font-style: italic;
}
.logsign #four {
  padding: 5px 5px;
  margin: 0px 4px auto;
  color: #f36a09;
  font-style: italic;
}

/* About us*/
#AboutUs {
  background: url("images/about.jpg");
  background-size: cover;
}
.head {
  position: relative;
  top: 18%;
  left: 5%;
  font-family: Arial, Helvetica, sans-serif;
  font-style: oblique;
  font-size: 20px;
  letter-spacing: 2px;
  color: black;
  font-weight: bold;
  text-decoration: underline;
}
.contentabout {
  position: relative;
  top: 30%;
  left: 5%;
  font-style: oblique;
  font-size: 20px;
  letter-spacing: 1px;
  color: black;
  font-family: Arial, Helvetica, sans-serif;
}
#ContactUs {
  background: url("images/contact2.jpg");
  background-size: cover;
}
.headcon {
  position: relative;
  top: 20%;
  left: 8%;
  font-family: Arial, Helvetica, sans-serif;
  font-style: oblique;
  font-size: 20px;
  letter-spacing: 2px;
  color: white;
  font-weight: bold;
  text-decoration: underline;
}
.headcon .query {
  position: relative;
  top: 22%;
  left: 2%;
  font-family: Arial, Helvetica, sans-serif;
  font-style: oblique;
  font-size: 18px;
  letter-spacing: 1px;
  color: white;
  font-weight: 600;
  margin-top: 20px;
  padding-top: 10px;
  text-decoration: none;
}
.contentcontact {
  position: relative;
  top: 30%;
  left: 5%;
  font-style: oblique;
  font-size: 20px;
  letter-spacing: 1px;
  color: white;
  font-family: Arial, Helvetica, sans-serif;
}
.info tr th {
  padding: 10px;
  margin: 5px;
  font-size: 20px;
  font-weight: bold;
  text-decoration: underline;
}
.info tr {
  padding: 10px;
  margin: 5px;
  font-size: 20px;
}
.info tr td {
  padding: 15px;
  margin: 5px;
  text-align: center;
}

    </style>
    <title>Homepage</title>
  </head>
  <body>
    <section id="home">
      <header>
        <span id="logo">&#128366; BV-BookSpot</span>
        <ul id="menu">
          <li><a href="#home">HOME</a></li>
          <li><a href="#AboutUs">ABOUT US</a></li>
          <li><a href="#ContactUs">CONTACT US</a></li>
          <li><a href="Adminlogin.jsp"> <img src="images/icon.png" alt="logo" style="width: 40px; height: 40px;" /></a></li>
        </ul>
      </header>
      <section>
        <div class="content">
          <h1>Welcome To <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BV-BookSpot</h1>
          <p class="par">
            A place where you can buy and sell
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;second hand books at an
            affordable price<br />
          </p>

          <div class="logsign">
            <h2 id="one">Already Have An Account !!</h2>
            <h2 id="two">Login Here</h2>
            <a href="Sellerlogin.jsp" class="seller">Login as Seller</a>
            <a href="Buyerlogin.jsp" class="buyer">Login as Buyer</a>
            <h3 id="three">Don't have an Account ?</h3>
            <h3 id="four">Sign-Up Here !</h3>
            <a href="registration.jsp" class="signup">Sign-Up</a>
          </div>
        </div>
      </section>
    </section>
    <section id="AboutUs">
      <div class="head">
        <h1 id="about">About Us</h1>
      </div>
      <div class="contentabout">
        <p>
          BV-BookSpot is a second hand books selling and buying portal within the Vidyapith <br> &nbsp;campus.
          <br> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A common problem faced by students in Banasthali Vidyapith is,finding seniors for <br> buying second hand books and similarly for the students selling their books face problem <br> in finding the right buyer for them.
<br> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hence, making both the ends meet,We 'The BV-BookSpot' are here as the <br>one stop  solution for this problem providing a wide range of product categories<br> along  with  products at a reasonable price and promise to provide you a user <br>friendly 
experience.
        </p>
      </div>
    </section>
    <section id="ContactUs">
      <div class="headcon">
        <h1 id="contact">
          Contact Us</h1>
          <p class="query">For any query and help,Feel free to contact at below details </p>
      </div>
      <div class="contentcontact">
        <table class="info">
  <tr>
    <th>Admin <br>name</th>
    <th>Email</th>
    <th>Phone No.</th>
  </tr>
  <tr>
    <td>Manya Singh</td>
    <td>btbtc19265_manya@banasthali.in</td>
    <td>9096123212</td>
  </tr>
  <tr>
    <td>Payal Bhawnani</td>
    <td>btbtc19077_payal@banasthali.in</td>
    <td>9490123212</td>
  </tr>
  <tr>
    <td>Paridhi Khandelwal</td>
    <td>btbtc19167_paridhi@banasthali.in</td>
    <td>9550123212</td>
  </tr>
  <tr>
    <td>Palak Pawa</td>
    <td>btbtc19295_palak@banasthali.in</td>
    <td>9033123212</td>
  </tr>
      </div>
    </section>
  </body>
</html>


