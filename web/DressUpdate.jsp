<%-- 
    Document   : DressUpdate
    Created on : Aug 24, 2018, 2:42:34 PM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">

    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" />	
          
  </head>
  <body>
        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>

        </header>


        <div class="topnav" id="myTopNav">
            <a href="admin_dashboard.jsp" >Dashboard</a>
            <a href="admin_accounts_main.jsp" >Accounts</a>

            <div class="dropdown">
                <button class="dropbtn">Inventory
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div> 

            <a href="Promotions.jsp">Suppliers & Purchases</a>

            <a href="#">Employees</a>
            <a href="ViewFeedback.jsp">Feedbacks</a>
            <a href="TailoringMain.jsp"class="active">Tailoring</a>
            <div style="float: right; margin-top: 20px; margin-right: 50px">
                <img src="img/user3.png" style="width: 20px" >
            </div>
            <div style="float: right">
                <div class="dropdown">
                    <button class="dropbtn">Session Name
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="admin_login.jsp">Sign In</a>

                    </div>
                </div> 
            </div>

            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>

        <script>
            //function for responsive page
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
      
  <div class="container"> 
    <div class="section-title text-center center">
      <h2>Update Orders</h2>
      <hr>

      
    </div>
	
    <div class="categories">
     
     
   
	
    <div class="row">
      <div class="portfolio-items">
	  
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="ViewShirtOrders.jsp" >
              <div class="hover-text">
                <h4>Men's Shirt</h4>
                <small>Update Details</small>
              </div>
              <img src="image/Shirt.jpg"  class="img-responsive" > </a> </div>
          </div>
        </div>
		
          <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="ViewBlouseOrders.jsp">
              <div class="hover-text">
                <h4>Blouse</h4>
                <small>Update Details</small>
              </div>
              <img src="image/Blouse.jpg" class="img-responsive" > </a> </div>
          </div>
        </div>
        
		
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="ViewShalwarOrders.jsp">
              <div class="hover-text">
                <h4>Shalwar</h4>
                <small>Update Details</small>
              </div>
              <img src="image/Shalwar3.jpg" class="img-responsive" > </a> </div>
          </div>
        </div>
	
          <div class="col-sm-6 col-md-3 col-lg-3 app">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="ViewTrouserOrders.jsp">
              <div class="hover-text">
                <h4>Trousers</h4>
                <small>Update Details</small>
              </div>
              <img src="image/Trouser.jpg" class="img-responsive" > </a> </div>
          </div>
        </div>
        
		
      </div>
    </div>
	
	
	
    </div>	
 </div>

        
        
        <footer class="foot">
            <div style="float:left">
            ManoBran Enterprises <br/>
            No.310 , Galle Road,<br/>
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


