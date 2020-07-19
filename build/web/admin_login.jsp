<%-- 
    Document   : HomePage
    Created on : Jul 4, 2018, 2:12:21 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises - Admin</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
        <script type="text/javascript">
                    function loginValidate(){
                        var uname= document.getElementById("usernameField").value;
                        var pw= document.getElementById("passwordField").value;
                        
                        if(uname === null || uname === ""){
                            alert("Username cannot be empty");
                            return false;
                        }
                        
                        if(pw===null || pw ===""){
                            alert(uname + ", password cannot be empty");
                            return false;
                        }
                        
                        if(pw.length > 8){
                            alert("Password cannot contain more than 8 characters");
                            return false;
                        }
                    }
                </script>
    </head>
    <body>
        
        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>
           
        </header>
       
       
        <div class="topnav" id="myTopNav">
            <a href="admin_dashboard.jsp" class="active">Dashboard</a>
            <a href="AboutUs.jsp">Accounts</a>
               
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
           
            <a href="Promotions.jsp">Suppliers & Purchases</a>
            
            <a href="employees.jsp">Employees</a>
            <a href="feedback.jsp">Feedbacks</a>
            
            <div style="float: right; margin-top: 20px; margin-right: 50px">
                 <img src="img/user3.png" style="width: 20px" >
            </div>
            <div style="float: right">
               <div class="dropdown">
                <button class="dropbtn">Session Name
                    <i class="fa fa-caret-down"></i>
                </button>
                   <div class="dropdown-content">
                    <a href="Login.jsp">Sign In</a>
                    
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
        
    <center>
       <h1>Admin Login</h1>
        <form name="admin_login" action="admin_dashboard.jsp">
            <table>
              
                
                    <tr>
                        <td><label id="usernameText" class="formText" name="usernameText">Username</label></td>
                         <td><input type="text" id="usernameField" class="textbox" name="usernameField" placeholder="Enter Username" /></td>
                    </tr>
               
                    <tr>
                        <td><label id="passwordText" class="formText" name="passwordText">Password</label></td>
                         <td><input type="password" id="passwordField" class="textbox" name="passwordField" placeholder="Enter password" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="button_submit" value="Log In" onclick="return loginValidate()"/></td>
                        <td><input type="reset" class="button_reset" value="Reset Credentials"/></td>
                    </tr>
                    <tr>
                        <td><a href="help.jsp" class="help_link">Need Help?</a></td>
                    </tr>
                               
            </table>

        
        </form>
    </center>
    <br/>
    <br/>
    <br/>
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
    </body>
</html>
