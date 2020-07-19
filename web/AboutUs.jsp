<%-- 
    Document   : AboutUs
    Created on : Jul 15, 2018, 2:22:20 PM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        
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
        </header>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp">Home</a>
            <a href="AboutUs.jsp" class="active">About Us</a>
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
        <table>
            <tr>
                <td>
                     <div class="slideshow-container">

                        <div class="mySlides fade">
                            <img src="img/denims1.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides fade">
                            <img src="img/saree4.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides fade">
                            <img src="img/saree3.jpg" style="width: 100%">
                        </div>
            
                        <div class="mySlides fade">
                            <img src="img/men2.jpg" style="width:100%">
                        </div>
             
                    </div>
                </td>
        
                 <td>
                     <center>
                         <h1 style="color: #082207">Our Mission</h1>
                     </center>
                     <p style="margin-left: 25px">
                         To manufacture world-class products of outstanding quality that<br> 
                            give our customers a competitive advantage through superior <br>
                                products and value, so we can make every customer smile.
                     </p>
                            
                     <center>
                         <h1 style="color: #082207">Our Vision</h1>
                     </center>
                     <p style="margin-left: 25px">
                         To manufacture products comparable to international standards, to be<br> 
                            customer-focused and globally competitive through better quality, <br>
                               latest technology and continuous innovation.
                     </p>
                </td>
        
        </tr>
    </table>
        </center>
    
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none"; 
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1} 
                slides[slideIndex-1].style.display = "block"; 
                setTimeout(showSlides, 3000); // Change image every 2 seconds
            }       
        </script>
        
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
