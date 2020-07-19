<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="DBConfig.jsp" %>
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
            <a href="HomePage.jsp" >Dashboard</a>
            <a href="AboutUs.jsp" class="active">Accounts</a>

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

            <a href="employees.jsp">Employees</a>
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
        <br/>
        
        <center>
            <h1><b>Mano Bran Enterprises</b><br>Income-Expence Statement</h1>
        
            
            
            <table id="customer">
            <th>
                DIVIDEND INCOME ID
            </th>
            <th>
                AMOUNT
            </th>
            <th>
                DATE
            </th>
            <th>
               REMARKS
            </th>
            <%                   
                try {
                        Statement std = conn.createStatement();
                        String dividence = "SELECT * FROM income_dividend";
                        ResultSet rsd = std.executeQuery(dividence);

                        while (rsd.next()) {
                %>
            <tr>
                
                <td>
                    <%=rsd.getInt("dividendincome_id")%>
                </td>
                <td>
                    <%=rsd.getString("amount")%>
                </td>
                <td>
                    <%=rsd.getDate("date")%>
                </td>
                <td>
                    <%=rsd.getString("remarks")%>
                </td>
                <%}%>

            </tr>
            <%
                Statement stdsum = conn.createStatement();
                String dividendsum = "SELECT SUM(amount) FROM income_dividend";
                ResultSet rsds = stdsum.executeQuery(dividendsum);

                while (rsds.next()) {
            %>
            <tr>
                <td>
                    total amount of Dividend
                </td>
                
                <td>
                    <%=rsds.getInt("SUM(amount)")%>
                </td>
            </tr>
            <%}%>
             <tr>
                <td>
                    Want to add a dividend? 
                </td>
                <td>
                    <a  href="admin_accounts_income_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
        </table>
        
     
        
             
        <table id="customer">
            <th>
                INTEREST INCOME ID
            </th>
            <th>
                AMOUNT
            </th>
            <th>
                DATE
            </th>
           
            <tr>
                <%

                    Statement sti = conn.createStatement();
                    String interest = "SELECT * FROM income_interestincome";
                    ResultSet rsi = sti.executeQuery(interest);

                    while (rsi.next()) {
                %>
                <td>
                    <%=rsi.getInt("interest_income_id")%>
                </td>
                <td>
                    <%=rsi.getInt("amount")%>
                </td>
                <td>
                    <%=rsi.getString("date")%>
                </td>
            </tr>
            <%}
                Statement stisum = conn.createStatement();
                String interestsum = "SELECT SUM(amount) FROM income_interestincome";
                ResultSet rsis = stisum.executeQuery(interestsum);

                while (rsis.next()) {
            %>
            <tr>
                <td>
                    total amount of Interest_Income
                </td>
                 
                <td>
                    <%=rsis.getInt("SUM(amount)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add an interest? 
                </td>
                <td>
                    <a  href="admin_accounts_income_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
            
       
            
           <table id="customer">
            <th>
               RENT INCOME ID
            </th>
            <th>
                AMOUNT
            </th>
            <th>
                DATE
            </th>
            <tr>
                <%

                    Statement str = conn.createStatement();
                    String rent = "SELECT * FROM income_rent";
                    ResultSet rsr = str.executeQuery(rent);

                    while (rsr.next()) {
                %>
                <td>
                    <%=rsr.getInt("rentincome_id")%>
                </td>
                <td>
                    <%=rsr.getInt("amount")%>
                </td>
                <td>
                    <%=rsr.getDate("date")%>
                </td>
            </tr>
            <%}
                Statement strsum = conn.createStatement();
                String rentsum = "SELECT SUM(amount) FROM income_rent";
                ResultSet rsrs = strsum.executeQuery(rentsum);

                while (rsrs.next()) {
            %>
            <tr>
                <td>
                    total amount of Rent_Income
                </td>
                
                <td>
                    <%=rsrs.getInt("SUM(amount)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a rent income? 
                </td>
                <td>
                    <a  href="admin_accounts_income_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
           </table>
            
            
            <table id="customer">
            <th>
               SALES ID
            </th>
            <th>
                ORDER ID
            </th>
            <th>
                AMOUNT
            </th>
            <th>
                DATE
            </th>
            <tr>
                <%

                    Statement stsa = conn.createStatement();
                    String salesIn = "SELECT * FROM income_sales";
                    ResultSet rssa = str.executeQuery(salesIn);

                    while (rssa.next()) {
                %>
                <td>
                    <%=rssa.getInt("salesincome_id")%>
                </td>
                <td>
                    <%=rssa.getInt("orderId")%>
                </td>
                <td>
                    <%=rssa.getInt("amount")%>
                </td>
                <td>
                    <%=rssa.getDate("date")%>
                </td>
            </tr>
            <%}
                Statement stsasum = conn.createStatement();
                String salesInsum = "SELECT SUM(amount) FROM income_sales";
                ResultSet rssas = stsasum.executeQuery(salesInsum);

                while (rssas.next()) {
            %>
            <tr>
                <td>
                    total amount of Sales_Income
                </td>
                
                <td>
                    <%=rssas.getInt("SUM(amount)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a sales income? 
                </td>
                <td>
                    <a  href="admin_accounts_income_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
           </table>
            
            <table id="customer">
            <th>
               SalesOfAssets INCOME ID
            </th>
            <th>
                AMOUNT
            </th>
            <th>
                DATE
            </th>
            <tr>
                <%

                    Statement sts = conn.createStatement();
                    String sales = "SELECT * FROM income_saleofassets";
                    ResultSet rss = str.executeQuery(sales);

                    while (rss.next()) {
                %>
                <td>
                    <%=rss.getInt("saleofasset_income_id")%>
                </td>
                <td>
                    <%=rss.getInt("amount")%>
                </td>
                <td>
                    <%=rss.getDate("date")%>
                </td>
            </tr>
            <%}
                Statement stssum = conn.createStatement();
                String salessum = "SELECT SUM(amount) FROM income_saleofasset";
                ResultSet rsss = strsum.executeQuery(salessum);

                while (rsss.next()) {
            %>
            <tr>
                <td>
                    total amount of SalesOfAssets_Income
                </td>
                
                <td>
                    <%=rsss.getInt("SUM(amount)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a sale of asset income? 
                </td>
                <td>
                    <a  href="admin_accounts_income_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
           </table>
                
            <%

                } catch (SQLException e) {
                    e.printStackTrace();
                }

            %>
           
        </table>
        </center>




        
        
        <br/>
        
          
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