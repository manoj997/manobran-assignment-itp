<%-- 
    Document   : Register
    Created on : Jul 5, 2018, 1:51:28 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        
         <style>
             input[type=text], select, textarea {
                width: 100%;
                padding: 6px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 6px;
                resize: vertical;
            }
            
            input[type=password], select, textarea {
                width: 100%;
                padding: 6px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 6px;
                resize: vertical;
            }
            
             input[type=email], select, textarea {
                width: 100%;
                padding: 6px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 6px;
                resize: vertical;
            }

        </style>
        
        <script>
            function regValidate(){
                var email = document.forms["RegForm"]["email"].value;
                var password = document.forms["RegForm"]["pw"].value;
                var cpassword = document.forms["RegForm"]["cpword"].value;
                var fname = document.forms["RegForm"]["firstname"].value;
                var lname = document.forms["RegForm"]["lastname"].value;
                var no = document.forms["RegForm"]["address1"].value;
                var city = document.forms["RegForm"]["city"].value;
                var pro = document.forms["RegForm"]["province"].value;
                var pcode = document.forms["RegForm"]["postal"].value;
                var call = document.forms["RegForm"]["contact"].value;
                
               
                if(email==="" || email===null){
                    alert('Please enter email address');
                    return false;
                }
                if(password==="" || password===null){
                    alert('Please enter a password');
                    return false;
                }
                if(cpassword==="" || cpassword===null){
                    alert('Please confirm the password');
                    return false;
                }
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
            }
        </script>
        
    </head>
    <body>
      <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>
            <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="Register.jsp">|Register|</a>
                <a href="Login.jsp">LogIn|</a>
                <a href="ShoppingCart.jsp">View Cart|</a>
                <a href="WishList.jsp">Wishlist|</a>
                <a href="Logout.jsp">Logout|</a>
            </div>
        </header>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp">Home</a>
            <a href="AboutUs.jsp">About Us</a>
             <a href="Product.jsp">Products</a>
            <a href="Promotions.jsp">Promotions</a>
            <a href="ContactUs.jsp">Contact Us</a>
            
            <div style="float: right; margin-top: 20px; margin-right: 50px">
                 <img src="img/user3.png" style="width: 20px">
            </div>
            <div style="float: right">
               <div class="dropdown">
                <button class="dropbtn">My Account
                    <i class="fa fa-caret-down"></i>
                </button>
                   <div class="dropdown-content">
                    <a href="Register.jsp">Register Me</a>
                    <a href="Login.jsp">Log In</a>
                    <a href="ShoppingCart.jsp">Shopping Cart</a>
                    <a href="WishList.jsp">Wishlist</a>
                    <a href="Logout.jsp">Log out</a>
                </div>
            </div> 
            </div>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
                
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
        
        <br>
        
        <div style="background-image: url('img/background1.jpg'); font-family: Comic Sans MS; font-size: 16px; color: black">
            <br>
            <center>
            <form name="RegForm" method="POST" action="RegistrationServlet">
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>Please enter your login details : </b></p>
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Email Address &nbsp;</td>
                            <td>
                                <input type="text" name="email" value="" size="30" placeholder="---Email Address---"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Password &nbsp;</td>
                            <td>
                                <input type="password" name="pw" value="" size="30" />
                            </td>
                        </tr>
                        <tr>
                            <td>*Re-enter Password &nbsp;</td>
                            <td>
                                <input type="password" name="cpword" value="" size="30" />
                            </td>
                        </tr>
                    </tbody>
                </table>
              
                <br>
                
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>Please enter your contact details : </b></p>
                
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
                    </tbody>
                </table>
                
                <br>
                
                <button class="butn" type="submit" onclick="return regValidate()" style="border-radius: 5px">Submit</button>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <button class="butn" type="reset" style="background-color: #CE1127; border-radius: 5px">Reset</button>
                
                <br>
                
                <p>Already have an Account? <a href="Login.jsp" style="text-decoration: none">Sign in</a></p>
                
                <br>
                <br>
                
            </form>
            </center>
        </div>
        
        <br>
        
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
    </body>
</html>
