<%-- 
    Document   : AmaAdminAddManager
    Created on : Aug 27, 2018, 4:06:15 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
        
        <script>
           
            function regAdminValidate(){
                var fname = document.forms["AdminManAdd"]["firstname"].value;
                var lname = document.forms["AdminManAdd"]["lastname"].value;
                var call = document.forms["AdminManAdd"]["contact"].value;
                var email = document.forms["AdminManAdd"]["email"].value;
                var password = document.forms["AdminManAdd"]["psw"].value;
                var confirm = document.forms["AdminManAdd"]["cpsw"].value;
                
                if(fname==="" || fname===null){
                    alert('Please enter your first name');
                    return false;
                }
                if(lname==="" || lname===null){
                    alert('Please enter your last name');
                    return false;
                }
                if(call==="" || call===null){
                    alert('Please enter a contact number');
                    return false;
                }
                if(email==="" || email===null){
                    alert('Please enter email address');
                    return false;
                }
                if(password==="" || password===null){
                    alert('Please enter password');
                    return false;
                }
                  if(confirm==="" || confirm===null || confirm!=password){
                    alert('Please enter correct password again');
                    return false;
                }
            }
        </script>
        
    </head>
    <body>
        <br>
        <header>
            <center>
                <img src="Img/1.png" style="width: 200px">
            </center>
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
        
        <div style="float: left; margin-left: 25px">
             <a href="AmaAdminManager.jsp">| <<< Back to the Main Page |</a>
         </div>
         <br>
         <br>
         <script>
              function Demo(){
            document.getElementById("fname").value="Manoj";
            }
         </script>
        <center>
            <button onclick="return Demo()">Demo</button>
        <form action="AmaAdminManagerRegisterServlet" name="AdminManAdd" method="POST">
            <table border="0">
                    <tbody>
                        <tr>
                            <td>Title &nbsp;</td>
                            <td>
                                <select name="title">
                                    <option>Mr.</option>
                                    <option>Mrs.</option>
                                    <option>Miss.</option>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>First Name &nbsp;</td>
                            <td>
                                <input id="fname" type="text" name="firstname" value="" size="30" placeholder="---First Name---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name &nbsp;</td>
                            <td>
                                <input type="text" name="lastname" value="" size="30" placeholder="---Last Name---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Category &nbsp;</td>
                            <td>
                                <select name="category" required="">
                                    <option>---Select One---</option>
                                    <option>User Management</option>
                                    <option>Supplier Management</option>
                                    <option>Product Management</option>
                                    <option>Tailoring & Feedback Management</option>
                                    <option>Order & Return Management</option>
                                    <option>Delivery Management</option>
                                    <option>Human Resource Management</option>
                                    <option>Accounts Management</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Contact Number &nbsp;</td>
                            <td>
                                <input type="text" name="contact" value="" size="30" maxlength="10" placeholder="---Contact No---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Address &nbsp;</td>
                            <td>
                                <input type="text" name="email" value="" size="30" placeholder="---Email---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Password &nbsp;</td>
                            <td>
                                <input type="password" name="psw" value="" size="30" />
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password &nbsp;</td>
                            <td>
                                <input type="password" name="cpsw" value="" size="30" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <br>
                
                <button class="button1" type="submit" onclick="return regAdminValidate()">Add Manager</button> &nbsp;&nbsp;&nbsp;&nbsp;
                <br>
                <br>
                <button class="button1" type="reset">Reset</button>
        </form>
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
        
    </body>
</html>

