<%-- 
    Document   : Cart
    Created on : Aug 6, 2018, 10:46:05 PM
    Author     : Aser
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
       
       
        <<div class="topnav" id="myTopNav">
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
       
        <h1>Your Shopping Cart</h1>
                                             <%
            
            
            try {
                 DbConnect db=new DbConnect();
                 Connection connection = db.getDBConnection();
                 Statement myStm=connection.createStatement();
                 
                 String query = "select * from orders o,products p,final_goods f where p.ProductId=o.ProductId and f.ProductId=p.ProductId and f.ProductId=o.ProductId ";
                 ResultSet resultSet = myStm.executeQuery(query);
                      while(resultSet.next()){
    %>
        <div style = " width : 900px; height: 300px; float: left">
            <div style = "width :1050px; height: 150px; border: 1px solid black; background-color: gray"> 
                <div style="width: 150px; height: 150px; float: left">
    
                <img src="<%=resultSet.getString("Image") %>" width="150px" height="150px">
                 
                </div>
                    <div style = " width : 600px; height : 150px; float: left " >
                        <p style="font-family: inherit ; font-size:15"><b><%=resultSet.getString("ProductName") %></b></p>
                    </div>
                 <div style="width: 150px; height: 100px; float: left">
                     <center><p><%=resultSet.getString("Quantity") %></p></center>
                 </div>
                <div style="width: 150px; height: 100px; float: right">
                    <center><p><%=resultSet.getString("Price") %></p></center>
                </div>
                <div style="width: 150px; height: 100px; float: right">
                    <center><p><%=resultSet.getString("Size") %></p></center>
                </div>
                
                    <center><form method="POST" action="updatecart.jsp?Id=<%=resultSet.getString("ProductId") %>"><input type="submit" value="Update"></form></center>
                
                
                    <center><form method="POST" action="<%=request.getContextPath() %>/Test">
                            <input type="hidden" name="Id" value="<%=resultSet.getString("ProductId")%>">
                            <input type="submit" value="Delete">
                        </form>
                    </center><%}%>
               

            </div><br></div>
                                                                          <%
                
              connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
%>  
           
 
    
        <div style=" width: 150px; height: 150px; float: right; background-color: gray; border: 1px solid black">
            <center><button style="width: 120px; color: whitesmoke; background-color:blue">Go to checkout</button></center>
           
        </div> 
      </br>
        
        <br/><br/><br/><br/><br/><br/>

   
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