<%-- 
    Document   : viewpurchase
    Created on : 30-Sep-2018, 18:15:30
    Author     : Vithu Shan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    
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

            <a href="supply.jsp"class="active">Suppliers & Purchases</a>

            <a href="#">Employees</a>
            <a href="ViewFeedback.jsp">Feedbacks</a>
            <a href="TailoringMain.jsp" >Tailoring</a>
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
                <table id="customers" style="border: 1px">
            <tr>
                  <th>purchase ID</th>
                  <th>purchase date</th>
                  <th> payment</th>
                  <th>purchase Type</th>
                  <th>contact</th>
                  <th>Email</th>
                  <th>address</th>
                
            </tr>
            
<%
        
        try {
             DbConnection db=new DbConnection();
             Connection connection = db.getDBConnection();
             Statement myStm=connection.createStatement();
             String query = "select * from purchase ";
             ResultSet resultSet = myStm.executeQuery(query);
                while(resultSet.next()){
%>
               <tr>
                <td><%=resultSet.getString("purchaseid") %></td>
                <td><%=resultSet.getString("purchaseDate") %></td>
                <td><%=resultSet.getString("payment") %></td>
		<td><%=resultSet.getString("purchasetype") %></td>
		<td><%=resultSet.getString("contactno") %></td>
		<td><%=resultSet.getString("email_id") %></td>
		<td><%=resultSet.getString("address") %></td>
               
               </tr>
            
                   
                   
<%
            }
      
      			connection.close();
      
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
            <a href="" style="text-decoration:none">  <img src="img/twitter1.png" width="50px"> </a>
        </div>
    </footer>
    
    </body>
</html>