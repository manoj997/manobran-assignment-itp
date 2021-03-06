<%-- 
    Document   : AmaAdminManager
    Created on : Aug 27, 2018, 3:58:06 AM
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
        </header>
         <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="AmaAdminLogin.jsp">LogIn|</a>
                <a href="AmaAdminLogOut.jsp">Logout|</a>
        </div>
        <br>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHomePage1.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
  
             <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
        <div style="float: left; margin-left: 25px">
            <a href="AmaAdminUserManagement.jsp">| <<< Back to the Selection Page |</a>
        </div>
        
        <br>
        <br>
        
        <center>
        
        <table>
            <tr>
                <td>
                    <div class="containerMU">
                        <a href="AmaAdminAddManager.jsp">
                            <img src="img/addUser.png" class="image" style="width:100%">
                    
                            <div class="middle">
                                <div class="textMU">Add Managers</div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div class="containerMU">
                        <a href="AmaAdminUpdateManager.jsp">
                            <img src="img/updateUser.png" class="image" style="width:100%">
                    
                            <div class="middle">
                                <div class="textMU">Update Managers</div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div class="containerMU">
                        <a href="AmaAdminManDeleteTable.jsp">
                            <img src="img/deleteUser.png" class="image" style="width:100%">
                    
                            <div class="middle">
                                <div class="textMU">Delete Managers</div>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div class="containerMU">
                        <a href="AmaAdminGenRManagers.jsp">
                            <img src="img/generateReports.png" class="image" style="width:100%">
                    
                            <div class="middle">
                                <div class="textMU">Generate Reports</div>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
        </table>
     
        </center>    
        
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

