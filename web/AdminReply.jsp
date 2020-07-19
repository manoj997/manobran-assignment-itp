<%-- 
    Document   : AdminReply
    Created on : Aug 25, 2018, 3:22:30 PM
    Author     : TOSHIBA
--%>

 <%@ page import="java.sql.*" %>

<%
	String id=request.getParameter("id");
	String url="jdbc:mysql://localhost:3306/mb";  
	String username="root";  
	String password=""; 

	try {		
			Class.forName("com.mysql.jdbc.Driver");
		} 

	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Feedback</title>
    <script type="text/javascript" src="validation/validation.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/CommonCss.css">
        

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
            <a href="#">Feedbacks</a>
            <a href="#" class="active">Tailoring</a>
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
        <h3>Customer Feedback</h3>
                        <form name="Reg_Form" action="" method="POST" onsubmit="return validate()"  >

<%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM feedback WHERE id='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
                            

                            
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control" value="<%=resultSet.getString("Email") %>">
                                </div>
                          
                            
                            <div class="form-group">
                                   <textarea name="comment" class="form-control" rows="3" placeholder="Comment"  ></textarea>
                            </div>


                            <div class="submit">
                                <input type="submit" class="btn btn-default" value="Sent Reply" >
                            </div>
                           
      <% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
				   
                     </form>
			
   </div>
   </div>
                            

</div>
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