<%-- 
    Document   : AmaAdminLogin
    Created on : Aug 27, 2018, 3:50:34 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
        
        
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
        
        <script>
            function loginValidate(){
                var username = document.forms["UserAdmin"]["email"].value;
                var pw = document.forms["UserAdmin"]["psw"].value;
                
                if(uname==="" || uname===null){
                    alert('Please enter your username');
                    return false;
                }
                if(pw==="" || pw===null){
                    alert('Please enter the password');
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
            <form action="AmaAdminLoginServlet" name="UserAdmin">
                 <table>
                     <tr>
                         <td> <img src="img/REd-and-yellowSaree.jpg"></td>
                         <td>
                             <center>
                                <h1>Login</h1>
                             </center>
                     
                            <label for="email" style="font-size: 18px"><b>Email</b></label>
                            <input type="text" placeholder="---Enter Email---" name="email" required="">
                    
                            <label for="psw" style="font-size: 18px"><b>Password</b></label>
                            <input type="password" placeholder="---Enter Password---" name="psw" required="">
                    
                            <button type="submit" class="btnl" onclick="return loginValidate()">Login</button>
                         </td>
                     </tr>
                 </table>
            </form>
        </center>    
        
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

