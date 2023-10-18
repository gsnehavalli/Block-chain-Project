<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Encrypt Account Numbers</title>
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
.style100 {	font-size: 25px;
	color: #009900;
}
.style101 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style102 {	color: #0000FF;
	font-size: 15px;
	font-weight: bold;
}
.style103 {font-size: 16px}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style95 {color: #000000; font-weight: bold; font-size: 15px; }
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <form id="form1" name="form1" method="post" action="PUF_EncryptStatus.jsp">
        <div class="sb_menu">
          <div class="gadget">
            <table width="729" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="721"><span class="style100">Encrypting All User Account Numbers..</span></td>
              </tr>
            </table>
            <div class="clr"></div>
            <p>&nbsp;</p>
            <table width="834" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="53"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style103">ID</div></td>
                <td  width="151" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style103">User Name</div></td>
                <td  width="157" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style103">Bank</div></td>
                <td  width="176" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style103">Account Numbers </div></td>
                <td  width="188"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style103">Generated Date </div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  //String bank=(String)application.getAttribute("vbank");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
						   	String query="select * from accountrequest where account_no!='Requested' order by bank ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							
							String query1="select * from accountrequest_agent where account_no!='Requested' order by bank ASC"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
							
							

					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(5);
								s4=rs.getString(4);								
								
					%>
              <tr>
                <td height="45" align="center"  valign="middle"><div align="center" class="style101">
                    <%out.println(j);%>
                </div></td>
                <td height="45" align="center"  valign="middle"><div align="center" class="style101">
                    <%out.println(s1);%>
                </div></td>
                <td align="center"  valign="middle"><div align="center" class="style101">
                    <%out.println(s2);%>
                </div></td>
                <td height="45" align="center"  valign="middle"><div align="center" class="style102">
                    <%out.println(s3);%>
                </div></td>
                <td height="45" align="center"  valign="middle"><div align="center" class="style101">
                    <%out.println(s4);%>
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
            <p align="right"><a href="VendorMain.jsp" class="style11"></a></p>
            <table width="512" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="504"><label></label>
                    <div align="right">
                      <input type="submit" name="Submit" value="Encrypt All Account Numbers" style="height:30px;background-color:green"/>
                  </div></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <table width="443" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="435"><div align="left"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
              </tr>
            </table>
          </div>
        </div>
            </form>
    </div>
  </div>
  <div class="footer">
</body>
</html>
