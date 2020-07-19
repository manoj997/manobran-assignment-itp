<%-- 
    Document   : ManagerShowResult
    Created on : Sep 12, 2018, 10:45:17 PM
    Author     : AMASHI SANDUNIKA
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.util.*"%>
<%@include file="DBConfig.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
    </head>
    <body>
         <br>
        <header>
            <center>
                <img src="Img/1.png" style="width: 200px">
            </center>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHomePage1.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
          <div align="center">
        <table id="customer">
                    <tr>
                       <th style="">Manager_Id</th>
                       <th style="">First_Name</th>
                       <th style="">Last_Name</th>
                       <th style="">Category</th>
                       <th style="">Contact_No</th>
                       <th style="">Email</th>
                       
                       <th style="">Update_Status</th>
                    </tr>
        <%
            String Category=request.getParameter("Category");
            Statement manager = conn.createStatement();
            
           String query = "select * from manager where Category like  '"+Category+"%'   ";
           ResultSet rs = manager.executeQuery(query);
           
            while(rs.next()){
       
                     %>

        
                      <tr>
                    <td style="">
                        <center><%=rs.getString("ManagerId") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("First_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Last_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Category") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Contact_No") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Email") %></center>
                    </td>
                   <td style="">
                        <a href="AmaAdminUpdateManRecord.jsp?ManagerId=<%=rs.getString("ManagerId") %>">
                           <center>Update</center>
                       </a>
                   </td>
                    <%}%>
                    
               </tr>
        </table>
        
         <br>
        <br>
        <br>
        
       <footer class="foot">
            <div style="float:left">
            ManoBran Enterprises </br>
            No.310 , Galle Road,</br>
            Colombo 06 </br>
            011 2 301904 
            </div>
            <div style="float: right">
                <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="Img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="Img/insta.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="" style="text-decoration:none"> <img src="Img/twitter1.png" width="50px"> </a>
            </div>
        </footer>
        
        <script>
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
    </body>
</html>
