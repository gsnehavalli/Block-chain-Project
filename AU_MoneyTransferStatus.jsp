<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>



<% 



    try{
	  		String acno1=null;
			
			String name=request.getParameter("uname");
			String bank=request.getParameter("bank");
			String facno=request.getParameter("facno");
			String tocno=request.getParameter("tocno");
			String amount=request.getParameter("amount");	
			int uamount=Integer.parseInt(amount);
						
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
										acno1=rs2.getString(5);
										
										
											String sql21="SELECT * FROM bank_deposit where uname='"+name+"' and Bank_Name='"+bank+"' and acno='"+acno1+"' " ;
										Statement stmt21 = connection.createStatement();
										ResultSet rs21 =stmt21.executeQuery(sql21);
										if(rs21.next()==true)
										{
										int amount1=rs21.getInt(4);
										
										  if(amount1>uamount){
										
										 int ta=amount1-Integer.parseInt(amount);
										
										Statement st3 = connection.createStatement();
										String query3 ="update bank_deposit set amount="+ta+" where  uname='"+name+"' and Bank_Name='"+bank+"' and acno='"+acno1+"' ";
											int k=st3.executeUpdate(query3);
											if(k>0)
											{
											
											Statement st31 = connection.createStatement();
											String query31 ="update auditor_transfer  set Status='"+status+"' where  uname='"+name+"' and Bank_Name='"+bank+"' and facno='"+acno1+"' ";
											st31.executeUpdate(query31);
											
											
											String sql211="SELECT * FROM bank_deposit where  acno='"+tocno+"' " ;
										Statement stmt211 = connection.createStatement();
										ResultSet rs211 =stmt211.executeQuery(sql211);
										    if(rs211.next()==true)
										    {
										int amount11=rs211.getInt(4);
										
										 int ta1=amount11+Integer.parseInt(amount);
											
											Statement st33 = connection.createStatement();
											String query33 ="update bank_deposit set amount="+ta1+" where   acno='"+tocno+"' ";
											st33.executeUpdate(query33);
											
											
									          }	
											%>
										
										<h2> Amount Transfered Successfully!!!</h2>
										
										 <a href="AuditorMain.jsp">Back</a>
										
									    	<%}	//end k
											
											}
											else if(amount1<uamount)
											
											{
											%>
										
										<h2> InSufficient Amount To Transfer!!! User is Financial Fraud !!! </h2>
										
										 <a href="AuditorMain.jsp">Back</a>
										
									    	<%
											
											String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(facno));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
											
											String act="Auditor";
											
											
											
												Statement st44 = connection.createStatement();
												String query44 ="insert into  Find_Fraud values('"+name+"','"+bank+"','"+acno1+"',"+amount+",'"+dt+"','"+act+"','"+h1+"') ";
												st44.executeUpdate(query44);
									
											
											}
											
											
					
										} // end rs21
									
										else if(rs21.next()!=true)
										
										{
										
										%>
										
										<h2> No Initital Amount Deposited!!!</h2>
										
										 <a href="AuditorMain.jsp">Back</a>
										
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
