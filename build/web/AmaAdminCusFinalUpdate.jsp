<%-- 
    Document   : AmaAdminCusFinalUpdate
    Created on : Aug 27, 2018, 4:31:46 AM
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
            <a href="AmaAdminHome.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
         <% 
           int id = Integer.parseInt(request.getParameter("userID"));
           String fname = request.getParameter("first");
           String lname = request.getParameter("last");
           String address1 = request.getParameter("add1");
           String address2 = request.getParameter("add2");
           String city = request.getParameter("city");
           String province = request.getParameter("province");
           String pCode = request.getParameter("pcode");
           String mobile = request.getParameter("contact");
           String email = request.getParameter("email");
   
        Statement st = conn.createStatement();
        String query = "update customer set First_Name = '" +fname+ "',Last_Name = '" +lname+ "',Address_1 = '" +address1+ "', Address_2 = '" +address2+ "', City = '" + city + "', Province = '" + province + "', Postal_Code = '" + pCode + "', Contact_No = '" + mobile + "', Email = '" + email + "' where CustId = " +id;
        
        int result = st.executeUpdate(query);

       if (result > 0)
            response.sendRedirect("AmaAdminUpdateCustomer.jsp");
       
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


