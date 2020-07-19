 
<%-- 
    Document   : goToUserProfile4
    Created on : Sep 3, 2018, 1:39:46 PM
    Author     : AMASHI SANDUNIKA
--%>

%@page import="javax.persistence.metamodel.SetAttribute"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         String Username=request.getParameter("Username");
         
         HttpSession ses=request.getSession();
         ses.setAttribute("Username", Username);
         response.sendRedirect("ShowPassword.jsp");
     %>
    </body>
</html>
