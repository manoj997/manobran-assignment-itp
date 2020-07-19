<%-- 
    Document   : AmaAdminAddCustomer
    Created on : Aug 27, 2018, 4:26:34 AM
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
                var email = document.forms["AdminCusAdd"]["email"].value;
                //var password = document.forms["AdminCusAdd"]["pw"].value;
                var fname = document.forms["AdminCusAdd"]["firstname"].value;
                var lname = document.forms["AdminCusAdd"]["lastname"].value;
                var no = document.forms["AdminCusAdd"]["address1"].value;
                var city = document.forms["AdminCusAdd"]["city"].value;
                var pro = document.forms["AdminCusAdd"]["province"].value;
                var pcode = document.forms["AdminCusAdd"]["postal"].value;
                var call = document.forms["AdminCusAdd"]["contact"].value;
                var password = document.forms["AdminCusAdd"]["psw"].value;
                //var cpassword = document.forms["AdminCusAdd"]["cpsw"].value;
               
                if(email==="" || email===null){
                    alert('Please enter email address');
                    return false;
                }
                /*if(password==="" || password===null){
                    alert('Please enter a password');
                    return false;
                }*/
                if(fname==="" || fname===null){
                    alert('Please enter your first name');
                    return false;
                }
                if(lname==="" || lname===null){
                    alert('Please enter your last name');
                    return false;
                }
                if(no==="" || no===null){
                    alert('Please enter your home address');
                    return false;
                }
                if(city==="" || city===null){
                    alert('Please enter the city');
                    return false;
                }
                if(pro==="" || pro===null){
                    alert('Please enter the name of the province');
                    return false;
                }
                if(pcode==="" || pcode===null){
                    alert('Please enter the postal code');
                    return false;
                }
                if(call==="" || call===null){
                    alert('Please enter a contact number');
                    return false;
                }
                if(password==="" || password===null){
                    alert('Please enter password');
                    return false;
                }
                /*if(cpassword==="" || cpassword===null || cpassword!=password){
                    alert('Please re-enter password correctly');
                    return false;
                }*/
            }
        </script>
        
    </head>
    <body>
        <br>
        <header>
            <center>
                <img src="img/1.png" style="width: 200px">
            </center>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHome.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
  
             <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
        <div style="float: left; margin-left: 25px">
             <a href="AmaAdminCustomer.jsp">| <<< Back to the Main Page |</a>
         </div>
         <br>
         <br>
         
        <center>
        <form action="AmaAdminCustomerRegisterServlet" name="AdminCusAdd" method="POST">
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
                                <input type="text" name="firstname" value="" size="30" placeholder="---First Name---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name &nbsp;</td>
                            <td>
                                <input type="text" name="lastname" value="" size="30" placeholder="---Last Name---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Address Line_1 &nbsp;</td>
                            <td>
                                <input type="text" name="address1" value="" size="30" placeholder="---Address Line 1---"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>Address Line_2(*optional) &nbsp;</td>
                            <td>
                                <input type="text" name="address2" value="" size="30" placeholder="---Address Line 2---"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>City &nbsp;</td>
                            <td>
                                <input type="text" name="city" value="" size="30" placeholder="---City---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>State/Province &nbsp;</td>
                            <td>
                                <input type="text" name="province" value="" size="30" placeholder="---State/Province---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Postal Code &nbsp;</td>
                            <td>
                                <input type="text" name="postal" value="" size="30" placeholder="---Postal Code---"/>
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
                                <input type="password" name="psw" value="" size="30"/>
                            </td>
                        </tr>
                        <!--tr>
                            <td>Confirm password &nbsp;</td>
                            <td>
                                <input type="password" name="cpsw" value="" size="30"/>
                            </td>
                        </tr-->
                    </tbody>
                </table>
                
                <br>
                
                <button class="button1" type="submit" onclick="return regAdminValidate()">Add Customer</button> &nbsp;&nbsp;&nbsp;&nbsp;
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

