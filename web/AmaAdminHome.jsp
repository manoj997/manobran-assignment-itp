<%-- 
    Document   : AmaAdminHome
    Created on : Aug 27, 2018, 3:44:37 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
    </head>
    <body>
         <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>
            <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="AmaAdminLogin.jsp">LogIn|</a>
                <a href="">Logout|</a>
            </div>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHome.jsp" class="active">Home</a>
            
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
    
        <br>
        
     <center>
         <div class="slideshow-container">

            <div class="mySlides fade">
                <img src="img/denims1.jpg" style="width: 85%">
            </div>

            <div class="mySlides fade">
                <img src="img/saree4.jpg" style="width: 85%">
            </div>

            <div class="mySlides fade">
                <img src="img/men2.jpg" style="width: 85%">
            </div>

             <div class="mySlides fade">
                 <img src="img/saree3.jpg" style="width: 85%">
            </div>
            
             <div class="mySlides fade">
                 <img src="img/men1.jpg" style="width: 85%">
            </div>
             
             <div class="mySlides fade">
                 <img src="img/shalwar1.jpg" style="width:85%">
            </div>
                  
             <div class="mySlides fade">
                 <img src="img/men3.jpg" style="width:85%">
            </div>
             
              <div class="mySlides fade">
                  <img src="img/indian-767872_1280.jpg" style="width:85%">
            </div>
             
              <div class="mySlides fade">
                 <img src="img/men4.jpg" style="width:85%">
            </div>
        </div>
        </center>
        <br>
        
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
