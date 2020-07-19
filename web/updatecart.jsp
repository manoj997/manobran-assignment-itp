<%-- 
    Document   : HomePage
    Created on : Jul 4, 2018, 2:12:21 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Connection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="CommonCss.css">
        <style>
            * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}


img {
  max-width:100%;
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top:20px;
}



.contain {
  width: 700px;
  position: relative;
}


.white-box {
  background: white;
  height: 500px;
}
div.outset {  border-radius: 5px;
    background-color: #f2f2f2;
    padding: 30px;}
input[type=number],select {
    width: 500px;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 50%;
    background-color: #082207;
    color: white;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
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
                <a href="Logout.jsp">Logout|</a>
            </div>
        </header>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp" class="active">Home</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="Product.jsp">Products</a>
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
        
        <div style="width: 100%; overflow: hidden;">
            <div style="width: 600px; float: left;">
        <div class="contain">
            <%
                 try {
                 String productid=request.getParameter("Id");
                 DbConnect db=new DbConnect();
                 Connection connection = db.getDBConnection();
                 Statement myStm=connection.createStatement();
                 String query = "select * from products p,final_goods f,orders o where p.ProductId=f.ProductId and o.ProductId=p.ProductID and o.ProductId=f.ProductId   and p.ProductId='"+productid+"'";
                 ResultSet resultSet = myStm.executeQuery(query);
                      while(resultSet.next()){
             %>
      <div class="content">
        <div class="item-wrapper"> 
          <img src="<%=resultSet.getString("Image") %>">
         
        </div>
      </div>
    
 
</div>
        </div>
                        
           
             
            <form method="POST" action="UpdateCartServlet" >
            <div class="outset" style="margin-left: 820px; margin-top:60px; margin-right:10px;"> <table>
                   
               <input type="text" name="Id" style="display:none;" value="<%=productid%>">
                    <tr><h1><%=resultSet.getString("ProductName") %> </h1></tr><br>
                    <br>
                    <tr><%=resultSet.getString("Description") %></tr>
                    
                    
                    <tr><h3>Price:<%=resultSet.getString("Price") %></h3></tr><br>
                    <tr><td><label for="Color"><h3>Color:</h3></label></td>
                    <td> <select name="color" id="color" >
      <option name="color"value="white">White</option>
      <option name="color"value="blue">Blue</option>
      <option name="color"value="green">Green</option>
                        </select></td></tr>
                     <tr><td><label for="Size"><h3>Size:</h3></label></td>
                    <td> <select name="size" id="size" >
      <option name="size"value="S">S</option>
      <option name="size"value="M">M</option>
      <option name="size" value="L">L</option>
                        </select></td></tr>
                     <tr><td><h3>Quantity:</h3></td>
                         <td><input type="number"  name="quantity" id="number" min="1" max="<%=resultSet.getString("Stock") %>" value="1"></td>
                     </tr>
                     
                </table>
                     <input type="submit" value="Update"></form>
     
            </div></div>
                         <%}
                
              connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
%>
        
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