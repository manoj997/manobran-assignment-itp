<%-- 
    Document   : AmaAdminUpdateCustomer
    Created on : Aug 27, 2018, 4:29:10 AM
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
                <img src="Img/1.png" style="width: 200px">
            </center>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHome.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        <script type="text/javascript">
            function regValidate(){
             var query=document.getElementById("query").value;
             
             if(query===null|| query===""){
                 alert('Please enter something to search');
                 return false;
             }
         }
         </script>
        <%
            Statement customer = conn.createStatement();
            
           String query = "select * from customer";
           ResultSet rs = customer.executeQuery(query);
        %>
        
        <div style="float: left; margin-left: 25px">
             <a href="AmaAdminCustomer.jsp">| <<< Back to the Customer Page |</a>
         </div>
        
        <br>
        
         <div align="center">
            <form method="get" action="CustomerShowResult.jsp" name="filter">
                <table id="customer">
                    <tr>
                        <td>Filter employee by Email Address : </td>
                        <td><input type="text" id="query" name="email"></td>
                        <td><input type="submit" value="Search" onclick="return regValidate()" class="button" style="width: 75%"></td>
                    </tr>
                </table>
            </form>
             </div>
         
        <br>
        <br>
        
        <center>
            <table id="customer" style="border: 1px">
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

