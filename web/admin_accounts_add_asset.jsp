<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>
<%@include file="DBConfig.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - Accounting</title>
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
        <style>
            .asset{
                
                display:none;
            }
            </style>
    </head>
    <body>
        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>

        </header>


        <div class="topnav" id="myTopNav">
            <a href="admin_dashboard.jsp" >Dashboard</a>
            <a href="admin_accounts_main.jsp" class="active">Accounts</a>

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

            <div style="float: right; margin-top: 20px; margin-right: 50px">
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
        <br>
        <br>
        <h1>
            Add an asset
        </h1>

        <table>
            <form name="add_asset" method="post" action="asset_add_process.jsp">
                <label>
                    Select asset type
                </label>
                <select name="assetType" id="asset_Type">
                    <option disabled="true">Select one</option>
                    <option value="addBuilding">Building</option>
                    <option value="addVehicle">Vehicle</option>
                    <option value="addLand">Land</option>
                    <option value="addMachine">Machine</option>

                </select>
                <input type="submit" class="button01" value="next">
            </form>
            </table>
            
       
        







        <footer class="foot">
            <div style="float:left">
                ManoBran Enterprises <br/>
                No.310 , Galle Road,<br/>
                Colombo 06 </br>
                011 2 301904 
            </div>
            <div style="float: right">
                <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="Img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="Img/insta.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="" style="text-decoration:none"> <img src="Img/twitter1.png" width="50px"> </a>
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
                
       
            
                    
                
            
        </script>
    </body>
</html>
