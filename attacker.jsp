<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User_Login  Page</title>
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
.style35 {color: #FF0000}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style22 {font-size: 16px; color: #FFFFFF; }
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style55 {font-size: 14px}
.style57 {font-size: 15px}
.style62 {color: #FF00FF}
.style96 {	color: #FF00FF;
	font-size: 15px;
}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style14 {	font-size: 24px;
	color: #009900;
}
.style49 {color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style86 {	color: #009900;
	font-size: 14px;
}
.style87 {color: #000000; font-weight: bold; font-size: 13px; }
.style90 {font-size: 16px}
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
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
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
      <form id="form1" name="form1" method="post" action="">
        <p>&nbsp;</p>
        <div class="mainbar">
          <div class="article">
            <h2 class="style10 style14">Search User Names and Attack their Money Details.. </h2>
            <div class="clr"></div>
            <table width="453" border="0" align="center" cellpadding="2" cellspacing="2">
              <tr>
                <td width="185" height="58"><div align="center">
                    <p class="style49">&nbsp;</p>
                  <p class="style49">Search User Names :</p>
                </div></td>
                <td width="254"><p>&nbsp; </p>
                    <p>
                      <input type="text" name="keyword" />
                  </p></td>
              </tr>
              <tr>
                <td height="35" colspan="2"><div align="center">
                    <input class="art-button" name="submit" type="submit" value="Search" />
                </div></td>
              </tr>
            </table>
            <p align="right"><a href="attacker.jsp" class="style87">Reload Page</a> </p>
          </div>
          <div class="article">
            <h2><span class="style54">Users Found.. </span></h2>
            <div class="clr"></div>
            <p><span class="news_content">
              <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
              <%@ page import="java.sql.*"%>
              <%@ include file="connect.jsp" %>
              <%@ page import="java.util.Date" %>
              <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								int state=1;
									if(!keyword.equals(""))
										{
											
											
											String query="select user,bank from accountbalance where user  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												s1=rs.getString(1);
												s2=rs.getString(2);
			  if(state==1){%>
            </span> </p>
            <table border="3" width="623" style="margin:5px 10px 10px 5px;">
              <%state=2;}%>
              <tr>
                <td width="182" align="left"><div align="left" class="style86 style89">
                    <div align="center"><span class="style84 style90"><strong><%=s1%></strong></span></div>
                </div></td>
                <td width="217" height="27" align="left"><div align="left" class="style86 style89">
                    <div align="center"><span class="style84 style90"><strong><%=s2%></strong></span></div>
                </div></td>
                <td width="198" style="margin-left:20px; color:#000000;"><div align="center"><a href="attackerupdate.jsp?user=<%=s1%>&amp;bank=<%=s2%>" class="style11">Attack Money Details </a></div></td>
              </tr>
              <%
						
							
				
						
	  					}}%>
            </table>
            <%
					}catch(Exception e){
								out.print(e);
							}
	  
				  
				  %>
          </div>
        </div>
        <div class="sidebar">
          <div class="searchform"> <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
              <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </div>
          <div class="clr"></div>
          <div class="gadget">
            <h2 class="star"><span>Sidebar</span> Menu</h2>
            <div class="clr"></div>
            <ul class="sb_menu">
              <li><a href="AttckerMain.jsp">Home</a></li>
              <li><a href="index.html">Logout</a></li>
              <li></li>
            </ul>
          </div>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </form>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
