<%-- 
    Document   : EmpPer
    Created on : Aug 11, 2018, 10:33:03 PM
    Author     : User
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EmpPer</title>
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

            <a href="employees.jsp" class="active">Employees</a>
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
                var eno = document.forms["emp"]["eno"].value;
                var bsal = document.forms["emp"]["bsal"].value;
                var oth = document.forms["emp"]["oth"].value;
                var otr = document.forms["emp"]["otr"].value;
                
                
                if(eno==="" || eno===null){
                    alert('Please enter Employee number');
                    return false;
                }
                if(bsal==="" || bsal===null){
                    alert('Please enter basic salary');
                    return false;
                }
                if(oth==="" || oth===null){
                    alert('Please enter OT hours');
                    return false;
                }
                if(otr==="" || otr===null){
                    alert('Please enter OT rate');
                    return false;
                }          
            }
        </script>
        <br/>
        <br/>
        <body>
        <div align="center">
            <h2>Calculate salary for <i><u>permanent</u></i> Employee </h2>
        <form method="get" action="PerEmp" name="emp">
        <table border="3%">
            <tr><td>   Employee Number: </td><td><input type="text" name="eno"></td></tr>
            <tr><td>   Basic Salary: </td><td><input type="text" name="bsal"></td></tr>
            <tr><td>   OT Hours: </td><td><input type="text" name="oth"></td></tr>
            <tr><td>   OT Rate: </td><td><input type="text" name="otr"></td></tr>
        </table>
            <input type="submit" value="Submit" onclick="return regValidate()"><br>
        </form>
        <br>
        <a href="selectEmp.jsp"><b>Go Back</b></a>
        </div>
            <div align="center">
            <h2>Permanent  Employee Numbers</h2>
                <table width="20%" border="5%">
                    <tr>
                        <th>Name</th>
                        <th>Eno</th>
                        
                    </tr>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");  
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
                            Statement stmt=con.createStatement();  
                            ResultSet rs=stmt.executeQuery("select Name,Eno from employee where Status='Permanent' or Status='permanent'");  
                            while(rs.next()){
                     %>

        
                    <tr>
                        <td align="center"><%=rs.getString("Name") %></td>
                        <td align="center"><%=rs.getString("Eno") %></td>
                    </tr>
                    
                    <% }con.close();  
                        }catch(Exception e)
                            { System.out.println(e);}  
                    %>
                </table>
            <br><br>

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
