<%-- 
    Document   : R_JOB
    Created on : 30-Sep-2018, 13:49:51
    Author     : RENUKA FERNANDO
--%>

<%@page import="Connection.jobdao"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
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
                <a href="rider_list.jsp">Riders List|</a>
                <a href="Req_Deli_form.jsp">Delivery Request|</a>
                <a href="Add_Rider.jsp">Add Rider|</a>
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
            jobdao dao = new jobdao();
            ResultSet jobs = dao.getAlljobs();
        %>
        <table class="table table-bordered" align="center">
            <thead>
                <tr>
                    <th>Job ID</th>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Date</th>
                    <th>Address</th>
                </tr>
            </thead>
            <%while(jobs.next()) { %>
            <tr>
                <td><%= jobs.getString("job_id") %></td>
                <td><%= jobs.getString("order_id") %></td>
                <td><%= jobs.getString("c_name") %></td>
                <td><%= jobs.getString("date") %></td>
                <td><%= jobs.getString("adress") %></td>
                <%--<td>
                    <a href="Update_Rider.jsp?id=<%= riders.getString("r_id") %>">Edit</a>
                    <a href="DeleteRiderServlet?id=<%= riders.getString("r_id") %>">Delete</a>
                </td>--%>.
            </tr>
            <% } %>
        </table>
    </body>
</html>
