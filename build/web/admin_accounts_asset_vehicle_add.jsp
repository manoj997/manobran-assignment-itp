<%-- 
    Document   : admin_accounts_asset_vehicle_add
    Created on : Sep 15, 2018, 11:00:44 AM
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

        <script>

        </script>
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
            function validateVehicle() {
                var manufacture = document.forms["AddVehicle"]["make"].value;
                var model = document.forms["AddVehicle"]["model"].value;
                var type = document.forms["AddVehicle"]["type"].value;
                var initial = document.forms["AddVehicle"]["init_value"].value;
                var regNo = document.forms["AddVehicle"]["regNo"].value;
                var year = document.forms["AddVehicle"]["year"].value;

                if (manufacture === null || manufacture === "") {
                    alert('Enter Manufacturer Name');
                    return false;
                } else if (model === null || model === "") {
                    alert('Enter the Model Name');
                    return false;
                } else if (year === null || year === "") {
                    alert('Enter a year');
                    return false;
                } else if (year < 1990 || year > 2019) {
                    alert('Please enter a valid year');
                    return false;
                } else if (type === null || type === "") {
                    alert('Enter the Type');
                    return false;
                } else if (initial === null || initial === "") {
                    alert('Enter the Initial Value');
                    return false;
                } else if (regNo === null || regNo === "") {
                    alert('Enter the Register Number');
                    return false;
                }
            }
        </script>
        <br/>
        <br/>
        <%            try {
                String make = request.getParameter("make");
                String model = request.getParameter("model");
                String yearInString = request.getParameter("year");
                String type = request.getParameter("type");
                String valueInString = request.getParameter("init_value");
                String regNo = request.getParameter("regNo");

                //int year = Integer.parseInt(yearInString);
                //int value = Integer.parseInt(valueInString);

                Statement vehicle = conn.createStatement();
                String query = "INSERT INTO asset_vehicle(make,model,year,type,initialValue,regNo) VALUES ('" + make + "','" + model + "','" + yearInString + "','" + type + "','" + valueInString + "','" + regNo + "') ";
                int result = vehicle.executeUpdate(query);

                if (result > 0) {
                   //DO NOTHING
                } else {
                    out.println("operation failed");
                }
            } catch (SQLException s) {
                s.printStackTrace();

            }
        %>

    <center>
        <h1>Add a Vehicle</h1>
        
        <form action="admin_accounts_asset_vehicle_add.jsp" name="AddVehicle">
            <table>
                <tr>
                    <td>Manufacturer  </td>
                    <td><input type="text" name="make"></td>
                </tr>
                <tr>
                    <td>Model  </td>
                    <td><input type="text" name="model"></td>
                </tr>
                <tr>
                    <td>year</td>
                    <td>

                        <input type="number" name="year" min="1970" max="2018" step="1"/> 
                    </td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><input type="text" name="type"></td>
                </tr>
                <tr>
                    <td>Initial Value</td>
                    <td><input type="text" name="init_value"></td>
                </tr>
                <tr>
                    <td>Register No</td>
                    <td><input type="text" name="regNo"></td>
                </tr>
            </table>
            <br>
            <input type="submit" class="button" style="width: 5%" onclick="return validateVehicle()">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" style="background-color: red; width: 5%" type="reset">
        </form>
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

</body>
</html>
