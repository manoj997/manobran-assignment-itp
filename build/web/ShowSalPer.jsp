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
        <title>Show salary Page</title>
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
        </script>
        <br/>
        <br/>
        
      
        <div align="center">
            <h1>Pending Salaries </h1>
                <table width="50%" border="5%">
                    <tr>
                        <th>Name</th>
                        <th>Eno</th>
                        <th>Basic Salary</th>
                        <th>Ot Rate</th>
                        <th>Ot Hours</th>
                        <th>Total Salary</th>
                        <th>Payment</th>
                    </tr>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");  
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
                            Statement stmt=con.createStatement();  
                            ResultSet rs=stmt.executeQuery("select e.Name,e.Eno,p.Basic,p.Otr,p.Othrs,p.Total from employee e,per p where e.Eno=p.Eno");  
                            while(rs.next()){
                     %>

        
                    <tr>
                        <td><%=rs.getString("e.Name") %></td>
                        <td><%=rs.getString("e.Eno") %></td>
                        <td><%=rs.getString("p.Basic") %></td>
                        <td><%=rs.getString("p.Otr") %></td>
                        <td><%=rs.getString("p.Othrs") %></td>
                        <td><%=rs.getString("p.Total") %></td>
                        <td><a href="paySalary.jsp?emp_no=<%=rs.getString("e.Eno")%>">Pay Now</a> </td>

                    </tr>
                    
                    <% }con.close();  
                        }catch(Exception e)
                            { System.out.println(e);}  
                    %>
                </table>
                <br>
                        <a href="ShowSal.jsp"><b>Go Back</b></a>

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
        
    
        
    </body>
</html>