<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User_Profile</title>
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
.style15 {color: #FF00FF}
.style22 {color: #00CC00}
.style26 {color: #939393}
.style41 {color: #6666FF}
.style42 {font-size: 13px}
.style7 {color: #FF0000; font-size: 14px; }
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
        <h2 class="style10 style14">User <span class="style15"><%=(String)application.getAttribute("uname")%></span>'s Profile with Finger Print.. </h2>
        <div class="clr"></div>
        <p>&nbsp;</p>
        <table width="519" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
          <%@ include file="connect.jsp" %>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%
						
						String user=(String )application.getAttribute("uname");
						String bank=(String )application.getAttribute("ubank");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								
								
								
					%>
          <tr>
            <td width="226" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="userimage"%>&amp;id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
              <p><a class="#" href="#" ><br/>
                      <input  name="image2" type="image" src="user_Pic.jsp?picture=<%="fingerprint"%>&amp;id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
            </div></td>
          </tr>
          <tr>
            <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Name </strong></div></td>
            <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                <%out.println(s1);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="122" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
            <td  width="163" valign="middle" height="51" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                <%out.println(s2);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="122" valign="middle" height="68" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Mobile</strong></div></td>
            <td  width="163" valign="middle" height="68"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                <%out.println(s3);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="122" align="left" valign="middle" height="69" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Address</strong></div></td>
            <td  width="163" align="left" valign="middle" height="69"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                <%out.println(s4);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="122" align="left" valign="middle" height="81" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
            <td  width="163" align="left" valign="middle" height="81"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                <%out.println(s5);%>
            </strong></div></td>
          </tr>
          <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
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
              <li class="style13"><a href="UserMain.jsp">Home</a></li>
              <li class="style13"><a href="index.html">Logout</a></li>
              <li></li>
            </ul>
          </div>
        </div>
        <p align="right">&nbsp;</p>
        <p align="right"><a href="UserMain.jsp" class="style11"></a></p>
        <div class="clr">
          <p>&nbsp;</p>
          <p><a href="UserMain.jsp" class="style11">Back</a></p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
