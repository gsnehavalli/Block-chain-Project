
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*"%>
          
<%
				   
						
						try
						{
										String name = request.getParameter("username");
										String pass = request.getParameter("pass");	
										String aname = request.getParameter("aname");		
										
										
										out.print(name);
										
										out.print(pass);
										
										String sql2="SELECT * FROM agent where  username='"+name+"' and password='"+pass+"' and agent_name='"+aname+"'  " ;
										Statement stmt2 = connection.createStatement();
										ResultSet rs2 =stmt2.executeQuery(sql2);
										if(rs2.next()==true)
										{
									
                                         application.setAttribute("aname",aname);
							
											response.sendRedirect("AgentMain.jsp");
										}
										else 	if(rs2.next()!=true)
										{
												%>
												
												<div align="center"><br/>
											    </div>
												<p align="center" class="style1">Username or Password Wrong !!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="AgentLogin.jsp"><strong>Back</strong></a>
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
												