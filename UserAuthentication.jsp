<title>User Authentication Page</title>
<%
/*	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
	String bank = request.getParameter("bank");*/
%>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->	
</style>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*"%>
          
<%
				   ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("images/");
					
					String paramname=null,bank="",name="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,image2=null,cloud=null,bin = "";
				
					FileInputStream fs=null,fs2=null;
					
					File file1 = null, file2 = null;	

					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("userid"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
							}		
						}
			
					
					String sql = "SELECT * FROM user where  bank='"+bank+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where (username='"+name+"' and bank='"+bank+"') and thumbname='"+image+"'";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									
											
										String sql2="SELECT * FROM user where  (username='"+name+"' and bank='"+bank+"') and loginstatus='Authorized'" ;
										Statement stmt2 = connection.createStatement();
										ResultSet rs2 =stmt2.executeQuery(sql2);
										if(rs2.next()==true)
										{
											application.setAttribute("ubank", bank);
											application.setAttribute("uname", name);
							
											response.sendRedirect("UserMain.jsp");
										}
										else
										{
												%>
												
												<div align="center"><br/>
											    </div>
												<p align="center" class="style1">You are not Authorized by the Admin, Please wait!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="UserLogin.jsp"><strong>Back</strong></a>
											      <%
								 		}
								}
								else
								{
										%>
									              <br/>
											    </div>
												<p align="center" class="style1">Finger Print Mismatch, Please Provide Correct Finger Print!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="UserLogin.jsp"><strong>Back</strong></a>
									              <%
								}
				
					}
					else
					{
						response.sendRedirect("UserRelogin.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>
												  
                                                </div>
												