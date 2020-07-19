<%-- 
    Document   : AmaAdminManFinalUpdate
    Created on : Aug 27, 2018, 4:15:14 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBConfig.jsp" %>
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
        <br>
        <br>
        
         <% 
           int ManagerId= Integer.parseInt(request.getParameter("ManagerId"));
           String fname = request.getParameter("first");
           String lname = request.getParameter("last");
           String category = request.getParameter("category");
           String contact = request.getParameter("contact");
           String email = request.getParameter("email");
           
        Statement st = conn.createStatement();
        String query = "update manager set First_Name = '" +fname+ "',Last_Name = '" +lname+ "',Category = '" +category+ "', Contact_No = '" +contact+ "', Email = '" + email +  "' where ManagerId= " + ManagerId;
        
        int result = st.executeUpdate(query);

       if (result > 0)
            response.sendRedirect("AmaAdminUpdateManager.jsp");
       
       else
           out.println("Wrong"); %>
           
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

