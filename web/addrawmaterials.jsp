<%-- 
    Document   : HomePage
    Created on : Jul 4, 2018, 2:12:21 AM
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
            input[type=text],input[type=date], select {
    width: 400px;
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

input[type=submit]:hover {
    background-color: #45a049;
}
div.outset{  border-radius: 5px;
    background-color: #f2f2f2;
    padding: 40px;
    width: 600px; float: left; margin-left: 520px; margin-top:60px;
    
  }
  .outs{
     border-radius: 5px;
    background-color: #f2f2f2;
    padding: 40px;
    width: 600px; float: left; margin-left: 520px; margin-top:60px;
   
  }
  
  
input[type=search]{ width: 500px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    margin-left:520px;
    margin-top:30px;
    padding: 12px 20px 12px 40px;}



</style>
    </head>
    <body>
        
        <br>
        <header>
            <center>
                <img src="img/1.png" style="width: 200px">
            </center>
            <div style="float: right; font-size: 13px;margin-right: 10px">
                <a href="Register.jsp">|Register|</a>
                <a href="Login.jsp">LogIn|</a>
                <a href="ShoppingCart.jsp">View Cart|</a>
                <a href="WishList.jsp">Wishlist|</a>
            </div>
        </header>
        <br>
        <br>
       
        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp" class="active">Home</a>
            <a href="AboutUs.jsp">About Us</a>
               
            <div class="dropdown">
                <button class="dropbtn">Products
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div> 
           
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
                    <a href="Login.jsp">Sign In</a>
                    <a href="ShoppingCart.jsp">Shopping Cart</a>
                    <a href="WishList.jsp">Wishlist</a>
                </div>
            </div> 
            </div>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <div>
        
            
        
         <div style="width: 100%; overflow: hidden;">
           
              
       <form  method="POST" action="AddRawMaterialsServlet">
           
  
           
 
        
              <div class="rawmaterials outs">
                <h1 align="center" ><b>Raw Materials</b> </h1>
      
           <table style=" font-size: 20px; font-weight: bold;">
               
             <tr><td>Product id</td>
           <td><input type="text" name="productid" id="productid" ></td></tr>
                <tr><td>Purchased Quantity</td>
        <td><input type="text" id="quantity" name="quantity" ></td></tr> 
                
               <tr><td>Available Stock</td>
                   <td> <input type="text" id="rstock" name="rstock" ></td></tr>

   
  
   
           </table>
      <input type="submit" value="Submit"></form>
          <button style="margin-left:250px;" onClick="return Demo()">Demo</button>
            </div>  
         </div>
      
        
        <script type="text/javascript">
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
            

        </script>
        <script>
            function Demo(){
                
               
                  
                    document.getElementById("quantity").value= 70;
                     document.getElementById("rstock").value=50;
                     
                 
            }
        
  </script>
  
        <br>
        
     
        <br>
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
    </body>
</html>
