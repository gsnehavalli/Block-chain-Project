<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Giving Permissions for Money Transactions</title>
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style95 {color: #000000; font-weight: bold; font-size: 15px; }
.style96 {color: #0000FF}
.style97 {	color: #6699FF;
	font-size: 14px;
	font-weight: bold;
}
.style98 {font-size: 13px}
.style99 {font-weight: bold; color: #FF00FF; font-size: 13px; }
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
          <table width="729" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="721"><span class="style10 style14">Giving Permissions To Users for Money Transactions..</span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="1115" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="52"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
              <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Image</div></td>
              <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
              <td  width="146" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Finger Print </div></td>
              <td  width="152" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Bank</div></td>
              <td  width="142" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Email</div></td>
              <td  width="130" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Address</div></td>
              <td  width="179"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Transaction Permissions</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  //String bank=(String)application.getAttribute("vbank");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(5);
								s3=rs.getString(2);
								s4=rs.getString(7);								
								s5=rs.getString(11);
								
					%>
            <tr>
              <td height="0" align="center"  valign="middle"><div align="center" class="style99">
                  <%out.println(i);%>
              </div></td>
              <td width="149" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="userimage"%>&amp;id=<%=i%>" style="width:120px; height:120px;" />
              </a></div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style99">
                  <%out.println(s1);%>
              </div></td>
              <td width="146" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="fingerprint"%>&amp;id=<%=i%>" style="width:120px; height:120px;" />
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style99">
                  <%out.println(s3);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style99">
                  <%out.println(s2);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style99">
                  <%out.println(s4);%>
              </div></td>
              <%
						if(s5.equalsIgnoreCase("no"))
						{
						
						%>
              <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style98">
                  <div align="center" class="style20 style37 style46"><a href="PUF_UserStatus1.jsp?val=<%="money"%>&amp;id=<%=i%>" class="style96 style30 "><strong>Permit</strong></a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style97">
                  <%out.println(s5);%>
              </div></td>
              <%}
					%>
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
          <p align="right"><a href="VendorMain.jsp" class="style11"></a></p>
          <table width="610" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="654"><div align="left"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
          <h2>&nbsp;</h2>
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
