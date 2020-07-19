<%-- 
    Document   : AmaAdminManDeleteTable
    Created on : Aug 27, 2018, 4:16:35 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file ="DBConfig.jsp" %>
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
            <a href="AmaAdminHome.jsp" class="active">Home</a>
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
        
         <% 
            String ManagerId = request.getParameter("ManagerId");
            Statement delManager = conn.createStatement();
            String query = "select * from manager";
            ResultSet rs = delManager.executeQuery(query); 
         %>
           
         <div style="float: left; margin-left: 25px">
             <a href="AmaAdminManager.jsp">| <<< Back to the Manager Page |</a>
         </div>
         <br>
         <br>
         
        <center>
            <table id="customer" style="border: 1px">
               <tr>
                   <th style="">Manager_ID</th>
                   <th style="">First_Name</th>
                   <th style="">Last_Name</th>
                   <th style="">Category</th>
                   <th style="">Contact_No</th>
                   <th style="">Email_Address</th>
                   <th style="">Delete_Status</th>
               </tr>
               <tr>
                   <% while (rs.next()) { %>
                    <td style="">
                        <%=rs.getString("ManagerId") %>
                    </td>
                    <td style="">
                        <%=rs.getString("First_Name") %>
                    </td>
                    <td style="">
                        <%=rs.getString("Last_Name") %>
                    </td>
                    <td style="">
                        <%=rs.getString("Category") %>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Contact_No") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Email") %></center>
                    </td>
                    
                    <td style="">
                        <a href="AmaAdminManDelete.jsp?ManagerId=<%=rs.getString("ManagerId") %>">
                           <center>DELETE</center>
                       </a>
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
                <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="Img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="Img/insta.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="" style="text-decoration:none"> <img src="img/twitter1.png" width="50px"> </a>
            </div>
        </footer>
    </body>
</html>

