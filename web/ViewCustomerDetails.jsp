<%-- 
    Document   : ViewCustomerDetails
    Created on : Aug 11, 2018, 12:14:36 AM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Connection.DbConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        
        <div align="center">
        <h1>Search Employee</h1>
        <form method="get" action="UseSearch" name="filter">
            <table>
                <tr><td><b>Enter Customer Name or Number: </b></td><td><input type="text" name="id" id="id"/></td></tr>
            </table>
            <input type="submit" value="search" onclick="return regValidate()">
        </form><br>       
        <a href="RegisterUser.jsp"><b>Go Back</b></a>
        </div>
<center>
                 <table id="customers" style="border: 1px">
            <tr>
                  
                  <th>Customer ID</th>
                  <th> First Name</th>
                  <th> Last Name</th>
                  <th>Address</th>
                  <th>Email</th>
                  <th>Phone No</th>
                  <th>Mobile No</th>
                  <th>View Details</th>
                 
            </tr>
            
<%
        
        try {
             DbConnection db=new DbConnection();
             Connection connection = db.getDBConnection();
             Statement myStm=connection.createStatement();
             String query = "select * from register_user ";
             ResultSet resultSet = myStm.executeQuery(query);
                while(resultSet.next()){
%>
               <tr>
              
                <td><%=resultSet.getString("CusID") %></td>
                <td><%=resultSet.getString("Fname") %></td>
		<td><%=resultSet.getString("Lname") %></td>
		<td><%=resultSet.getString("Address") %></td>
		<td><%=resultSet.getString("Email") %></td>
                <td><%=resultSet.getString("Fixed_No") %></td>
                <td><%=resultSet.getString("Mobile_No") %></td>	
                <td><a href="CustomerDetailsEdit.jsp?id=<%=resultSet.getString("CusID")%>"><button class="update" type="button">View</button></a></td>
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
            <a href="" style="text-decoration:none"> <img src="img/twitter1.png" width="50px"> </a>
        </div>
    </footer>
    
    </body>
</html>

