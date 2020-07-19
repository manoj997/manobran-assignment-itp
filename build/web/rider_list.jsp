<%-- 
    Document   : rider_list
    Created on : Sep 25, 2018, 10:17:43 AM
    Author     : Silva
--%>
<%@page import="Connection.Riderdao, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>
            
        </style>
        
        
    </head>
    <body>
        <br>
        <header>
            <center>
                <img src="img/1.png" style="width: 200px">
            </center>
            <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="Register.jsp">|Register|</a>
                <a href="Login.jsp">LogIn|</a>
                <a href="ShoppingCart.jsp">View Cart|</a>
                <a href="WishList.jsp">Wishlist|</a>
                <a href="rider_list.jsp">Riders List</a>
                <a href="Req_Deli_form.jsp">Delivery Request</a>
                <a href="Add_Rider.jsp">Add Rider</a>
                <a href="R_JOB.jsp">Jobs List</a>
            </div>
        </header>
        <br>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp" class="active">Home</a>
            <a href="AboutUs.jsp">About Us</a>
               
            <div class="dropdown">
                <button class="dropbtn">Products
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div> 
           
            <a href="Promotions.jsp">Promotions</a>
            
            <a href="ContactUs.jsp">Contact Us</a>
            
            <div style="float: right; margin-top: 20px; margin-right: 50px">
                 <img src="img/user3.png" style="width: 20px">
            </div>
            <div style="float: right">
               <div class="dropdown">
                <button class="dropbtn">My Account
                    <i class="fa fa-caret-down"></i>
                </button>
                   <div class="dropdown-content">
                    <a href="Register.jsp">Register Me</a>
                    <a href="Login.jsp">Sign In</a>
                    <a href="ShoppingCart.jsp">Shopping Cart</a>
                    <a href="WishList.jsp">Wishlist</a>
                </div>
            </div> 
            </div>
            
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
        <br>
        <br>
        <br>
        <%
            Riderdao dao = new Riderdao();
            ResultSet riders = dao.getAllRiders();
        %>
        <table class="table table-bordered" align="center">
            <thead>
                <tr>
                    <th>Rider Id</th>
                    <th>Name</th>
                    <th>Bike No.</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <%while(riders.next()) { %>
            <tr>
                <td><%= riders.getString("r_id") %></td>
                <td><%= riders.getString("name") %></td>
                <td><%= riders.getString("bike_no") %></td>
                <td>
                    <a href="Update_Rider.jsp?id=<%= riders.getString("r_id") %>">Edit</a>
                    
                </td>
                <td>
                    <a href="DeleteRiderServlet?id=<%= riders.getString("r_id") %>">Delete</a>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
