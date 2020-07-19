<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>

<%@include file="DBConfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <link rel="stylesheet" href="w3.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Accounts Page</title>

    <link rel="stylesheet" type="text/css" href="AdminCSS.css">

</style>
</head>

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

    <a href="EmpMain.jsp">Employees</a>
    <a href="ViewFeedback.jsp">Feedbacks</a>

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
    // Get the modal
    var modal = document.getElementById('myModal');

// Get the button that opens the modal
    var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    };

// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };

</script>

<%!
    //variable declarations
    int osales, tsales, sales;
    int blouseSum, shalwarSum, shirtSum, trouserSum;

    String eDate, sDate;
    int openingStock;
    int purchases;
    int closingstock;
    int costOfSales;
    int grossProfit;
    int dividendIncome, interestIncome, rentIncome, saleOfAssetsIncome, otherIncome;
    int telephoneExpense, insuranceExpense, cleaningExpense, electricityExpense, waterExpense, otherExpense;
    int gpoi, pbt, pat;
    int expenseIncomeTax, expenseSalaries, expensePetty, totalExp;
%>
<%    try {

        //get the dates
        sDate = request.getParameter("sDate");
        eDate = request.getParameter("eDate");

        //get sales
        Statement st = conn.createStatement();
        String sq1 = "SELECT SUM(amount) FROM income_sales";
        ResultSet rssq1 = st.executeQuery(sq1);
        while (rssq1.next()) {
            osales = rssq1.getInt("SUM(amount)");
        }//online sales done
        //next is tailoring sales
        //blouse sum
        Statement st0 = conn.createStatement();
        String sqlblouse = "SELECT SUM(Fees) FROM blouse_order";
        ResultSet rsblouse = st0.executeQuery(sqlblouse);
        while (rsblouse.next()) {
            blouseSum = rsblouse.getInt("SUM(Fees)");
        }
        //shalwar order
        Statement st01 = conn.createStatement();
        String sqlshalwar = "SELECT SUM(Fees) FROM shalwar_order";
        ResultSet rsshalwar = st01.executeQuery(sqlshalwar);
        while (rsshalwar.next()) {
            shalwarSum = rsshalwar.getInt("SUM(Fees)");
        }
        Statement st02 = conn.createStatement();
        String sqlshirt = "SELECT SUM(Fees) FROM shirt_order";
        ResultSet rsshirt = st02.executeQuery(sqlshirt);
        while (rsshirt.next()) {
            shirtSum = rsshirt.getInt("SUM(Fees)");
        }
        Statement st03 = conn.createStatement();
        String sqltroueser = "SELECT SUM(Fees) FROM trouser_order";
        ResultSet rstrouser = st03.executeQuery(sqltroueser);
        while (rstrouser.next()) {
            trouserSum = rstrouser.getInt("SUM(Fees)");
        }
        tsales = blouseSum + shalwarSum + shirtSum + trouserSum;

        sales = tsales + osales;
        //------------------cost of sales----------------------------
        //working
        //opening stock
        Statement st1 = conn.createStatement();
        String ost = "SELECT SUM(value) FROM stock WHERE purchaseDate";
        ResultSet rsost = st1.executeQuery(ost);
        while (rsost.next()) {
            openingStock = rsost.getInt("SUM(value)");

        }
        //<="+sDate+"

        //purchases
        Statement st2 = conn.createStatement();
        String prc = "SELECT SUM(amount) FROM expenses_purchases";
        ResultSet rsprc = st2.executeQuery(prc);
        while (rsprc.next()) {
            purchases = rsprc.getInt("SUM(amount)");
        }
        // WHERE date >= "+sDate+" AND date < "+eDate+"

        //closing stock
        Statement st3 = conn.createStatement();
        String cls = "SELECT SUM(amount) FROM expenses_purchases";
        ResultSet rscls = st3.executeQuery(cls);
        while (rscls.next()) {
            closingstock = rscls.getInt("SUM(amount)");
        }
//WHERE date >= "+sDate+" AND date < "+eDate+" 
        costOfSales = (openingStock + purchases) - closingstock;
        //------------cost of sales done---------------------------------
        //gross profit-------------------------
        grossProfit = sales - costOfSales;

        //----------other income------------------------------------
        //dividends
        Statement st4 = conn.createStatement();
        String dvi = "SELECT SUM(amount) FROM income_dividend";
        ResultSet rsdvi = st4.executeQuery(dvi);
        while (rsdvi.next()) {
            dividendIncome = rsdvi.getInt("SUM(amount)");
        }

        //interest income
        Statement st5 = conn.createStatement();
        String ini = "SELECT SUM(amount) FROM income_interestincome";
        ResultSet rsini = st5.executeQuery(ini);
        while (rsini.next()) {
            interestIncome = rsini.getInt("SUM(amount)");
        }

        //rent income
        Statement st6 = conn.createStatement();
        String ric = "SELECT SUM(amount) FROM income_rent";
        ResultSet rsric = st6.executeQuery(ric);
        while (rsric.next()) {
            rentIncome = rsric.getInt("SUM(amount)");
        }

        //sale of assets income
        Statement st7 = conn.createStatement();
        String soa = "SELECT SUM(amount) FROM income_saleofassets";
        ResultSet rssoa = st6.executeQuery(soa);
        while (rssoa.next()) {
            saleOfAssetsIncome = rssoa.getInt("SUM(amount)");
        }

        //add the incomes to get total other income
        otherIncome = dividendIncome + rentIncome + interestIncome + saleOfAssetsIncome;
        gpoi = grossProfit + otherIncome;

        //expenses
        Statement st8 = conn.createStatement();
        String eit = "SELECT SUM(amount) FROM expense_incometax";
        ResultSet rseit = st8.executeQuery(eit);
        while (rseit.next()) {

            expenseIncomeTax = rseit.getInt("SUM(amount)");
        }

        Statement st9 = conn.createStatement();
        String esal = "SELECT SUM(Total) FROM pay";
        ResultSet rsesal = st9.executeQuery(esal);
        while (rsesal.next()) {

            expenseSalaries = rsesal.getInt("SUM(Total)");
        }

        Statement st10 = conn.createStatement();
        String epet = "SELECT SUM(amount) FROM expense_petty";
        ResultSet rsepet = st10.executeQuery(epet);
        while (rsepet.next()) {
            expensePetty = rsepet.getInt("SUM(amount)");
        }
        totalExp = expenseSalaries + expensePetty;
        pbt = gpoi - totalExp;
        pat = pbt - expenseIncomeTax;

//petty expenses
        //electricity
        Statement st11 = conn.createStatement();
        String eexp = "SELECT SUM(amount) FROM expense_petty WHERE type LIKE 'Ele%'";
        ResultSet rseexp = st11.executeQuery(eexp);
        while (rseexp.next()) {
            electricityExpense = rseexp.getInt("SUM(amount)");
        }

        //water
        Statement st12 = conn.createStatement();
        String wexp = "SELECT SUM(amount) FROM expense_petty WHERE type LIKE 'Wat%'";
        ResultSet rswexp = st12.executeQuery(wexp);
        while (rswexp.next()) {

            waterExpense = rswexp.getInt("SUM(amount)");
        }
        //insurance
        Statement st13 = conn.createStatement();
        String iexp = "SELECT SUM(amount) FROM expense_petty WHERE type LIKE 'Ins%'";
        ResultSet rsiexp = st13.executeQuery(iexp);
        while (rsiexp.next()) {

            insuranceExpense = rsiexp.getInt("SUM(amount)");
        }
%>
<%    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<br/>

<br/>


<center>

    <h1 style="font-family:Comic Sans MS">
        <b>ManoBran Enterprises</b>  <br/>
        Profit Statement <br/>
    </h1>

    <table id="customer">
        <th>DESCRIPTION</th>
        <th>NOTES</th>
        <th id="amount1" >AMOUNT (LKR)</th>
        <th id="amount2">AMOUNT (LKR)</th>
        <tr>
            <td>
                <p>
                    SALES
                </p>
            </td>



            <td>

            </td>
            <td>

            </td>
            <td id="salesVal">
                <%=sales%>
            </td>
        </tr>

        <tr>
            <td>
                <p>
                    COST OF SALES
                </p>
            </td>



            <td>

            </td>
            <td>

            </td>
            <td id="cosVal" style="border-bottom: 1px solid #000">
                ( <%=costOfSales%> )
            </td>

        </tr>

        <tr>
            <td>
                <p>
                    GROSS PROFIT
                </p>
            </td>

            <td>

            </td>
            <td>

            </td>
            <td id="gpVal">
                <%=grossProfit%>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    OTHER INCOME
                </p>
            </td>



            <td>
                <div class="w3-container">

                    <button onclick="document.getElementById('id01').style.display = 'block'" class="w3-button w3-black">Note 01</button>

                    <div id="id01" class="w3-modal">
                        <div class="w3-modal-content">
                            <div class="w3-container">
                                <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
                                <center>
                                    <p style="background-color: green;color: white">Note 01 - Other Income</p>
                                    <table>
                                        <tr>
                                            <th>
                                                Description
                                            </th>
                                            <th id="amount3" >
                                                Amount LKR
                                            </th>
                                        </tr>
                                        <tr>
                                            <td >
                                                Rent income
                                            </td>
                                            <td id="rentIval">
                                                <%=rentIncome%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                Dividend
                                            </td>
                                            <td id="dividendVal">
                                                <%=dividendIncome%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Interest Income
                                            </td>
                                            <td id="interestVal">
                                                <%=interestIncome%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Sale of assets
                                            </td>
                                            <td id="soaVal" >
                                                <%=saleOfAssetsIncome%>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>


            </td>
            <td>

            </td>
            <td id="oiVal" style="border-bottom: 1px solid #000">
                <%=otherIncome%>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td id="gpVal" >
                <%=gpoi%>
            </td>
        </tr>
        <tr>
            <td style="background-color: #123524;color: white ">
                EXPENSES
            </td>
        </tr>

        <tr>
            <td>
                Salaries
            </td>
            <td>

            </td>
            <td id="salVal">
                <%=expenseSalaries%>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #000">
                Petty Expenses
            </td>
            <td style="border-bottom: 1px solid #000">
                <div class="w3-container">

                    <button onclick="document.getElementById('id02').style.display = 'block'" class="w3-button w3-black">Note 02</button>

                    <div id="id02" class="w3-modal">
                        <div class="w3-modal-content">
                            <div class="w3-container">
                                <span onclick="document.getElementById('id02').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
                                <center>
                                    <p style="background-color: green;color: white">Note 02- Petty Expenses</p>
                                    <table>
                                        <tr>
                                            <th>
                                                Expense Type
                                            </th>
                                            <th>
                                                Amount
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Electricity
                                            </td>
                                            <td id="electricityVal">
                                                <%=electricityExpense%> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Telephone 
                                            </td>
                                            <td id="telephoneVal">

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Cleaning
                                            </td>
                                            <td id="cleaningVal">

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Insurance
                                            </td>
                                            <td id="insVal" >

                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="waterVal" >
                                                Water
                                            </td>
                                            <td>
                                                <%=waterExpense%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other
                                            </td>
                                            <td id="otherVal" >

                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>

            </td>
            <td id="pettyVal" style="border-bottom: 1px solid #000">
                <%=expensePetty%>
            </td>
            <td id="totalExpVal" style="border-bottom: 1px solid #000">
                ( <%=totalExp%> )
            </td>
        </tr>
        <tr>
            <td>
                Profit Before Tax
            </td>
            <td>

            </td>
            <td>

            </td>
            <td id="pbtVal" >
                <%=pbt%>
            </td>
        </tr>

        <tr>
            <td>
                Income Tax
            </td>
            <td>

            </td>
            <td>

            </td>
            <td id="incomeTaxVal" >
                (<%=expenseIncomeTax%>)
            </td>
        </tr>
        <tr>
            <%
                if (pat > 0) {
            %>
            <td  style="background-color: #4CAF50;color: white">
                Profit After Tax
            </td>
            <%
            } else {

            %>
            <td style="background-color: red;color: white">
                Loss after Tax
            </td>
            <%}
            %>
            <td>

            </td>
            <td>

            </td>
            <td id="patVal">

                <%=pat%>
            </td>
        </tr>


    </table>


</center>


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

