<%-- 
    Document   : updateEmp
    Created on : May 17, 2018, 4:40:32 PM
    Author     : User
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EmpUpdate Page</title>
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
            <a href="AboutUs.jsp">Accounts</a>

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

            <a href="employees.jsp"  class="active">Employees</a>
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
            function regValidate(){
                var name = document.forms["vali"]["name"].value;
                var eno = document.forms["vali"]["eno"].value;
                var contact = document.forms["vali"]["contact"].value;
                var address = document.forms["vali"]["address"].value;
                var nic = document.forms["vali"]["nic"].value;
                var status = document.forms["vali"]["status"].value;
                
                
             
                 if(name==="" || name===null){
                    alert('Please enter Employee Name');
                    return false;
                }
                if(eno==="" || eno===null){
                    alert('Please enter Employee number');
                    return false;
                }
                if(contact==="" || contact===null){
                    alert('Please enter Employee contact number');
                    return false;
                }
                if(address==="" || address===null){
                    alert('Please enter Employee address');
                    return false;
                }
                if(nic==="" || nic===null){
                    alert('Please enter Employee NIC no');
                    return false;
                }
                if(status==="" || status===null){
                    alert('Please enter the Employee status');
                    return false;
                }
               
            }
        </script>
        <br/>
        <br/>
    <body>
        <div align="center">
        <h3> Employee Details</h3>
        <table width="50%" border="5%">
            <tr>
                <th>Name</th>
                <th>Eno</th>
                <th>Mobile</th>
                <th>Address</th>
                <th>NIC</th>
                <th>Status</th>
            </tr>
        <%
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from employee");  
            while(rs.next()){
        %>

        
            <tr>
                <td><%=rs.getString("Name") %></td>
                <td><%=rs.getString("Eno") %></td>
                <td><%=rs.getString("Mobile") %></td>
                <td><%=rs.getString("Address") %></td>
                <td><%=rs.getString("NIC") %></td>
                <td><%=rs.getString("Status") %></td>
            </tr>
        <% }con.close();  
        }catch(Exception e)
           { System.out.println(e);}  
        %>
        </table>
        
        <form method="get" action="UpdateEmpServlet" name="vali">
        <table>
            <tr><h1>Update Employee Details</h1></tr>
            <tr><td>   Employee Name: </td><td><input type="text" name="name"></td></tr>
            <tr><td>   Employee Number: </td><td><input type="text" name="eno"></td></tr>
            <tr><td>   Contact Number: </td><td><input type="text" name="contact"></td></tr>
            <tr><td>   Address: </td><td><input type="text" name="address"></td></tr>
            <tr><td>   NIC: </td><td><input type="text" name="nic"></td></tr>
            <tr><td>   Status: </td><td><select name="status">
                                            <option value="Permanent">Permanent</option>
                                            <option value="Temporary">Temporary</option></td></tr>
        </table>
            <input type="submit" value="Submit" onclick="return regValidate()"><br>
        </form>
        <br><br>
        <a href="EmpMain.jsp"><b>Go Back</b></a>
        </div>
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
