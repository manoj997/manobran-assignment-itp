<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Attendence Page</title>
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
                var eno = document.forms["filter"]["eno"].value;
                
                if(eno==="" || eno===null){
                    alert('Please enter Employee number');
                    return false;
                }
            }
        </script>
        <br/>
        <br/>
        
        
        <div align="center">
            <form method="get" action="AttendShowResult.jsp" name="filter">
                <table>
                    <tr><td>Filter employee by number: </td><td><input type="text" name="eno"></td><td><input type="submit" value="Search" onclick="return regValidate()"></td></tr>
                </table>
            </form>
            <h1> Employee Attendence</h1>
                <table width="50%" border="5%">
                    <tr>
                        <th>Name</th>
                        <th>Eno</th>
                        <th>Date & Time</th>
                        <th>Check Out </th>
                    </tr>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");  
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
                            Statement stmt=con.createStatement();  
                            ResultSet rs=stmt.executeQuery("select e.Name,e.Eno,a.CheckIn,a.CheckOut from employee e,fullattendence a where e.Eno=a.Eno");  
                            while(rs.next()){
                     %>

        
                    <tr>
                        <td><%=rs.getString("e.Name") %></td>
                        <td><%=rs.getString("e.Eno") %></td>
                        <td><%=rs.getString("a.CheckIn") %></td>
                        <td><%=rs.getString("a.CheckOut") %></td>


                    </tr>
                    
                    <% }con.close();  
                        }catch(Exception e)
                            { System.out.println(e);}  
                    %>
                </table>
                <br>
                        <a href="EmpMain.jsp"><b>Go Back</b></a>

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