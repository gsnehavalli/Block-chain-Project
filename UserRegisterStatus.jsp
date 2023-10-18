<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User_Register status</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style34 {color: #6699FF;
	font-weight: bold;
}
.style35 {color: #FF0000}
.style36 {color: #0000FF; font-weight: bold; }
.style38 {color: #FF0000; font-weight: bold; }
.style18 {font-size: 16px;
	color: #00CC00;
}
.style41 {	color: #009900;
	font-size: 14px;
	font-weight: bold;
}
.style39 {color: #0000FF; font-weight: bold; font-size: 14px; }
.style40 {font-size: 14px}
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
          <li class="active"><a href="UserLogin.jsp"><span>Home Page</span></a></li>
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
      <div class="article">
        <h2 class="style30"> User Registration Status.. </h2>
        <div class="clr"></div>
        <div class="clr"></div>
        <label for="name">
        <%@ include file="connect.jsp" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
        <%@ page import="com.oreilly.servlet.*" %>
        <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("images/");
					
					String paramname=null,bank="",uname="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,image2=null,cloud=null,bin = "";
				
					FileInputStream fs=null,fs2=null;
					
					File file1 = null, file2 = null;	

					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
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
								String fPath = context.getRealPath("images\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
								
								
								if (files.hasMoreElements()) 
										{
											paramname = (String) files.nextElement();
											
											if(paramname != null)
											{
													f = 1;
													image2 = multi.getFilesystemName(paramname);
													String fPath1 = context.getRealPath("images\\"+image2);
													file2 = new File(fPath1);
													fs2 = new FileInputStream(file2);
													list.add(fs2);
													
								
								
							/*
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}*/
									}
								}
							}		
						}
						
			if(uname.equals("")||pass.equals("")||email.equals("")||mno.equals("")||addr.equals("")||dob.equals("")||gender.equals("--Select--")||bank.equals("Select"))
			{
					  %>
        <p>&nbsp;</p>
        <p align="center" class="style40">&nbsp;</p>
        <p align="center" class="style40"><span class="header_01 style37"><strong>Please Enter All Values..</strong></span></p>
        <p align="center"><a href="UserRegister.jsp" class="style39">Back</a></p>
        <%
					  
			 }
			else if(!bank.equals("Select"))
			{
					
					String query2="select * from user1  where bank='"+bank+"'"; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					if ( rs2.next() )
					{
							   
								
								FileInputStream fs1 = null;
								String query1="select * from user  where username='"+uname+"' and bank='"+bank+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
										
							   if ( rs1.next() )
							   {
										%>
        </p>
        </label>
        </span>
        <p align="center" class="style37 style18 style40">&nbsp;</p>
        <p align="center" class="style37 style18 style40"><strong>User Name Already Exist..</strong></p>
        <p align="center"><a href="UserRegister.jsp" class="style39">Back</a></p>
        <%
										
								}
								else
								{
					   
					   
					   					PreparedStatement ps=connection.prepareStatement("insert into user(bank,username,password,email,mobile,address,dob,gender,loginstatus,transferstatus,image,thumbimage,thumbname,ac_creation_status,privatekey) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
									ps.setString(1,bank);
									ps.setString(2,uname);
									ps.setString(3,pass);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,addr);
									ps.setString(7,dob);
									ps.setString(8,gender);
									ps.setString(9,"waiting");
									ps.setString(10,"no");
									ps.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));	
									ps.setBinaryStream(12, (InputStream)fs2, (int)(file2.length()));	
									ps.setString(13,image2);
									ps.setString(14,"waiting");
									ps.setString(15,"no");
								   
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
        <br/>
        <p align="center" class="style41">&nbsp;</p>
        <p align="center" class="style41">Registration Successfull..</p>
        <p align="center"><a href="UserRegister.jsp" class="style39">Back</a>
            <%
									}
								
								}
						}
						else
						{
										%>
            <br/>
        </p>
        <p align="center" class="style41">&nbsp;</p>
        <p align="center" class="style41">Selected Bank is Not Registered..</p>
        <p align="center"><a href="UserRegister.jsp" class="style39">Back</a>
            <%
						
						}
					}
						else{}
					
						
					}
						
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
        </p>
      </div>
      <div class="sidebar">
        <div class="searchform">
         
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserLogin.jsp">Home</a></li>
            <li><a href="#">Logout</a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
