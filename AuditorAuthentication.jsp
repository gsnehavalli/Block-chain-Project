
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*"%>
          
<%
				   
						
						try
						{
										String name = request.getParameter("username");
										String pass = request.getParameter("pass");		
										
										
										out.print(name);
										
										out.print(pass);
										
										String sql2="SELECT * FROM auditor where  username='"+name+"' and password='"+pass+"' " ;
										Statement stmt2 = connection.createStatement();
										ResultSet rs2 =stmt2.executeQuery(sql2);
										if(rs2.next()==true)
										{
									

							
											response.sendRedirect("AuditorMain.jsp");
										}
										else 	if(rs2.next()!=true)
										{
												%>
												
												<div align="center"><br/>
											    </div>
												<p align="center" class="style1">Username or Password Wrong !!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="AuditorLogin.jsp"><strong>Back</strong></a>
											      <%
								 		}
								
						}
					 catch (Exception e)
	 					 {
							out.print(e);
							e.printStackTrace();
						}
%>
												  
                                                </div>
												