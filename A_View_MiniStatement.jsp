<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Requests and Process</title>
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
.style94 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style97 {color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="UMain.jsp"><span>Home Page</span></a></li>
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
              <td width="536"><span class="style10 style14">View  All Mini Statements(Via Auditor)</span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="1131" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
   
              <td  width="129" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
              <td  width="147" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Bank Name</div></td>
              <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">From Account No </div></td>
			                <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">To Account No </div></td>
              <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Amount</div></td>
			  <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date and Time</div></td>
			   <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">From</div></td>
              <td  width="251"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status(Transfer To Bank)</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						
						String uname=(String)application.getAttribute("uname");
						
						   	String query="select * from auditor_transfer where uname='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
								s1=rs.getString(1); //uname
								s2=rs.getString(2); // Bank Name
								s3=rs.getString(3); // from acno
								s4=rs.getString(4);	// To Acno			 				
								s5=rs.getString(5); // Amount
								s6=rs.getString(6); // Status
								s7=rs.getString(7); // Date and Time
								s8=rs.getString(8); // From User
					%>
            <tr>
            
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s1);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s2);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s3);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s4);%>
               </div></td>
				
				 <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s5);%> </div></td>
				  
				   <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s7);%> </div></td>
				    <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s8);%> </div></td>
             
             
              <%
						if(s6.equalsIgnoreCase("No") )
						{
						
						%>
              <td valign="middle" height="84" style="color:#000000;"align="center"><div align="center">
                <div align="center" class="style20 style37 style46"> <%out.println(s6);%> 
                  <span class="style97">(Due To InSufficient Amount)</span></div>
              </div></td>
              <%
						
					}else if(s6.equalsIgnoreCase("Yes")){
						%>
             <td width="137" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s6);%>
              </div></td>
              <%}%>
            </tr>
            <%
						
						
					
				
					
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="1121" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="906"><div align="left">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p align="center"><a href="AdminMain.jsp" class="style95">Back</a></p>
              </div></td>
            </tr>
          </table>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
</body>
</html>
