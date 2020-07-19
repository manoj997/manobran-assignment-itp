<%-- 
    Document   : paySalary
    Created on : Sep 28, 2018, 10:13:10 AM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Salary</title>
                        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
    </head>
    <body bgcolor="#E6E6FA">
        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>

        </header>


        <div class="topnav" id="myTopNav">
            <a href="HomePage.jsp" >Dashboard</a>
            <a href="AboutUs.jsp">Accounts</a>

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

            <a href="employees.jsp"  class="active">Employees</a>
            <a href="feedback.jsp">Feedbacks</a>

            <div style="float: right; margin-top: 20px; margin-right: 50px">
                <img src="img/user3.png" style="width: 20px" >
            </div>
            <div style="float: right">
                <div class="dropdown">
                    <button class="dropbtn">Session Name
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="Login.jsp">Sign In</a>

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
        
        <%!
            String name;
            int amount;
            String empId;
        %>
        <%
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran", "root", "");
                empId = request.getParameter("emp_no");
                Statement stName = con.createStatement();
                String getName = "SELECT Name FROM employee WHERE Eno=" + empId + "";
                ResultSet rsName = stName.executeQuery(getName);

                while (rsName.next()) {
                    name = rsName.getString("Name");
                }
        %>
        <form method="get" action="confirmPayment">
                    
    <center>
        <h1>Pay Salary For <%=name%> </h1>
    
<%
            Statement stAmount=con.createStatement();
            String getAmount="SELECT Total FROM temp WHERE Eno="+empId+" ";
            ResultSet rsAmount=stAmount.executeQuery(getAmount);
            while(rsAmount.next()){
            
                amount=rsAmount.getInt("Total");
            }
            %>
        <table>
            <tr><td>Employee ID: </td><td> <input type="text" value="<%=empId%>" name="emp_id" readonly></td></tr>
            <tr><td>Total Salary: </td><td><input type="text" value="<%=amount%>" name="amount" readonly></td></tr>
            <tr><td>Date: </td><td><input type="date" name="date" d></td></tr>            
        </table><br>
        <input type="submit" value="Confirm Payment"><br><br>
    <%
        
            } catch (SQLException e) {
                e.printStackTrace();
            }
%>
  
        </form>  
        </center>
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
