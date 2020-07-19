<%-- 
    Document   : rider_edit.jsp
    Created on : Sep 25, 2018, 10:26:36 AM
    Author     : Silva
--%>
<%@page import="Connection.Riderdao, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            Riderdao dao = new Riderdao();
            String id = request.getParameter("id");
            
        %>
    </body>
    
</html>
