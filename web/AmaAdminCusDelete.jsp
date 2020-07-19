<%-- 
    Document   : AmaAdminCusDelete
    Created on : Aug 27, 2018, 4:34:37 AM
    Author     : AMASHI SANDUNIKA
--%>

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
                <img src="img/1.png" style="width: 200px">
            </center>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHomePage1.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        
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
        
        <br>
        <br>
        
        <% String CustId = request.getParameter("CustId");
        
           Statement stmt = conn.createStatement();
           
           String query = "select * from customer where CustId = " +CustId;
           ResultSet rs = stmt.executeQuery(query); 
        %>
        
        <center>
            <table id="customer" style="border: 1px">
               <tr>
                   <th style="">User ID</th>
                   <th style="">First Name</th>
                   <th style="">Last Name</th>
                   <th style="">Address 1</th>
                   <th style="">Address 2</th>
                   <th style="">City</th>
                   <th style="">Province</th>
                   <th style="">Postal Code</th>
                   <th style="">Contact No</th>
                   <th style="">Email Address</th>
               </tr>
               <tr>
                   <% while (rs.next()) { %>
                    <td style="">
                        <center><%=rs.getString("CustId") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("First_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Last_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Address_1") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Address_2") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("City") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Province") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Postal_Code") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Contact_No") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Email") %></center>
                    </td>
               </tr>
               <% } %>
           </table>
           
           <br>
           
           <td> DELETE THIS RECORD ? </d>  
                <td><a href="AmaAdminCusFinalDelete.jsp?CustId=<%= CustId%>"> YES </a></td>
    </center>
        
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
                <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="img/insta.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="" style="text-decoration:none"> <img src="img/twitter1.png" width="50px"> </a>
            </div>
        </footer>
    </body>
</html>
