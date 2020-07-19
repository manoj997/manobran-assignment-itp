<%-- 
    Document   : ResetPassword
    Created on : Sep 15, 2018, 10:47:38 PM
    Author     : AMASHI SANDUNIKA
--%>


<%@include file = "DBconfig.jsp"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        
        
         <style>
            input[type=password], select, textarea {
                width: 80%;
                padding: 4px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 8px;
                resize: vertical;
            }
            
             input[type=email], select, textarea {
                width: 80%;
                padding: 4px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 8px;
                resize: vertical;
            }
        </style>
    </head>
    <body>

        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>
            <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="Register.jsp">|Register|</a>
                <a href="Login.jsp">LogIn|</a>
                <a href="ShoppingCart.jsp">View Cart|</a>
                <a href="WishList.jsp">Wishlist|</a>
                <a href="Logout.jsp">Logout|</a>
            </div>
        </header>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp" class="active">Home</a>
            <a href="AboutUs.jsp">About Us</a>
             <a href="Product.jsp">Products</a>
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
                    <a href="Login.jsp">Log In</a>
                    <a href="ShoppingCart.jsp">Shopping Cart</a>
                    <a href="WishList.jsp">Wishlist</a>
                    <a href="Logout.jsp">Log out</a>
                </div>
            </div> 
            </div>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
    

       
        <h2 style="margin-left: 5%"><u>Reset Password</u></h2>
    <center>
        <form name="resetPassword" action="ResetPasswordStep.jsp"  method="POST">
        
            <table id="customer">
                <tr>
                    <td>Username (Email Address)</td>
                    <td><input type="email" name="email"></td>
                </tr>
                <!--<tr>
                    <td>Current Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>New Password </td>
                    <td><input type="password" name="psw"></td>
                </tr>
                <tr>
                    <td>Confirm Password </td>
                    <td><input type="password" name="passw"></td>
                </tr>
                -->
            </table>
        
            <br>
            
            <button class="butn" style="border-radius: 5px">CHECK EMAIL</button>
        </form>
    </center>

    <br>

 <footer class="foot">
            <div style="float:left;">
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