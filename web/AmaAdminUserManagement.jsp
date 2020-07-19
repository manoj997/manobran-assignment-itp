<%-- 
    Document   : AmaAdminUserManagement.jsp
    Created on : Aug 27, 2018, 3:56:14 AM
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
        <br>
        <header>
            <center>
                <img src="img/1.png" style="width: 200px">
            </center>
             <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="AmaAdminLogin.jsp">LogIn|</a>
                <a href="AmaAdminLogOut.jsp">Logout|</a>
            </div>
            <br>
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
        
        <center>
            <img src="img/tailoring-supplies.jpg">
        </center>
            <div class="hero-text1">
                <center>
                    <h1>Welcome to User Management Page</h1>
                    
                    <br>
                    
                    <a href="AmaAdminManager.jsp">
                        <button>
                            Go to Managers Page
                        </button>
                    </a>    
                    
                    <br>
                    <br>
                    <br>
                     
                    <a href="AmaAdminCustomer.jsp" style="text-decoration: none">
                        <button>
                        Go to Customers Page
                        </button>
                    </a>
                </center>
            </div>
       
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

