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
.style10 {	color: #FF00FF;
	font-size: 15px;
}
.style104 {color: #FF00FF}
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
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style99 {color: #0000FF}
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
      <div class="sb_menu">
        <div class="gadget">
          <table width="824" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="816"><span class="style10 style14">Attacking User <span class="style99"><%=request.getParameter("user")%></span>'s Money Details ..</span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <form action="attacksuccess_agent.jsp" method="post">
            <table width="435" align="left"  cellpadding="0" cellspacing="0" class="sb_menu">
              <%@ include file="connect.jsp" %>
              <%
					  String user=(String)application.getAttribute("uname");
					   String bank=(String)application.getAttribute("ubank");
					   String attackuser=request.getParameter("user");
   					   String attackbank=request.getParameter("bank");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
						   	String query="select * from accountbalance_agent where (user='"+attackuser+"' and bank='"+attackbank+"')"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(3);
								s3=rs.getString(4);
															
						
						
								
					%>
              <tr>
                <td width="155" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">
                    <div align="left">Account Number </div>
                </div></td>
                <td width="278" height="39" valign="middle" style="color: #2c83b0;"><div align="center" class="style87">
                    <div align="left">
                      <%out.println(s1);%>
                    </div>
                </div></td>
              </tr>
              <tr>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">
                    <div align="left">Bank</div>
                </div></td>
                <td valign="middle" height="42" style="color: #2c83b0;"><div align="center" class="style87">
                    <div align="left">
                      <%out.println(s2);%>
                    </div>
                </div></td>
              </tr>
              <tr>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">
                    <div align="left">Amount</div>
                </div></td>
                <td valign="middle" height="41" style="color: #2c83b0;"><div align="left">
                    <input type="text" name="amount" value="<%=s3%>" />
                    <strong><span class="style104">Rs/-</span></strong></div></td>
              </tr>
              <tr>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">
                    <div align="left">Enter Private Key </div>
                </div></td>
                <td valign="middle" height="34" style="color: #2c83b0;"><div align="left">
                    <input type="text" name="privatekey" />
                </div></td>
              </tr>
              <tr>
                <td align="center"  valign="middle">&nbsp;</td>
                <td height="65" align="center"  valign="middle"><div align="left">
                    <input type="hidden" name="accnum" value="<%=s1%>" />
                    <input type="hidden" name="bank" value="<%=attackbank%>" />
                    <input type="hidden" name="user" value="<%=attackuser%>" />
                    <input type="submit" name="Submit" value="    Attack    " />
                </div></td>
              </tr>
              <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
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
          </form>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="clr">
        <p>&nbsp;</p>
        <table width="496" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="488"><div align="left"><a href="attacker_agent.jsp" class="style95">Back</a></div></td>
          </tr>
        </table>
        <p>&nbsp;</p>
      </div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
