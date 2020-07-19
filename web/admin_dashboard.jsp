<%-- 
    Document   : AdminDashboard
    Created on : Aug 6, 2018, 11:23:51 AM
    Author     : MANOJ KUMAR
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
        <br>
         <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>
           
        </header>
   
       
        <div class="topnav" id="myTopNav">
            <a href="admin_dashboard.jsp" class="active">Dashboard</a>
            <a href="admin_accounts_main.jsp">Accounts</a>
               
            <div class="dropdown">
                <button class="dropbtn">Inventory
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div>            
            <a href="#">Suppliers & Purchases</a>
            <a href="#">Employees</a>
            <a href="#">Feedbacks</a>
            <a href="admin_meet_the_team.jsp">Meet the Team</a>
            <div style="float: right; margin-top: 15px; margin-right: 50px">
                 <img src="img/user3.png" style="width: 20px" >
            </div>
            <div style="float: right">
               <div class="dropdown">
                <button class="dropbtn">Session Name
                    <i class="fa fa-caret-down"></i>
                </button>
                   <div class="dropdown-content">
                       <a href="admin_login.jsp">Sign In</a>
                </div>
            </div> 
            </div>
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <script>
            //function for responsive page
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
        <center>
                        
            <a  href="AmaAdminUserManagement.jsp" style="text-decoration: none">
                <button class="button1" >User Management</button>
            </a>
            <br>
            <br>  
                   
            <a href="AdminProductManagement1.jsp" style="text-decoration: none">
                <button class="button1">Product Management</button>
            </a>
            <br>
            <br>
                            
            <a href="TailoringMain.jsp" style="text-decoration: none">
                <button class="button1">Tailoring Management</button>
            </a>
            <br>
            <br>
                            
            <a href="AdminSupplierManagement1.jsp" style="text-decoration: none">
                <button class="button1">Supplier Management</button>
            </a>
            <br>
            <br>
                            
            <a href="AdminOrderManagement1.jsp" style="text-decoration: none">
                <button class="button1">Order Management</button>
            </a>
            <br>
            <br>
                           
            <a href="AdminDeliveryManagement1.jsp" style="text-decoration: none">
                <button class="button1">Delivery Management</button>
            </a>
            <br>
            <br>
                            
            <a href="AdminHRManagement1.jsp" style="text-decoration: none">
                <button class="button1">HR Management</button>
            </a>
            <br>
            <br>
            
            <a href="admin_accounts_main.jsp" style="text-decoration: none">
                <button class="button1">Account Management</button>
            </a>
                        
        </center>    
        
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
                <a href="" style="text-decoration:none"> <img src="mg/twitter1.png" width="50px"> </a>
            </div>
        </footer>
    
    </body>
</html>
