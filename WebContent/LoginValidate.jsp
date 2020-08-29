<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation</title>
</head>
<body>
      <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(validate(username, password))
        {
        	%>
        	<jsp:forward page="Success.jsp"></jsp:forward>
        	<%
        }
        else
        {
        	response.sendRedirect("Login.jsp");
        }
      %>
      
      <%!
         public boolean validate(String username, String password)
         {
    	  if(username.equals("Harsha") && password.equals("harsha"))
    	  {
    		  return true;
    	  }
    	  else
    	  {
    		  return false;
    	  }
         }
      %>
</body>
</html>
<%}
else
  {
   response.sendRedirect("Login.jsp");
  }%>