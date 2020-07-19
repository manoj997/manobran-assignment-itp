<%-- 
    Document   : ContactUs
    Created on : Jul 4, 2018, 2:58:46 AM
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
            input[type=text], select, textarea {
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

            input[type=submit] {
                background-color: grey;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: black;
            }

            .container {
                border-radius: 10px;
                background-color: #f2f2f2;
                padding: 30px;
                font-family: Comic Sans MS;
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
            <a href="ContactUs.jsp" class="active">Contact Us</a>
            
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
        
        <table>
            <tr>
                <td style="width: 50%">
                    <p style="margin-left: 30px; font-family: Comic Sans MS; font-size: 25px"><b>ManoBran Enterprises</b></p>
                    <p style="margin-left: 65px; font-family: Comic Sans MS; font-size: 18px">Visit Us : </p>
                    <pre style="margin-left: 30px; font-family: Comic Sans MS; font-size: 18px">
                    310,Galle Road
                    Colombo 06, Sri Lanka
                    00600                    </pre>
                    <p style="margin-left: 65px; font-family: Comic Sans MS; font-size: 18px">Call Us : </p>
                    <pre style="margin-left: 30px; font-family: Comic Sans MS; font-size: 18px;">
                    <a style="text-decoration:none;" href="tel:+94114343365">+94114343365 </a><- Click or Tap Call
                    <a style="text-decoration:none;" href="tel:+94774553352">+94774553352</a>
                    <a style="text-decoration:none;" href="tel:+94785120564">+94785120564</a>
                    </pre>
                    <p style="margin-left: 65px; font-family: Comic Sans MS; font-size: 18px">Email Us : </p>
                    <a href="manobran@gmail.com" style="margin-left: 130px; font-family: Comic Sans MS; font-size: 18px; text-decoration: none" >
                   manobran@gmail.com
                    </a>
                </td>
                <td>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13323.946153102546!2d79.86046334103376!3d6.862669185351188!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1d592f77b2c0b0a!2sManoBran+Tailors!5e0!3m2!1sen!2slk!4v1530683253981" width="600" height="450" frameborder="0" style="margin-top:45px" allowfullscreen>
                        
                    </iframe>
                </td>
            </tr>
        </table>
             
        <br>
        
        <center>
            <p style="margin-left: 10px; font-family: Comic Sans MS; font-size: 25px; color: #082207">
            <b>Let a message for us</b>
        </p>
       
            <form action="FeedbackServelet1" name="ContactForm" method="POST">
                <table style="border: 1px">
                    <tr>
                    <table class="container">
                            <tr>
                                <td>
                                    <label for="fullname">Full Name</label>
                                    <input type="text" id="fullname" name="fullname" placeholder="---Your name---" width="50px">
                                    <br>
                                    <label for="emailA">Email Address</label><br>
                                    <input type="email" id="emailA" name="emailA" placeholder="---Your email address---" >
                                    <br>
                                    <label for="msg">Leave Your message here</label>
                                    <textarea id="msg" name="msg" placeholder="---Write something---" style="height:200px"></textarea>
                                </td>
                            </tr>
                        </table>
                    </tr>
                    <tr>
                        <br>
                        <button type="submit" value="Submit" class="butn" style="width: 30%; border-radius: 5px">
                            Send Message
                        </button>
                    </tr>
                </table>
            </form>
       
        </center>
        
        <br>
        
        <footer class="foot">
            <div style="float:left">
            ManoBran Enterprises </br>
            No.310 , Galle Road,</br>
            Colombo 06 </br>
            011 2 301904 
            </div>
            <div style="float: right; font-family: Comic Sans Ms">
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
