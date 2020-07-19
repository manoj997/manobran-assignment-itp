<%-- 
    Document   : UserProfileDelete
    Created on : Aug 12, 2018, 9:48:00 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBConfig.jsp"%>
<%HttpSession ses = request.getSession();
    String Username = ses.getAttribute("Username").toString();
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
      
        
        <% String CustId = request.getParameter("CustId");
        
           Statement stmt = conn.createStatement();
           
           String query = "select * from customer where CustId = "+CustId+"";
           ResultSet rs = stmt.executeQuery(query); 
        %>
        
        
        <center>
            <table id="customer" style="border-radius: 5px">
               <tr>
                   <th style="">User ID</th>
                   <th style="">First Name</th>
                   <th style="">Last Name</th>
                   <th style="">Address 1</th>
                   <th style="">Address 2</th>
                   <th style="">City</th>
                   <th style="">Province</th>
                   <th style="">Postal Code</th>
                   <th style="">Contact No</th>
                   <th style="">Email Address</th>
               </tr>
               <tr>
                   <% while (rs.next()) { %>
                    <td style="">
                        <center><%=rs.getString("CustId") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("First_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Last_Name") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Address_1") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Address_2") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("City") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Province") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Postal_Code") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Contact_No") %></center>
                    </td>
                    <td style="">
                        <center><%=rs.getString("Email") %></center>
                    </td>
               </tr>
               <% } %>
           </table>
           
           <br>
           
           <td>DO YOU WANT TO DELETE THIS RECORD ? </d>
            &nbsp;&nbsp;
           <td><a href="UserProfileFinalDelete.jsp?CustId=<%= CustId%>" style="text-decoration: none; color: darkgreen"><b> YES </b></a></td>
            &nbsp;&nbsp;&nbsp;
            <td><a href="UserProfile.jsp?CustId=<%= CustId%>"  style="text-decoration: none; color: red"><b> NO </b></a></td>
    </center>
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
