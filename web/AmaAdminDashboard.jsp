<%-- 
    Document   : AmaAdminDashboard
    Created on : Aug 27, 2018, 3:53:03 AM
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
            <a href="AmaAdminHome.jsp">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTeam.jsp">Meet the Team</a>
            <a href="AmaAdminDashboard.jsp" class="active">Dashboard</a>
  
             <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
        <div style="margin-left: 240px">
            
            <table>
                <tr>
                    <td style="width: 250px">
                         <div class="containerMU">
                            <a href="AmaAdminUserManagement.jsp">
                                <img src="img/userMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">User Management</div>
                                </div>
                            </a>
                        </div>
                    </td>
                    <td style="width: 250px">
                        <div class="containerMU">
                            <a href="addproducts.jsp">
                                <img src="img/productMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">Product Managemenr</div>
                                </div>
                            </a>
                        </div>
                    </td>
                    <td style="width: 250px">
                         <div class="containerMU">
                            <a href="TailoringMain.jsp">
                                 <img src="img/tailoringMgt.png" class="image" style="width:100%">
                    
                                  <div class="middle">
                                    <div class="textMU">Tailoring Management</div>
                                </div>
                            </a>
                         </div>
                    </td>
                    <td style="width: 250px">
                         <div class="containerMU">
                             <a href="purchase.jsp">
                                <img src="img/supplierMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">Supplier Management</div>
                                </div>
                            </a>
                        </div>
                    </td>
                </tr>
            </table>
            
            <br>
            <br>
            
            <table>
                <tr>
                    <td style="width: 250px">
                        <div class="containerMU">
                            <a href="">
                                <img src="img/orderMgt.jpg" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">Order Management</div>
                                </div>
                            </a>
                        </div>
                    </td>
                    <td style="width: 250px">
                         <div class="containerMU">
                             <a href="HomePage.jsp">
                                <img src="img/deliveryMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">Delivery Management</div>
                                </div>
                            </a>
                        </div>
                    </td>
                    <td style="width: 250px">
                         <div class="containerMU">
                            <a href="EmpMain.jsp">
                                <img src="img/HRMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">HR Management</div>
                                </div>
                             </a>
                        </div>
                    </td>
                    <td style="width: 250px">
                        <div class="containerMU">
                            <a href="admin_accounts_main.jsp">
                                <img src="img/AccountsMgt.png" class="image" style="width:100%">
                    
                                <div class="middle">
                                    <div class="textMU">Accounts Management</div>
                                </div>
                            </a>
                    </div>
                    </td>
                </tr>
            </table>
        </div>
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
        
    </body>
</html>

