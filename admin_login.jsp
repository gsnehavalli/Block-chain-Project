<title>Admin Authantication</title><%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username3=request.getParameter("uname2");      

        String Password3=request.getParameter("pass2");
        


	    
try
{
	   String sql="SELECT * FROM attacker1 where name='"+username3+"' and pass='"+Password3+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("attacker.jsp");
           }
	    else
	    {
	    response.sendRedirect("wronglogin2.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

