<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Genarate ACC num</title>
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
.style13 {color: #000000}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style14 {	font-size: 24px;
	color: #009900;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style57 {font-size: 15px}
.style87 {font-size: 14px}
.style87 {font-weight: bold; color: #FF00FF;}
.style94 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style96 {color: #0000FF}
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
          <li class="active"><a href="AdminMain.jsp"><span>Home Page</span></a></li>
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
      <div class="sb_menu">
        <div class="gadget">
          <table width="738" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="730"><span class="style10 style14">Generate Account Numbers for <span class="style30"><%=(String)application.getAttribute("vbank")%></span>'s Users..</span></td>
            </tr>
          </table>
          <div class="sidebar">
            <div class="searchform">
              <form id="formsearch" name="formsearch" method="post" action="AdminAuthentication.jsp">
                <span>
                <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                </span>
                <input name="button_search" src="images/search.gif" class="button_search" type="image" />
              </form>
            </div>
            <div class="clr"></div>
            <div class="gadget">
              <h2 class="star"><span>Sidebar</span> Menu</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
                <li class="style13"><a href="AdminMain.jsp">Home</a></li>
                <li class="style13"><a href="index.html">Logout</a></li>
                <li><span class="style13"><a href="UserProfile.jsp"></a></span></li>
                <li></li>
              </ul>
            </div>
          </div>
          <p>&nbsp;</p>
          <table width="663" align="left"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="104"  valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
              <td  width="196" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
              <td  width="215" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Requested Date</div></td>
              <td  width="145" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Account Number </div></td>
			  
            </tr>
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
					  String bank=(String)application.getAttribute("vbank");
					  String s1,s2,s3,s4,s5="",s6,s7;
						int i=0,j=1;
						try 
						{
						
						
						
											
												
												
						   	String query="select * from accountrequest where bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								
								
					%>
            <tr>
              <td height="57" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(j);%>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style87">
                  <%out.println(s1);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style87">
                  <%out.println(s2);%>
              </div></td>
			  
			 <% if(s4.equals("No"))
			  {%>
              <td valign="middle" height="57" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateAccountNumber.jsp?typebank=<%=bank%>&amp;id=<%=i%>&amp;username=<%=s1%>" class="style96 style30 style87">Generate ACC</a></div>
              </div></td>
           <%  }
			 
			 else if(s4.equals("Yes"))
             
				{ %>
				
				 <td valign="middle" height="57" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><% out.println(s3); %></div>
              </div></td>
				<%}
              }%>
			   
			  
            </tr>
            <%
									
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="VendorMain.jsp" class="style11"></a></p>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <div align="left"><span class="style13"><a href="AdminMain.jsp"></a></span><a href="AdminMain.jsp">Back</a></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
