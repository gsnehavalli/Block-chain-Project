<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_View_All_Deposit_Transactions_By_Blockchain</title>
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
.style14 {
	font-size: 18px;
	color: #009900;
	font-weight: bold;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style94 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style99 {font-size: 16px}
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
              <td width="536"><span class="style10 style14 style56"> <span class="style99"><marquee behavior="alternate">
              View All Deposit Transactions By Blockchain !!!
              </marquee> </span> </span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
         
		 
		 
		<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  


          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign;
						int i=0,j=1,k=0,rank=0;
												
						int count1=1;
						
						try 
						{
						String str1 = " select hash_code from accountrequest ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
//						count1=count1+1;
						   	String query="select * from bank_deposit  where hash_code = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(4);
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
		
          <table width="1131" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
   
              <td  width="129" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
              <td  width="147" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Bank Name</div></td>
              <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Account No </div></td>
              <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Amount</div></td>
			 
            </tr>
		 
		 
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Deposit Account Number Block Chain--->::</span> <%=s1%><br>
			    <span class="style1">Deposit Account Number Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							

							}
			 					s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);	
														

					%>
	      </div>
		  
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
                Rs/- </div></td>
				
				
             
 
            </tr>
							
	    <%
					 
			   }
			   
			    }
						 
			 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
         
				
			 
			 
%>

		 
		 
		 
		 
		 
          <p align="right"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="1121" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="906"><div align="left">
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
