<%-- 
    Document   : accounts
    Created on : Aug 2, 2018, 7:06:45 PM
    Author     : Manoj Kumar
--%>
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
        </script>
        <br/>
        <br/>
        <%            try {
                Statement st = conn.createStatement();
                String query = "SELECT * FROM income";
                ResultSet rs = st.executeQuery(query);
        %>
    <center>
        <table id="customer">
            
            <thead>
                <tr>
                    <th>Income ID</th>
                    <th>Income Name</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Income Type</th>
                    <th>Delete Status</th>
                </tr>
                <%while (rs.next()) {%>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <%=rs.getString("income_id")%>
                    </td>
                    <td>
                        <%=rs.getString("income_name")%>
                    </td>
                    <td>
                        <%=rs.getString("amount")%>
                    </td>
                    <td>
                        <%=rs.getString("date")%>
                    </td>
                    <td>
                        <%=rs.getString("income_type")%>
                    </td>
                    <td>
                        <a href="admin_accounts_income_delete_form.jsp?income_id=<%=rs.getString("income_id")%>" style="text-decoration: none;">Delete</a>
                    </td>
                </tr>
                <%}
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
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
                <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="img/fb1.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="img/insta.png" width="50px"> </a> &nbsp;&nbsp;
                <a href="" style="text-decoration:none"> <img src="img/twitter1.png" width="50px"> </a>
            </div>
        </footer>

    </body>
</html>