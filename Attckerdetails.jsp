<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker Details</title>
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
.style94 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style98 {color: #FF00FF}
.style99 {color: #6699FF}
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
          <table width="544" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="536"><span class="style10 style14">View All Attacker Details..</span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="1067" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="44"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
              <td  width="128" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Attacker Name</div></td>
              <td  width="145" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Attacked Name </div></td>
              <td  width="139" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Attacked Account </div></td>
              <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Attacked Bank </div></td>
              <td  width="102"  valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Amount</div></td>
              <td  width="138"  valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Used Private Key</div></td>
              <td  width="117"  valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status</div></td>
              <td  width="117"  valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String s1,s2,s3,s4,s5,s6,s7,s8,s9;
						int i=0;
						try 
						{
						   	String query="select * from attacker"; 
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
								s6=rs.getString(9);	
								s7=rs.getString(10);								
								s8=rs.getString(8);	
								s9=rs.getString(3);																
								
					%>
            <tr>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94 style98">
                  <%out.println(i);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94"> <a href="FR_AttackerProfile.jsp?name=<%=s1%>&amp;bank=<%=s9%>" class="style99">
                  <%out.println(s1);%>
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s2);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s3);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s4);%>
              </div></td>
              <td width="102" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s5);%>
                Rs/- </div></td>
              <td width="138" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s6);%>
              </div></td>
              <td width="117" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s7);%>
              </div></td>
              <td width="117" align="center"  valign="middle"><div align="center" class="style94">
                  <div align="center" class="style94">
                    <%out.println(s8);%>
                </div></td>
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
          <table width="547" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="539"><div align="left"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
