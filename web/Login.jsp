<%-- 
    Document   : Login
    Created on : Aug 27, 2018, 2:45:55 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        
        <style>
            input[type=password], select, textarea {
                width: 100%;
                padding: 12px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            
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
                <a href="Logout.jsp">Logout|</a>
            </div>
            <div style="float: left; font-size: 15px; margin-left: 10px"> 
                <a href="AmaAdminHome.jsp">CLICK HERE FOR ADMIN LOGIN >></a>
            </div>
        </header>
        <br>
        <br>
         <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp">Home</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="Product.jsp">Products</a>
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
            <form action="AmaLoginServlet2" name="customerLogin" method="POST">
            <table>
                <tr>
                    <td>
                        
                        <img src="img/REd-and-yellowSaree.jpg">
                        
                    </td>
                    <td>
  
                        <label for="email" style="font-size: 18px"><b>Username</b></label> &nbsp;
                         <input type="email" placeholder="---Enter Email---" name="email" style="width: 440px; height: 45px" required="">
                        
                         <br>
                         <br>
                         
                         <label for="psw" style="font-size: 18px"><b>Password</b></label> &nbsp;
                         <input type="password" placeholder="---Enter Password---" name="psw" style="width: 441px; height: 45px" required="">
                         
                         <br>
                         <br>
                         
                        <center>
                            <button type="reset" class="butn"  style="border-radius: 5px; background-color: #CE1127">Reset</button> 
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="submit" class="butn"  style="border-radius: 5px" onclick="return loginValidate()">Login</button>
                        </center>
                         <a href="ForgetPassword.jsp" style="float: right">Forget Password?</a>
                      
                         <p>New User? <a href="Register.jsp">Register Now!!</a></p>&nbsp;
                         
                    </td>
                </tr>
            </table>
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
    </body>
</html>
