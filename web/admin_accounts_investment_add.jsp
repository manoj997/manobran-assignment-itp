<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>
<%@page import = "java.io.*,java.util.*,javax.servlet.*" %>
<%@include file="DBConfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts Page</title>
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
            <a href="admin_accounts_main.jsp" class="active">Accounts</a>

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

            <a href="#">Suppliers & Purchases</a>

            <a href="#">Employees</a>
            <a href="#">Feedbacks</a>

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
            function validate() {
                var invName = document.forms["investment_add"]["investment_name"].value;
                var invAmount = document.forms["investment_add"]["investment_amount"].value;
                var invDate = document.forms["investment_add"]["investment_date"].value;
                var invType = document.forms["investment_add"]["investment_type"].value;

                if (invName === "" || invName === null) {
                    alert("Please Enter the name for the transaction");
                    return false;
                } else if (invAmount === "" || invAmount === null) {
                    alert("Please enter the amount for the transaction");
                    return false;
                } else if (invDate === "" || invDate === null) {
                    alert("Please enter a date for a transaction");
                    return false;
                } else if (invType === "" || invType === null) {
                    alert("Please select the investment type for " + invName + " on " + invDate);
                    return false;
                }

            }
        </script>
        <%            try {
                String iName = request.getParameter("investment_name");
                String iAmount = request.getParameter("investment_amount");
                String idate = request.getParameter("investment_date");
                String itype = request.getParameter("investment_type");
                String iSource=request.getParameter("investment_source");

                Statement investment = conn.createStatement();

                String query = "INSERT INTO investments(investment_name,amount,source,date,type) values('" + iName + "','" + iAmount + "','"+iSource+"','" + idate + "','" + itype + "')";
                int result = investment.executeUpdate(query);
                if (result > 0) {
                    out.println("Succesfully Added");
                } else {
                    out.println("Failed");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>

    <center>
        <h1>Add Investment</h1>
        <form action="admin_accounts_investment_add.jsp" method="POST" onsubmit="return validate()">
            <table>
                <tbody>
                    <tr>
                        <td><label>Investment Name</label></td>
                        <td><input type="text" name="investment_name" placeholder="Investment Name"/></td>
                    </tr>
                    <tr>
                        <td><label>Amount</label></td>
                        <td><input type="text" name="investment_amount" placeholder="Ex : 1000000.00"/></td>
                    </tr>
                    <tr>
                        <td>Investment Date</td>
                        <td><input type="date" name="investment_date"/></td>
                    </tr>
                    <tr>
                        <td>Investment Type</td>
                        <td><select name="investment_type">
                                <option value="">Select One</option>
                                <option value="Bank Loan">Bank</option>
                                <option value="personal investment">Personal Investment </option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>
                            Investment Source
                        </td>
                        <td>
                            <input type="text" name="investment_source" placeholder="source of funds"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>

            <button class="button1" type="submit">Add</button>
            <br>
            <br>
            <br>
            <button class="button2">Reset</button>
        </form>

    </center>
    <br>
    <br>  <br>
    <br>

    <footer class="foot">
        <div style="float:left">
            ManoBran Enterprises <br/>
            No.310 , Galle Road,<br/>
            Colombo 06 </br>
            011 2 301904 
        </div>
        <div style="float: right">
            <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="Img/fb1.png" width="50px"> </a>
            <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="Img/insta.png" width="50px"> </a> 
            <a href="" style="text-decoration:none"> <img src="Img/twitter1.png" width="50px"> </a>
        </div>
    </footer>


</body>
</html>