<%-- 
    Document   : ForgetPassword
    Created on : Sep 3, 2018, 9:23:52 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBConfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>

        <link rel="stylesheet" type="text/css" href="CommonCss.css">

        <script>
            function emailValidate() {
                var email = document.forms["forgerPsw"]["emailAdd"].value;

                if (email === "" || email === null) {
                    alert('Enter Email Address');
                    return false;
                }
            }
        </script>
        
        <style>
              input[type=email], select, textarea {
                width: 100%;
                padding: 12px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
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
            <a href="HomePage.jsp">Home</a>
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
       
    <center>
        <pre style="font-family: Comic Sans MS">
                To reset your password, submit your username or your email address below. If we can find you
                in the database, an email will be sent to your email address, with instructions how to get access 
                again. 
                    *** Online Customers : Your Email should be the email address that you enter when you registered to our system. ***
        </pre>
    </center>

    <h2>Search by Email Address</h2>
    <hr>
    <br>
    <%
        String email = request.getParameter("emailAdd");
        Statement st = conn.createStatement();
        String query = "SELECT Email FROM customer WHERE Email='" + email + "' ";
        ResultSet rs=st.executeQuery(query);

        if (rs.next()) {
            out.println(  email + " is available.");
 

    %>
   
    <a href="goToUserProfile.jsp?Username=<%=email%>"> Click Here To Get Password</a>
  
    <%} else {
            out.println("Cannot find email ID");
        }
    %>
    <div style="margin-left: 60px">
        <form action="ForgetPassword.jsp" name="forgerPsw">
            <label>Email Address  </label> &nbsp;&nbsp;&nbsp;
            <input type="email" name="emailAdd" style="width: 25%; height: 30px">
            <br/>
            <br/>
            <input type="submit" name="submitPsw" style="margin-left: 300px; border-radius: 5px" class="butn" onclick="return emailValidate()">
        </form>
    </div>

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
</body>
</html>
