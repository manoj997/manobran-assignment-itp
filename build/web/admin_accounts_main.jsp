<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>
<%@include file="DBConfig.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - Accounting</title>
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
        </script>
        <br/>
        <br/>
    <center>


        <!--
        <a  href="admin_accounts_income_main.jsp" style="text-decoration: none">
            <button class="button1" >Income</button>
        </a>

        <br>


        <a  href="admin_accounts_investment_main.jsp" style="text-decoration: none">
            <button class="button1" >Investment</button>
        </a>
        <br>



        <a  href="admin_accounts_expense_main.jsp" style="text-decoration: none">
            <button class="button1" >Expenses</button>
        </a>



        <br>



        <a  href="admin_accounts_profitLossViewer.jsp" style="text-decoration: none">
            <button class="button1" >View Profit or Loss</button>
        </a>
        <br>


        <br>
        -->

        <h1>
            Accounting Summary of your business
        </h1>



        <table>
            <tr>
                <td>

                    <%!
                        int sum_b;
                        int sum_l;
                        int sum_m;
                        int sum_v;
                        int totalSum;
                        String sumval;

                    %>
                    <%                    //building sum
                        try {
                            Statement st1 = conn.createStatement();
                            String sumofBuilding = "SELECT SUM(initialValue)FROM asset_building";

                            ResultSet rs = st1.executeQuery(sumofBuilding);

                            if (rs.next()) {
                                sum_b = rs.getInt("SUM(initialValue)");

            //                            System.out.print("your assets: LKR " + sum_b);
                            }
                            //land sum
                            Statement st2 = conn.createStatement();
                            String sumofLand = "SELECT SUM(initialValue)FROM asset_land";

                            ResultSet rs1 = st2.executeQuery(sumofLand);

                            if (rs1.next()) {
                                sum_l = rs1.getInt("SUM(initialValue)");

            //                            System.out.print("your assets: LKR " + sum_l);
                            }
                            Statement st3 = conn.createStatement();
                            String sumofMachines = "SELECT SUM(initialValue)FROM asset_machines";

                            ResultSet rs2 = st3.executeQuery(sumofMachines);

                            if (rs2.next()) {
                                sum_m = rs2.getInt("SUM(initialValue)");

                                //                           System.out.print("your assets: LKR " + sum_m);
                            }
                            Statement st4 = conn.createStatement();
                            String sumofVehicle = "SELECT SUM(initialValue)FROM asset_building";

                            ResultSet rs3 = st4.executeQuery(sumofVehicle);

                            if (rs3.next()) {
                                sum_v = rs3.getInt("SUM(initialValue)");

                                //                          System.out.print("your assets: LKR " + sum_v);
                            }
                            totalSum = sum_b + sum_l + sum_m + sum_v;

                        } catch (SQLException e) {
                            e.getMessage();
                        }
                    %>
                    
                    <p style="background-color: #4CAF50; color: white;font-size: 18px">

                       &nbsp; Your total asset Value is currently LKR <%=totalSum%>.00 &nbsp;<br>
                    
                       <br>&nbsp;View all your assets <a style="color: appworkspace;text-decoration: none" href="admin_accounts_view_all_assets.jsp">Here!</a>
                    </p>
                </td>
            
            

                <td>
                    <p style="background-color: #0dad8d; color: white;font-size: 18px">
                        &nbsp;View Profit / Loss Statement&nbsp;
                        <br><br>&nbsp;  <a style="color: white;text-decoration: none" href="admin_accounts_profitLossViewer.jsp">Here!</a>
                        
                        
                        
                    </p>
                </td>
            
            
                <td>
                    <p style="background-color: #a94442;font-size: 18px;color: white">
                        &nbsp;View All incomes and expenses&nbsp;<br>
                        <br>
                        &nbsp;<a style="color: white;text-decoration: none" href="admin_accounts_view_incomeExpenses.jsp">Here!</a>
                    </p>
                </td>
            </tr>


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
