<%-- 
    Document   : ShowPassword
    Created on : Sep 3, 2018, 8:10:08 PM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file = "DBConfig.jsp"%>
<%HttpSession ses = request.getSession();
    String Username= ses.getAttribute("Username").toString();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        
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
        
        <% 
            Statement user = conn.createStatement();
            
            String query = "select * from customer where Email='"+Username+"' ";
            ResultSet rs = user.executeQuery(query);
            
        %>
        
         <pre  style="font-family:  Comic Sans MS; margin-left: 280px; ">
                    We have received a Account Password request from this email address. You can log in to
                     <a href="Login.jsp">ManoBran Enterprises website</a> using your email address and a password.
        </pre>
       
        <div style="margin-left: 450px;">
            <% while (rs.next()) { %> 
            <table style="font-size: 17px">
                    <tr>
                        <td><b>Your Email Address  : &nbsp;</b></td>
                        <td>
                            <b><%=rs.getString("Email")%></b>
                        </td>
                    </tr>
                     <tr>
                         <td><b>Your Password   :  &nbsp;</b></td>
                        <td>
                            <b><%=rs.getString("Password")%></b>
                        </td>
                    </tr>
            </table>
            <br>          
            <% } %>
        </div>
    
         <pre  style="font-family:  Comic Sans MS; margin-left: 300px;">
                Sincerely,
                ManoBran Enterprises,
                No. 310, Galle Road,
                Colombo 06,
                Sri Lanka.

                Need help? <a href="ContactUs.jsp">Contact Us</a>
            </pre>
       
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

