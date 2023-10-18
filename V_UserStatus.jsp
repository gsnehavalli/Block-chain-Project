	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   String bank=(String)application.getAttribute("vbank");
		   String name=request.getParameter("name");
		   String val=request.getParameter("val");
			if(val.equals("ac_creation"))
			{
				String str = "Permitted";
				Statement st1 = connection.createStatement();
				String query1 ="update user set ac_creation_status='"+str+"' where username='"+name+"' and bank='"+bank+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("A_AuthorizeUsers.jsp");  
			
			}
			else if(val.equals("login"))
			{
				String str = "Authorized";
				Statement st1 = connection.createStatement();
				String query1 ="update user set loginstatus='"+str+"' where username='"+name+"' and bank='"+bank+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("A_AuthorizeUsers.jsp");  
			
			}
			else if(val.equals("money"))
			{
				String str = "Permitted";
				Statement st1 = connection.createStatement();
				String query1 ="update user set ac_creation_status='"+str+"' where username='"+name+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("A_AuthorizeUsers.jsp");  
			
			}
			else{}
	   		
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
