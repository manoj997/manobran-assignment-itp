<%-- 
    Document   : UserProfileUpdate
    Created on : Jul 13, 2018, 3:36:50 PM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBConfig.jsp" %>
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

        <style>
             input[type=text], select, textarea {
                width: 100%;
                padding: 8px;
                /*border: 1px solid #ccc;*/
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 6px;
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
            String CustId = request.getParameter("CustId");

            Statement st = conn.createStatement();
            String query = "select * from customer where CustId = " + CustId + "";

            ResultSet rs = st.executeQuery(query);
        %>

    <center>
        <form action="UserProfileFinalUpdate.jsp" method="POST">
            <table id="customer">
                <% while (rs.next()) {%>

                <tr>
                    <td> 
                        <input type="hidden" name="CustId" value="<%=rs.getString("CustId")%>" style="width: 250px">
                    </td>
                </tr>
                <tr>
                    <td>
                        First Name &nbsp;
                    </td>
                    <td>
                        <input type="text" name="firstName" value="<%=rs.getString("First_Name")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>
                        Last Name &nbsp;
                    </td>
                    <td>
                        <input type="text" name="lastname" value="<%=rs.getString("Last_Name")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>
                        Address &nbsp;
                    </td>
                    <td>
                        <input type="text" name="address1" value="<%=rs.getString("Address_1")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>
                        <input type="text" name="address2" value="<%=rs.getString("Address_2")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>
                        <input type="text" name="city" value="<%=rs.getString("City")%>" style="width: 250px">
                    </td>
                </tr>
                
                <tr>
                    <td>

                    </td>
                    <td>
                        <input type="text" name="province" value="<%=rs.getString("Province")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>
                        Postal Code &nbsp;
                    </td>
                    <td>
                        <input type="text" name="postal" value="<%=rs.getString("Postal_Code")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>
                        Contact No &nbsp;
                    </td>
                    <td>
                        <input type="text" name="mobile" value="<%=rs.getString("Contact_No")%>" style="width: 250px">
                    </td>
                </tr>

                <tr>
                    <td>
                        Email Address &nbsp;
                    </td>
                    <td>
                        <input type="text" name="email" value="<%=rs.getString("Email")%>" style="width: 250px">
                    </td>
                </tr>
            </table>
            <br>
            <br>
            <center>
                <input type="hidden" value="<%=rs.getString("CustId")%>"
                       <center><button class="butn">Update</button></center>
            </center>
            <% }%>
        </form>
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
