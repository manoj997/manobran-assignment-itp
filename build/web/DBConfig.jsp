<%-- 
    Document   : DBConfig
    Created on : Aug 27, 2018, 4:10:59 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           String url = "jdbc:mysql://localhost:3306/manobran";
           String username = "root";
           String password = "";
           
           Connection conn = DriverManager.getConnection(url, username, password);
   
           if (conn != null) 
                out.println();
            else
                out.println(); 
        %>
    </body>
</html>
