<%-- 
    Document   : addEmp
    Created on : May 17, 2018, 2:59:44 PM
    Author     : User
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendence Page</title>
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
    </head>
    <body onload="getDate()" >
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
            function getDate(){
                var todaydate = new Date();
                var day = todaydate.getDate();
                var month = todaydate.getMonth() + 1;
                var year = todaydate.getFullYear();
                var datestring = day + "/" + month + "/" + year+ " @ "  
                    + todaydate.getHours() + ":"  
                    + todaydate.getMinutes() + ":" 
                    + todaydate.getSeconds();
                document.getElementById("date").value = datestring;
            } 
            function regValidate(){
                var eno = document.forms["attend"]["eno"].value;
                var date = document.forms["attend"]["date"].value;                
                
                if(eno==="" || eno===null){
                    alert('Please enter Employee number');
                    return false;
                }
                if(date==="" || date===null){
                    alert('Please enter date and time');
                    return false;
                }       
            }
  </script>
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

    
        <br/>
        <br/>
   
        <div class="split left" height="100%">
            <div align="center">
        <h1>Mark Attendance</h1>
        <form method="get" action="AttendAdd.jsp" name="attend">
        <table >
            <tr><td>   Employee Number: </td><td><input type="text" name="eno"></td></tr>
            <tr><td>   Date and time : </td><td><input type="text" id="date" name="date"></td></tr>

        </table>
            <input type="submit" value="Submit" onclick="return regValidate()" ><br>
        </form>
        <br>
        <a href="EmpMain.jsp"><b>Go Back</b></a>
        <br>
            </div>
        </div>
        
        
        <div class="split right" height="100%">
            <div align="center">
            <h1> Employee Details</h1>
                <table width="10%" border="1%">
                    <tr>
                        <th>Name</th>
                        <th>Eno</th>
                    </tr>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");  
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran","root","");
            
                            Statement stmt=con.createStatement();  
                            ResultSet rs=stmt.executeQuery("select Name,Eno from employee");  
                            while(rs.next()){
                     %>

        
                    <tr>
                        <td><%=rs.getString("Name") %></td>
                        <td align="center"><%=rs.getString("Eno") %></td>
                    </tr>
                    
                    <% }con.close();  
                        }catch(Exception e)
                            { System.out.println(e);}  
                    %>
                </table><br><br>
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
                            ResultSet rs=stmt.executeQuery("select e.Name,e.Eno,a.Date from employee e,attendence a where e.Eno=a.Eno");  
                            while(rs.next()){
                     %>

        
                    <tr>
                        <td><%=rs.getString("e.Name") %></td>
                        <td><%=rs.getString("e.Eno") %></td>
                        <td><%=rs.getString("a.Date") %></td>
                        <td><a href="out.jsp?emp_no=<%=rs.getString("e.Eno")%>">Check Out</a> </td>


                    </tr>
                    
                    <% }con.close();  
                        }catch(Exception e)
                            { System.out.println(e);}  
                    %>
                </table>
            </div>
        </div>
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