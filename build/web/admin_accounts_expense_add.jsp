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
            function validate() {
                var eName = document.forms["expense_add"]["expense_name"].value;
                var eAmount = document.forms["expense_add"]["expense_amount"].value;
                var eDate = document.forms["expense_add"]["expense_date"].value;
                var eType = document.forms["expense_add"]["expense_type"].value;

                if (eName === "" || eName === null) {
                    alert("Please Enter the name for the transaction");
                    return false;
                } else if (eAmount === "" || eAmount === null) {
                    alert("Please enter the amount for the transaction");
                    return false;
                } else if (eDate === "" || eDate === null) {
                    alert("Please enter a date for a transaction");
                    return false;
                } else if (eType === "" || eType === null) {
                    alert("Please select the expense type for " + eName + " on " + eDate);
                    return false;
                }

            }
        </script>
        <%!
            String query = "";
        %>
        <%            try {
                String iAmount = request.getParameter("expense_amount");
                String idate = request.getParameter("expense_date");
                String itype = request.getParameter("expense_type");
                
                String remarks = "Income Tax Paid";
                String it="IncomeTax";
                String el="electricity";
                String wt="water";
                String ins="insurance";
                String cl="cleaning";
                String tl="telephone";
                String ot="other";
                
                    
                if (itype.equals(it)) {

                    query = "INSERT INTO expense_incometax(amount,date,remarks) values('" + iAmount + "','" + idate + "','" + remarks + "')";
                } else if (itype.equals(el) || itype.equals(wt) ||itype.equals(ins) || itype.equals(cl) || itype.equals(tl) || itype.equals(ot) ) {
                    query = "INSERT INTO expense_petty(amount,type,date) VALUES ('" + iAmount + "','" + itype + "','" + idate + "')";
                } 
                Statement expense = conn.createStatement(); 
                int result = expense.executeUpdate(query);
                if (result > 0) {
                    out.println("Succesfully Added");
                } else {
                    out.println("Failed");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
        <br/>

        <br/>


    <center>
        <h1>Add an Expense</h1>
        <form action="admin_accounts_expense_add.jsp"  name="expense_add" method="POST" onsubmit="return validate()">
            <table id="customers">
                <tbody>

                    <tr>
                        <td><label>Amount</label></td>
                        <td><input type="text" name="expense_amount" placeholder="Ex : 35000.00"/></td>
                    </tr>
                    <tr>
                        <td>Transaction Date</td>
                        <td><input type="date" name="expense_date"/></td>
                    </tr>
                    <tr>
                        <td>Expense Type</td>
                        <td><select name="expense_type">
                                <option value="">Select One</option>
                                <option value="IncomeTax">Income Tax</option>
                                <option value="electricity">Electricity</option>
                                <option value="water">Water</option>
                                <option value="insurance">Insurance</option>
                                <option value="cleaning">Cleaning</option>
                                <option value="telephone">Telephone</option>
                                <option value="other">Other</option>

                            </select></td>
                    </tr>
                </tbody>
            </table>
            <br>

            <button class="button1" type="submit" onclick="">Add</button>
            <br>
            <br>
            <br>
            <button class="button2">Reset</button>
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
            <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="Img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
            <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="Img/insta.png" width="50px"> </a> &nbsp;&nbsp;
            <a href="" style="text-decoration:none"> <img src="Img/twitter1.png" width="50px"> </a>
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