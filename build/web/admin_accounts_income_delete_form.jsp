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

            <a href="Promotions.jsp">Suppliers & Purchases</a>

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
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
        <br/><br/><br/><br/><br/>

        <%            
            try {
                String incId = request.getParameter("income_id");
                Statement st = conn.createStatement();
                String query = "SELECT * FROM income WHERE income_id=" + incId + " ";
                ResultSet rs = st.executeQuery(query);

        %>
    <center>
        <% while (rs.next()) {%>
        <h1>Delete : <%=rs.getString("income_name")%> on <%=rs.getString("date")%></h1>
        <form action="admin_accounts_income_delete_finalPrompt.jsp?income_id=<%=rs.getString("income_id")%>" method="POST">
            <table id="customer">
                <tbody>

                    <tr>
                        <td>
                            Income ID
                        </td>
                        <td>
                            <%=rs.getString("income_id")%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Income Name
                        </td>
                        <td>
                            <%=rs.getString("income_name")%>    
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Amount
                        </td>
                        <td>
                            <%=rs.getString("amount")%>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Date
                        </td>
                        <td>
                            <%=rs.getString("date")%>

                        </td>
                    </tr>
                    <tr>
                        <td>Income Type</td>
                        <td>        
                            <%=rs.getString("income_type")%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Do you wish to delete this account?</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="reset" class="button1" ><a href="admin_accounts_income_delete.jsp">Go back</a></button>
                        </td>
                        <td>
                            
                            <button type="submit" class="button2"  >Delete</button>
                        </td>
                        
                    </tr>
                </tbody>

            </table>
            <%  }
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



</body>
</html>