<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request Account Number</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style12 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #000000}
.style10 {	color: #FF00FF;
	font-size: 15px;
}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style14 {	font-size: 24px;
	color: #009900;
}
.style15 {	color: #FF00FF;
	font-weight: bold;
}
.style32 {	color: #FF0000;
	font-size: 14px;
}
.style33 {font-size: 14px}
.style35 {font-size: 16px}
.style37 {color: #FF0000; font-size: 20px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="UserMain.jsp"><span>Home Page</span></a></li>
          <li><a href="index.html"><span>logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="article">
        <h2 class="style10 style14">Requesting for Account Number..</h2>
        <div class="clr"></div>
        <%@ include file="connect.jsp" %>
        <%@ page import="java.util.*"%>
        <%@ page import="java.text.*"%>
        <%@ page import="java.util.Date"%>
        <%@ page import="java.sql.*"%>
        <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
        <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
        <%	
												String keys = "ef50a0ef2c3e3a5f";
												byte[] keyValue = keys.getBytes();
												Key key = new SecretKeySpec(keyValue,"AES");
												Cipher c = Cipher.getInstance("AES");
												c.init(Cipher.ENCRYPT_MODE,key);
												String keyy = String.valueOf(keyValue);
						
						String user=(String )application.getAttribute("uname");
						String bank=(String )application.getAttribute("ubank");
					
						String s1=null,s2=null,s3,s4,s5,s6;
						int i=0;
						try 
						{
							
							String query2="select * from accountrequest where user='"+user+"' and bank='"+bank+"'"; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		if ( rs2.next() )
					   		{
							
								s2=rs2.getString(5);
								s3=rs2.getString(6);
								s4=rs2.getString(7);
							
									if(s2.equalsIgnoreCase("Requested"))
									{%>
        <div class="sidebar">
          <div class="searchform">
            
          </div>
          <div class="clr"></div>
          <div class="gadget">
            <h2 class="star"><span>Sidebar</span> Menu</h2>
            <div class="clr"></div>
            <ul class="sb_menu">
              <li class="style13"><a href="UserMain.jsp">Home</a></li>
              <li class="style13"><a href="index.html">Logout</a></li>
              <li><span class="style13"><a href="UserProfile.jsp"></a></span></li>
              <li></li>
            </ul>
          </div>
        </div>
        <br/>
        <p class="style15"><span class="style33">Your Account Number is :</span> <span class="style32">Requested For Account Number </span> !!</p>
        <%}
									 else
									{
									
											String query1="select * from user where (username='"+user+"' and bank='"+bank+"') and transferstatus='Permitted'"; 
											Statement st1=connection.createStatement();
											ResultSet rs1=st1.executeQuery(query1);
											if ( rs1.next()==true )
											{
												
														if(s3.equalsIgnoreCase("Yes"))
														{
																
																%>
        <br/>
        <br/>
        <br/>
        <p class="style15"><span class="style35">Your Account Number is :</span><span class="style37">
          <%out.print(s2);%>
        </span></p><br>
		 <p class="style15"><span class="style35">Hash Code is :</span><span class="style37">
          <%out.print(s4);%>
        </span></p>
        <%
														}
														else
														{
																%>
        <br/>
        <br/>
        <br/>
        <p class="style15"><span class="style35">Your Account Number is :</span><span class="style37">
          <%out.print(s2);%>
        </span></p>
		<br>
		 <p class="style15"><span class="style35">Hash Code is :</span><span class="style37">
          <%out.print(s4);%>
        <%}
											}
											else
											{					
													
													
													
														if(s3.equalsIgnoreCase("Yes"))
														{
																
																%>
        <br/>
        <br/>
        <br/>
        <p class="style15"><span class="style35">Your Account Number is :</span><span class="style37">
          <%out.print(s2);%>
        </span></p>
		<br>
		 <p class="style15"><span class="style35">Hash Code is :</span><span class="style37">
          <%out.print(s4);%>
        <%
														}
														else
														{
															
																%>
        <br/>
        <br/>
        <br/>
        <p class="style15"><span class="style35">Your Account Number is :</span><span class="style37">
          <%out.print(s2);%>
        </span></p>
		<br>
		 <p class="style15"><span class="style35">Hash Code is :</span><span class="style37">
          <%out.print(s4);%>
        <%}
											
											}
										}
							}

							else
							{%>
        <br/>
        <p class="style15"><span class="style35">Your Account Number is :</span> <a href="U_AccountRequest.jsp?value1=<%="requests"%>" class="style32">Request for Account Number</a></p>
        <p>
          <%}
							   
									

						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
        </p>
        <div class="article">
          <p align="right"></p>
          <div class="clr"></div>
        </div>
        <div class="clr"><a href="UserMain.jsp" class="style11">Back</a></div>
        <p>&nbsp;</p>
        <p align="right">&nbsp;</p>
        <p align="right"><a href="UserMain.jsp" class="style11"></a></p>
      </div>
      </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
