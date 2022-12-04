<%-- 
    Document   : password
    Created on : 21 Apr, 2022, 10:12:57 PM
    Author     : DELL
--%>


<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%! static int randomCode=0; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
    
   
 li a {
  display: block;
  color: black;
  text-align: center;
  padding: 25px 45px;
  text-decoration: none;
  height:30px;
  background-color:#F4C430;
}


li a:hover {
height:30px;  
text-decoration: underline;
background-color:#FFDB58;
color:blue;
}
  
  .active {
  background-color:white;
}

ul {
    
   background-color:#F4C430;
    top:0%;
    position:absolute;
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  right:0;
}
::placeholder {
  color: gray;
  opacity: 0.8;
  font-size:14;
}

table {
  border: 1px solid gray;
  padding:40px;
  top:60%;
  width:600px;
  position:absolute;
  left:30%;
 box-shadow: 5px 10px 8px #888888;
background-color: #FFFAA0;
}

td{
font-size:16px;
font-family:Arial;
}


</style>
</head>
<body style=" background-image:url(feedback.png);background-repeat: no-repeat;background-size: cover">
    
    <form name="SignupForm" method="post" action="adminlogin.jsp" >
       <img src="ofs.png" style="length:125px;width:125px;margin-top:13px;margin-left:30px"/>
           <h1 style ="font-family:Arial Rounded MT Bold; top:40%; position: absolute;font-style:bold;font-size:47px; color:whitesmoke; left:17.5%;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Let's Find Your Account</h1>
            <ul>
                
                <li style="float:right;font-size:20px; "><a href="">Help</a></li>
                <li  style="float:right;font-size:20px; "><a href="adminlogin.jsp">Admin</a></li> 
                <li style="float:right;font-size:20px; "><a href="StudentEnteringDetails.jsp">Student</a></li>
                <li style="float:right;font-size:20px;"><a href="welcome.jsp">Home</a></li> 
            </ul>
        </div>
        <table>
            <tr>
                <td>
                     <h2> Forgot Password</h2></br>
                    No Problem! Enter your email ID below<br><br>
                    <h2 style="font-family:Garamond;font-size:32px;">Enter New Password</h2>
                      </td>
            </tr>
            <tr>
                      <td>
                    E-Mail:</td><td> <input style="border-radius:2.5px;font-size:20px" type="text" name="email" placeholder="Enter your emailID"/><br>
                    <button class="button1" name="submit"><span>Here's my email ID</span></button><br>
                      </td>
            </tr>
                      <tr>
                    <td>
                        <input type="text" name="OTP" placeholder="Enter the OTP" style="border-radius:2.5px;font-size:20px"/><br>
                    <button class="button1" name="verify"><span>Verify</span></button>   </td>
                      </tr>
                    
                                 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        <button class="button1" name="submitbtn" style="font-family:Calibri;border-radius:5px;font-size:25px;background-color:#F4C430; width:120px; color:black;"><span>Submit</span></button></br> </br>
            </tr> 
                      </table>
 <%
                String result;
                try {
                  
                    if (request.getParameter("submit") != null) {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","");
                        Statement st = con.createStatement();
                        String email = request.getParameter("email");
                        session.setAttribute("e_id", email);
                        //                String strQuery = "SELECT * FROM admin where e_id='" + email + "'";
                        //                ResultSet rs = st.executeQuery(strQuery);
                        //                boolean status=rs.next();
                        //                String Countrow = rs.getString(1);
                        //                if (Countrow.equals("1")) {

                        // Get recipient's email-ID, message & subject-line from mail.html page
                        Random rand = new Random();
                        randomCode = rand.nextInt(999999);
//                      out.print(randomCode);
                        // Defining the gmail host
                        String host = "smtp.gmail.com";
                        // Sender's email ID and password needs to be mentioned
                        final String from = "ananya4091@gmail.com";
                        final String pass = "mdmd2021";

                        final String subject = "Resetting code";
                        final String messg = "Your reset code is:" + randomCode;
//                        out.print(messg);
                        boolean sessionDebug = false;
                        // Creating Properties object
                        Properties props = new Properties();
                        // Defining properties
                        //props.put("mail.smtp.starttls.required","true");
                        props.put("mail.smtp.ssl.enable", "true");
                        props.put("mail.smtp.host", host);
                        props.put("mail.transport.protocol", "smtp");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.starttls.enable", "true");
                        props.put("mail.user", from);
                        props.put("mail.password", pass);
                        props.put("mail.port", 587); // there are some other ports also available
                        // Authorized the Session object.
                        //java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
                        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                            @Override
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(from, pass);
                            }
                        });
                        ResultSet rs = st.executeQuery("select * from seller where s_email='" + email + "'");
//                        out.print("hello");
                        while (rs.next()) {
                            try {
                                String to = rs.getString("s_email");
                                // Create a default MimeMessage object.
//                                out.print(to);
                                MimeMessage message = new MimeMessage(mailSession);
//                                out.print(message);
                                // Set From: header field of the header.
                                message.setFrom(new InternetAddress(from));
                                //InternetAddress[] address={new InternetAddress(to)};
                                // Set To: header field of the header.
                                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                                // Set Subject: header field
                                message.setSubject(subject);

                                // Now set the actual message
                                message.setText(messg);

//                                Transport transport=mailSession.getTransport("smtp");
//                                transport.connect(host,from,pass);
//                                // Send message
//                                out.print("hello");
//                                transport.sendMessage(messg,messg.getAllRecipients());
                                Transport.send(message);
//                               transport.close();
//                                out.println("done till here");
                                result = "OTP sent to your email id successfully !";
                                out.println(result);
                            } catch (Exception e) {
                               e.printStackTrace();
                                result = "Error: unable to send mail....";
                                out.println(e);
                                out.println(result);
                            }
                        }
                    }
                    if(request.getParameter("verify")!=null){
                        if(Integer.parseInt(request.getParameter("OTP"))==randomCode)
                                response.sendRedirect("homepage.jsp");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </form>
    </body>
</html>
