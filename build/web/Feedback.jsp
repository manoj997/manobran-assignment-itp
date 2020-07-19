<%-- 
    Document   : Feedback
    Created on : Jul 19, 2018, 6:09:16 PM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" />	
        <script type="text/javascript" src="validation/FeedbackValidation.js"></script>
          
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
            <a href="ViewFeedback.jsp"class="active">Feedbacks</a>
            <a href="TailoringMain.jsp">Tailoring</a>
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
        
        
      
      
<div id="contact-section" class="text-center">
   <div class="container">
           <script>
function setValue() {
    document.getElementById("name").value = "Kiros";
    document.getElementById("email").value = "kirosh@gmail.com";
    document.getElementById("feedback").value = "This is the demo testing";
  
}
</script>
    <input type="button"  class="btn btn-default" name="set_Value" id="set_Value" value="Demo" onclick="setValue()" />
        <h3>Customer Feedback</h3>
                        <form name="Reg_Form" action="FeedbackHandler" method="POST" onsubmit="return validate()"  >


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                    <input type="text" name="username" id="name" class="form-control"  placeholder="Name" >
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="email" id="email" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            </div>
                            <div class="form-group">
                                   <textarea name="feedback" id="feedback" class="form-control" rows="3" placeholder="Feedback"  ></textarea>
                            </div>


                            <div class="submit">
                                <input type="submit" class="btn btn-default" value="Sent Feedback" >
                            </div>
                           

				   
                     </form>
			
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
