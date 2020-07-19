<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>
<%@page import = "java.io.*,java.util.*,javax.servlet.*" %>
<%@include file="DBConfig.jsp" %>
<%    String title = (String) "Add Income";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title><%out.print(title);%></title>
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

        <script type="text/javascript">
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
                var iName = document.forms["income_add"]["income_name"].value;
                var iAmount = document.forms["income_add"]["income_amount"].value;
                var iDate = document.forms["income_add"]["income_date"].value;
                var iType = document.forms["income_add"]["income_type"].value;

                if (iName === "" || iName === null) {
                    alert("Please Enter the name for the transaction");
                    return false;
                } else if (iAmount === "" || iAmount === null) {
                    alert("Please enter the amount for the transaction");
                    return false;
                    else if ((iAmount === "" || iAmount === null) && iType === "SaleOfAssets") {
                        return true;
                    }
                } else if (iDate === "" || iDate === null) {
                    alert("Please enter a date for a transaction");
                    return false;
                } else if (iType === "" || iType === null) {
                    alert("Please select the income type for " + iName + " on " + iDate);
                    return false;
                }

            }

        </script>
        <%!
            String query = "";
        %>
        <%
            try {
                String iAmount = request.getParameter("income_amount");
                String idate = request.getParameter("income_date");
                String itype = request.getParameter("income_type");
                String regno = request.getParameter("regNo");

                String remarks = "Income Tax Paid";
                String div = "dividend";
                String in = "interest";
                String rt = "rent";
                String soa = "saleofassets";
                int AssetAmount = 0;

                if (itype.equalsIgnoreCase(div)) {

                    query = "INSERT INTO income_dividend(amount,date,remarks) VALUES ('" + iAmount + "','" + idate + "','" + remarks + "')";
                } else if (itype.equalsIgnoreCase(in) || itype.equalsIgnoreCase(rt)) {
                    query = "INSERT INTO expense_petty(amount,type,date) VALUES ('" + iAmount + "','" + itype + "','" + idate + "')";
                } else if (itype.equalsIgnoreCase(soa)) {

                    Statement st2 = conn.createStatement();

                    String qry = "SELECT * FROM asset_vehicle WHERE regNo='" + regno + "' ";

                    ResultSet rs = st2.executeQuery(qry);
                    while (rs.next()) {
                        AssetAmount = rs.getInt("initialValue");
                    }
                    Statement st3 = conn.createStatement();
                    String qry1 = "DELETE * FROM asset_vehicle WHERE regNo='" + regno + "'";
                    int result = st3.executeUpdate(qry1);
                    if (result > 0) {
                        query = "INSERT INTO income_saleofassets(amount,date) VALUES('" + AssetAmount + "','" + idate + "')";
                    }
                }
                Statement income = conn.createStatement();
                int result2 = income.executeUpdate(query);
                if (result2 > 0) {
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

        <script>
            function asset() {
                var iType = document.getElementById("type").value;

                if (iType === "SaleOfAssets") {
                    document.getElementById("regNoField").style.display = "block";
                } else {
                    document.getElementById("regNoField").style.display = "none";

                }
            }
        </script>
    <center>
        <h1>Add income</h1>
        <form action="admin_accounts_income_add.jsp" method="POST" name="income_add" onsubmit=" return validate()">
            <table>
                <tbody>

                    <tr>
                        <td><label>Amount</label></td>
                        <td><input type="text" name="income_amount" placeholder="Ex : 22500.00"/></td>
                    </tr>
                    <tr>
                        <td>Transaction Date</td>
                        <td><input type="date" name="income_date"/></td>
                    </tr>
                    <tr>
                        <td>Income Type</td>
                        <td><select id="type" name="income_type" onchange="return asset()">
                                <option value="">Select One</option>
                                <option value="SaleOfAssets">Sale of Assets</option>
                                <option value="InterestsReceived">Interests R/D </option>
                                <option value="dividend">Dividend</option>
                            </select></td>
                    </tr>
                    <tr id="regNoField"  style="display: none">
                        <td>
                            asset regNo
                        </td>
                        <td>
                            <input type="text" name="regNo">
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>

            <button class="button1" type="submit" onclick="">Submit</button>
            <br>
            <br>
            <br>
            <input type="reset" class="button2"/>
        </form>

    </center>

    <br>
    <br>
    <br>

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


</body>
</html>