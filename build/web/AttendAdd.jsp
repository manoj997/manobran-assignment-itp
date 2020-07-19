<%-- 
    Document   : addEmp
    Created on : May 12, 2018, 11:54:56 AM
    Author     : User
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <br>

        <%
            String eno=request.getParameter("eno");
            String date=request.getParameter("date");
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
            Statement stmt=con.createStatement();  
            int res=stmt.executeUpdate("insert into attendence(Eno,Date) values ('"+eno+"','"+date+"')");
            if(res>0){
                out.println("Successfully Marked"); 
            }
            else{
                out.println("You have to Check out first");
            }
        }catch(Exception e)
           { System.out.println(e);}  
        %>
        
        <br>
        <br>
        <p> Do you want to continue? </p>
        <a href="AttendInsert.jsp"><input type="button" value="YES"></a>
        <a href="Attendence.jsp"><input type="button" value="NO"></a>
        </div>
    </body>
</html>
