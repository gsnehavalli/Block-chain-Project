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



    try{
	  		String facno=null;
			String name=(String)application.getAttribute("uname");
			String bank=request.getParameter("bname");
			String tacno=request.getParameter("tacno");	
			String amount=request.getParameter("amount");	
			
			
			
		
			
						
			String status="Yes";
			String status1="No";
			String fwhom="User";
			
			
			
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				Date now = new Date();
							
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt= strDate + "   " + strTime;
			
			String sql2="SELECT * FROM accountrequest where user='"+name+"' and bank='"+bank+"' and status='"+status+"' " ;
										Statement stmt2 = connection.createStatement();
										ResultSet rs2 =stmt2.executeQuery(sql2);
										if(rs2.next()==true)
										{
										facno=rs2.getString(5);
										
										
										Statement st3 = connection.createStatement();
		    String query3 ="insert into auditor_transfer values('"+name+"','"+bank+"','"+facno+"','"+tacno+"','"+amount+"','"+status1+"','"+dt+"','"+fwhom+"')";
											int k=st3.executeUpdate(query3);
											if(k>0)
											{
											%>
										
										<h2> Your Request Sent To Auditor Successfully!!! Pls Wait for Some Time</h2>
										
										 <a href="UserMain.jsp">Back</a>
										
									    	<%}	
										
									
										}
										
										else if(rs2.next()!=true)
										{%>
										
										<h2> Your Account is not Generated Yet!!! Pls Wait for Some Time</h2>
										<%}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
                 </div>
