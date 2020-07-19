<%-- 
    Document   : CustomerShowResult
    Created on : Sep 15, 2018, 10:29:10 AM
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
                    <th style="">User_ID</th>
                    <th style="">First_Name</th>
                    <th style="">Last_Name</th>
                    <th style="">Address_1</th>
                    <th style="">Address_2</th>
                    <th style="">City</th>
                    <th style="">Province</th>
                    <th style="">Postal_Code</th>
                    <th style="">Contact_No</th>
                    <th style="">Email_Address</th>
                    <th style="">Update_Status</th>
                </tr>
                <%
                        String email = request.getParameter("email");
                        Statement customer = conn.createStatement();

                        String query = "select * from customer where Email like  '" + email + "%' OR First_Name like '"+email+"%' OR Last_Name like'"+email+"%' OR City like '"+email+"%' ";

                        ResultSet rs = customer.executeQuery(query);
                        
                        if (rs.next())
                        {
                                do{
                %>

                <tr>

                    <td style="">
                <center><%=rs.getString("CustId")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("First_Name")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Last_Name")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Address_1")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Address_2")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("City")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Province")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Postal_Code")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Contact_No")%></center>
                </td>
                <td style="">
                <center><%=rs.getString("Email")%></center>
                </td>

                <td style="">
                    <a href="AmaAdminUpdateCusRecord.jsp?CustId=<%=rs.getString("CustId")%>">
                        <center>Update</center>
                    </a>
                </td>
                </tr>

                <% }while (rs.next()); 
                            
                 
                }else{%>
                
                <p style="background-color: red;color:white">
                    No results
                    
                </p>
                
                <%
                
}   
                %>

            </table>
                <a href="AmaAdminUpdateCustomer.jsp">
                    <button type="button" class="button1">Go Back</button>
                </a>
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

