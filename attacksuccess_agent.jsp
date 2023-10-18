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



try
{

String user=(String)application.getAttribute("uname");
String bank=(String)application.getAttribute("ubank");

String attackuser=request.getParameter("user");
String attackbank=request.getParameter("bank");
String amount=request.getParameter("amount");
String accnum=request.getParameter("accnum");
String privatekey=request.getParameter("privatekey");

SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;

if(amount.equals("")||privatekey.equals(""))
{
	%>
	<style type="text/css">
	<!--
	.style1 {
	color: #FF0000;
	font-weight: bold;
	}
	.style3 {color: #000000}
	-->
	</style>
	<div align="center"><br/>
	<br/>
	</div>
	<p align="center" class="style1">Please Enter Private Key..</p>
	<div align="center"><br/>
	<br/>
	<a href="attackerupdate.jsp?user=<%=attackuser%>&bank=<%=attackbank%>">Back</a>
	<%
}
else
{
	
	String sql="SELECT * FROM user where (username='"+attackuser+"' and bank='"+attackbank+"') and privatekey='"+privatekey+"'";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{ 
				
			String status="Success";
			String sql1="insert into attacker (attackername,attackerbank,touser,toaccount,tobank,amount,date,privatekey,status)values('"+user+"','"+bank+"','"+attackuser+"','"+accnum+"','"+attackbank+"','"+amount+"','"+date+"','"+privatekey+"','"+status+"')";
			Statement stmt1 = connection.createStatement();
	 		stmt1.executeUpdate(sql1);	
				
				
				
				String query4="update accountbalance_agent set balance='"+amount+"' where account_no='"+accnum+"'";
				Statement st4=connection.createStatement();
				int k=st4.executeUpdate(query4);
				if ( k>0)
				{
								%>
								</div>
								<br/><br/><p align="center" class="style1">Attack Successful!!..</p>
								<div align="center"><br/>
								<br/>
								<a href="attacker.jsp">Back</a>
								<%
				}
				else
				{
								%>
								</div>
								<br/><br/><p align="center" class="style1">Attack Failed!!..</p>
								<div align="center"><br/>
								<br/>
								<a href="attacker.jsp">Back</a>
								<%
							
				}
				
	}
	else
	{
			
			String status="Failed";
			String sql6="insert into attacker (attackername,attackerbank,touser,toaccount,tobank,amount,date,privatekey,status)values('"+user+"','"+bank+"','"+attackuser+"','"+accnum+"','"+attackbank+"','"+amount+"','"+date+"','"+privatekey+"','"+status+"')";
			Statement stmt6 = connection.createStatement();
	 		int d=stmt6.executeUpdate(sql6);
			if(d>0)
			{		
				%>
				</div>
				<br/><br/> <p align="center" class="style1">Private Key MisMatch..Transaction Failed..</p>
				<div align="center"><br/>
				<br/>
				<a href="attacker.jsp">Back</a>
				<%
			}
	}			
}
connection.close();
}
catch(Exception e)
{
out.print(e);
}

%>

