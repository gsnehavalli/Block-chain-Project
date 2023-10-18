<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 	<%
  			try {
					
									String value1="";
									value1=request.getParameter("value1");
									String user=(String )application.getAttribute("uname");
									String bank=(String )application.getAttribute("ubank");	
									
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
									
									
							   if(value1.equals("requests"))
							   {
							   
							  			String query4="select * from user where (username='"+user+"' and bank='"+bank+"') and ac_creation_status='Permitted'"; 
										Statement st4=connection.createStatement();
										ResultSet rs4=st4.executeQuery(query4);
										if ( rs4.next()==true )
										{
											
										String str = "Requested";
										String str1 = "No";
										String str2 = "No";
										
										Statement st3 = connection.createStatement();
										String query3 ="insert into accountrequest(user,bank,date,account_no,status,hash_code) values('"+user+"','"+bank+"','"+dt+"','"+str+"','"+str1+"','"+str2+"')";
											int k=st3.executeUpdate (query3);
											if(k>0)
											{
												response.sendRedirect("U_AccountNumber.jsp");  
								   
								  			 } 	
											
										}
										
										else
										{
												%>
											 <style type="text/css">
<!--
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style96 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
}
-->
                                             </style>
											 <div align="center"><br/>
										     </div>
											 <p align="center" class="style15 style96">You Dont Have Permission To Request for Account Number!!</p>
											 <p align="center" class="style15 style96"> Corresponding Vendor (Bank Authority) Need To Authorize..</p>
											 <p align="center" class="style15"><br/>
										       <a href="U_AccountNumber.jsp" class="style95">Back</a></p>
											 <div align="center">
											   <%
										} 
										  
									
							  }
							   
	   		
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
                                             </div>
											 