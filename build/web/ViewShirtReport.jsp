<%-- 
    Document   : ViewShirtReport
    Created on : Sep 8, 2018, 8:50:46 PM
    Author     : TOSHIBA
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

	String url="jdbc:mysql://localhost:3306/mb";  
	String username="root";  
	String password="root"; 


	try {		
 		Class.forName("com.mysql.jdbc.Driver");
 	} 

	catch (ClassNotFoundException e) {
    	e.printStackTrace();
	}
      
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">

       
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
            <a href="TailoringMain.jsp" class="active">Tailoring</a>
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
        <br/>
        <br/>
      
<center>
    <h3>Parameterized Report</h3>
              <table id="customers" style="border: 1px">
            <tr>
                  <th>Order ID</th>
                  <th>Customer ID</th>
                  <th> Name</th>
                  <th>Design</th>
                  <th>Chest</th>
                  <th>Shoulder</th>
                  <th>Arms</th>
                  <th>Slength</th>
                  <th>Fneck</th>
                  <th>Length</th>
                  <th>Ddate</th>
                  <th>Fees</th>
                  <th></th>
            </tr>
            
<%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM shirt_order WHERE Design='"+session.getAttribute("Design")+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
               <tr>
                <td><%=resultSet.getString("OrderID") %></td>
                <td><%=resultSet.getString("CusID") %></td>
                <td><%=resultSet.getString("Fname") %></td>
		<td><%=resultSet.getString("Design") %></td>
		<td><%=resultSet.getString("Chest") %></td>
		<td><%=resultSet.getString("Shoulder") %></td>
		<td><%=resultSet.getString("Arms") %></td>
		<td><%=resultSet.getString("Slength") %></td>
                <td><%=resultSet.getString("Fneck") %></td>
		<td><%=resultSet.getString("Length") %></td>
		<td><%=resultSet.getString("Ddate") %></td>
                <td><%=resultSet.getString("Fees") %></td>
               
            </tr>
            
                   
<% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
                    
        </table>
            </center>

    <br>
    
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
    
    </body>
</html>

