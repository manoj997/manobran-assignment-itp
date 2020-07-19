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


          <div align="center">
        <h1>Search Vehicle</h1>
        <form method="get" action="asset_search" name="filter">
            <table>
                <tr><td><b>Enter Vehicle Make or  Registration Number: </b></td><td><input type="text" name="make" id="id"/></td></tr>
            </table>
            <input type="submit" value="search" onclick="return regValidate()">
        </form><br>       
       
        </div>
        <br/>
        <br/>

    <center>
        <h1><b>Mano Bran Enterprises</b><br>Asset Statement</h1>
        <table id="customer">


            <th>
                BUILDING ID
            </th>
            <th>
                REGISTRATION NUMBER
            </th>
            <th>
                INITIAL VALUE
            </th>
            <th>
                ADDRESS
            </th>
            <%                    try {
                        Statement stb = conn.createStatement();
                        String build = "SELECT * FROM asset_building";
                        ResultSet rsb = stb.executeQuery(build);

                        while (rsb.next()) {
                %>
            <tr>
                
                <td>
                    <%=rsb.getInt("buildingId")%>
                </td>
                <td>
                    <%=rsb.getString("regNo")%>
                </td>
                <td>
                    <%=rsb.getInt("initialValue")%>
                </td>
                <td>
                    <%=rsb.getString("address")%>
                </td>
                <%}%>

            </tr>
            <%
                Statement stbsum = conn.createStatement();
                String buildsum = "SELECT SUM(initialValue) FROM asset_building";
                ResultSet rsbs = stbsum.executeQuery(buildsum);

                while (rsbs.next()) {
            %>
            <tr>
                <td>
                    total value of building
                </td>
                <td> </td>
                <td>
                    <%=rsbs.getInt("SUM(initialValue)")%>
                </td>
            </tr>
            <%}%>
             <tr>
                <td>
                    Want to add a building? 
                </td>
                <td>
                    <a  href="admin_accounts_asset_building_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
                
            </tr>
        </table>
        <br>
        
        
        
        
        <table id="customer">
            <th>
                VEHICLE ID
            </th>
            <th>
                MAKE
            </th>
            <th>
                MODEL
            </th>
            <th>
                YEAR
            </th>
            <th>
                TYPE
            </th>
            <th>
                INITIAL VALUE
            </th>
            <th>
                REGISTRATION NUMBER
            </th>
            <tr>
                <%

                    Statement stv = conn.createStatement();
                    String vehicle = "SELECT * FROM asset_vehicle";
                    ResultSet rsv = stv.executeQuery(vehicle);

                    while (rsv.next()) {
                %>
                <td>
                    <%=rsv.getInt("vehicleId")%>
                </td>
                <td>
                    <%=rsv.getString("make")%>
                </td>
                <td>
                    <%=rsv.getString("model")%>
                </td>
                <td>
                    <%=rsv.getInt("year")%>
                </td>

                <td>
                    <%=rsv.getString("type")%>
                </td>
                <td>
                    <%=rsv.getInt("initialValue")%>
                </td>
                <td>
                    <%=rsv.getString("regNo")%>
                </td>
            </tr>
            <%}
                Statement stvsum = conn.createStatement();
                String vehiclesum = "SELECT SUM(initialValue) FROM asset_vehicle";
                ResultSet rsvs = stvsum.executeQuery(vehiclesum);

                while (rsvs.next()) {
            %>
            <tr>
                <td>
                    total value of vehicles
                </td>
                <td> </td> <td> </td> <td> </td> <td> </td>
                <td>
                    <%=rsvs.getInt("SUM(initialValue)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a vehicle? 
                </td>
                <td>
                    <a  href="admin_accounts_asset_vehicle_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
            
           
            
           <table id="customer">
            <th>
                Machine ID
            </th>
            <th>
                INITIAL VALUE
            </th>
            <th>
                Type
            </th>
            <tr>
                <%

                    Statement stm = conn.createStatement();
                    String machine = "SELECT * FROM asset_machines";
                    ResultSet rsm = stm.executeQuery(machine);

                    while (rsm.next()) {
                %>
                <td>
                    <%=rsm.getInt("machineryId")%>
                </td>
                <td>
                    <%=rsm.getInt("initialValue")%>
                </td>
                <td>
                    <%=rsm.getString("type")%>
                </td>
            </tr>
            <%}
                Statement stmsum = conn.createStatement();
                String machinesum = "SELECT SUM(initialValue) FROM asset_machines";
                ResultSet rsms = stmsum.executeQuery(machinesum);

                while (rsms.next()) {
            %>
            <tr>
                <td>
                    total value of machines
                </td>
                
                <td>
                    <%=rsms.getInt("SUM(initialValue)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a machine? 
                </td>
                <td>
                    <a  href="admin_accounts_asset_machine_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
            
            
            
            <table id="customer">
            <th>
                Land ID
            </th>
            <th>
                INITIAL VALUE
            </th>
            <th>
                Perches
            </th>
            <th>
                Address
            </th>
            <th>
                Registration Number
            </th>
            <tr>
                <%

                    Statement stl = conn.createStatement();
                    String land = "SELECT * FROM asset_land";
                    ResultSet rsl = stl.executeQuery(land);

                    while (rsl.next()) {
                %>
                <td>
                    <%=rsl.getInt("landId")%>
                </td>
                <td>
                    <%=rsl.getInt("initialValue")%>
                </td>
                <td>
                    <%=rsl.getFloat("perches")%>
                </td>
                <td>
                    <%=rsl.getString("address")%>
                </td>
                <td>
                    <%=rsl.getString("regNo")%>
                </td>
            </tr>
            <%}
                Statement stlsum = conn.createStatement();
                String landsum = "SELECT SUM(initialValue) FROM asset_land";
                ResultSet rsls = stlsum.executeQuery(landsum);

                while (rsls.next()) {
            %>
            <tr>
                <td>
                    total value of land
                </td>
                <td>
                    <%=rsls.getInt("SUM(initialValue)")%>
                </td>
            </tr>
            <%}%>
            <tr>
                <td>
                    Want to add a land? 
                </td>
                <td>
                    <a  href="admin_accounts_asset_land_add.jsp" style="text-decoration: none">
                        <button class="button1" >Yes</button>
                    </a>
                </td>
            </tr>
            
            
            <%

                } catch (SQLException e) {
                    e.printStackTrace();
                }

            %>
           
        </table>
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
