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

input[type=submit]{
    width: 25%;
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
  
 
  .rawmaterials{
      background-image:url(img/m-banner-01.jpg);
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

.image-upload > input
{
    display: none;
}

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
        <form method="POST" action="updatefinalgoods.jsp"><input type="search"  name="search"  placeholder="Search.."><button>Search</button></form>></div>
        <button style="margin-left:250px;" onClick="return Demo()">Demo</button>
        <form method="POST" action="AddFinalGoodsServlet">
         <div style="width: 100%; overflow: hidden;">
            
        
            <div class="finalgoods outs" >
                <h1 align="center"><b>Final Goods</b> </h1>
       
            <table style="font-size: 20px; font-weight: bold;">
            
                 <tr><td>Product id</td>
           <td><input type="text" name="productid" id="productid" ></td></tr>
            <select name="gender"  id="gender"style="margin-left:178px;"> <option>Choose Gender</option>
               <option value="Men" name="gender">Men</option>
               <option name="gender" value="Women">Women</option>
               <option value="Kids-girl" name="gender">Kids-girl</option>
               <option value="Kids-boy" name="gender">Kids-boy</option>
            </select>
           
           <tr><td>Product Category</td>
           <td><input type="text" name="category" id="category" ></td></tr>
             

           <tr><td>Available Stock</td>
           <td><input type="text" name="stock" id="stock" ></td></tr>
  
           <tr><td>Color</td>
           <td><input type="text" name="color"  id="color" ></td></tr>
    
           <tr><td>Size</td>
           <td><input type="text" name="size"  id="size"></td></tr>
    
           <tr><td>Price</td>
           <td><input type="text" name="price"  id="price" ></td></tr>
    
           <tr><td>Description</td>
           <td><input type="text" name="desc"  id="desc"></td></tr>
    
           <tr><td>Image</td>
           <td><input type="text" name="image"  id="image" ></td></tr>
     
           </table>
                  
                    <input type="submit" value="Submit">
           </form>
                      
           </div> 
            
            
           
    </div>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
                
                 document.getElementById("productid").value="prod657";
                  document.getElementById("gender").value="Men";
                    document.getElementById("category").value= "Shirt";
                     document.getElementById("stock").value=50;
                     document.getElementById("color").value="Blue";
                     document.getElementById("size").value="L";
                     document.getElementById("price").value="1600.00";
                     document.getElementById("desc").value="long sleeve dotted shirt good materails";
                     document.getElementById("image").value="https://ae01.alicdn.com/kf/HTB1Ydn9JpXXXXbvXpXXq6xXFXXXs/long-sleeve-dot-shirts-dark-blue-cotton-italian-design-mens-shirts-2015-spring-formal-polka-dot.jpg";
                     
                 
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