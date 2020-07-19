 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Connection.DbConnect"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="CommonCss.css">
<link rel="stylesheet" type="text/css" href="productcss.css">
<script src="jquery-3.3.1.min.js"></script>
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}




.contain0r {
  position: relative;
  width:300px;
  

  }



.overlay {
  
  
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;

  text-align: center;
  
  
}

.card:hover{
 -moz-box-shadow: 0 0 3px 3px #999;
-webkit-box-shadow: 0 0 3px 3px#999;
box-shadow: 0 0 3px 3px #999;
}

.contain0r:hover .overlay {

  opacity: 1;
}
input[type=submit]{
    width: 10%;
    background-color: #082207;
    color: white;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-left: 10px;
}
input[type=submit]:hover {
    background-color: #45a049;
}
      select {
    width: 260px;
    padding: 12px 20px;
    margin: 10px 0;
    display: inline-block;
    border: 2px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-left:10px;
}
button {
  
  color: #FFF;
  background-color: #082207;
  font-size: 18px;
  text-align: center;
  font-style: normal;
 position:relative;
  height:50px;
  width:100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  
  
}
* {
    box-sizing: border-box;
}

input[type=search]{ width: 900px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    margin-left:320px;
    margin-top:30px;
    padding: 12px 20px 12px 40px;}


.column {
       float: left;
    width: 25%;
    padding: 20px;
    
}

.row::after {
    content: "";
    clear: both;
    display: table;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width:300px;
  margin-left:30px;
  margin-right: 10px;
  display: block;
  width: 100%;
  height: auto;
  text-align: center;
  font-family: arial;
  
}

.title {
  color: grey;
  font-size: 18px;
}

body {
	padding-top: 30px;
}
.product {
	margin-bottom: 30px;
}
.product-inner {
	box-shadow: 0 0 10px rgba(0,0,0,.2);
	padding: 10px;
}
.product img {
	margin-bottom: 10px;
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
                    <a href="Product.jsp">Men</a>
                    <a href="product_women.jsp">Women</a>
                    <a href="product_kid_girl.jsp">Kids-Girl</a>
                    <a href="product_kid_boy.jsp">Kids-Boy</a>
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
            <input type="search"  name="search"  placeholder="Search.."><input type="submit" value="Search" ></div>
            <div id="filter">
		<form method="POST">
			
				<select name="Type" id="Type" style="margin-left:320px;">
					<option value="">Select Type</option>
					<option value="Shirt">Shirt</option>
                                        <option value="Tshirt">T-shirt</option>
                                        <option value="Kurta">Kurta</option>
                                        <option value="">Show All</option>
				</select>
			
				<select name="Color" id="Color">
					<option value="">Select Model</option>
                                        <option value="Blue">Blue</option>
                                        <option value="Black">Black</option>
                                        <option value="White">White</option>
                                        <option value="Yellow">Yellow</option>
                                        <option value="Green">Green</option>
					<option value="Pink">Pink</option>
                                        <option value="">Show All</option>
				</select>
			
				<select name="Size" id="Size">
					<option value="">Select Type</option>
					<option value="S">S</option>
                                        <option value="M">M</option>
                                        <option value="L">L</option>
                                        <option value="XL">XL</option>
                                        <option value="XXL">XXL</option>
                                        <option value="XXXL">XXXL</option>
                                        <option value="">Show All</option>
				</select>
			
				<select name="price range" id="pricerange">
					<option value="">Select Price Range</option>
                                        <option value="1000">0-1000</option>
                                        <option value="5000">1000-5000</option>
					<option value="10000">5000-10000</option>
                                        <option value="10001">Greater than 10000</option>
                                        <option value="">Show All</option>
				</select>
			 <input type="submit" value="Search" ></div>
		</form>
	</div>

</div>
     	                   <%
           
             try {
                 DbConnect db=new DbConnect();
                 Connection connection = db.getDBConnection();
                 Statement myStm=connection.createStatement();
                 String query = "select * from products p,final_goods f where p.ProductId=f.ProductId and f.Gender='Kids-boy'";
                 ResultSet resultSet = myStm.executeQuery(query);
                      while(resultSet.next()){
    %>
    <div class="row">
    <div class="column" > 
        <div class="contain0r">
    <div class="card">
        
        <img src="<%=resultSet.getString("Image") %>" max-height="500px"width="100%"/> 
         <p class="title"><%=resultSet.getString("ProductName") %></p>
  <p><%=resultSet.getString("Price") %></p>
<BR>
<div class="overlay"><form method="POST" action="productdesc.jsp?Id=<%=resultSet.getString("ProductId")%>"><button>Add To Cart</button></form></div>
            </div></div></div>
        
                       <%
                }%>
              
    </div>
              
                    
                   
<%
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
     
       
            

</body>
</html>




