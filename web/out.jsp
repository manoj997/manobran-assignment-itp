<%-- 
    Document   : out
    Created on : Sep 29, 2018, 2:23:07 AM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="getDate()" bgcolor="#E6E6FA">
        <script>
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
        </script>
         <%!
            String name;
            String  date;
            String empId;
        %>
        <%
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manobran", "root", "");
                empId = request.getParameter("emp_no");
                Statement stName = con.createStatement();
                String getName = "SELECT Name FROM employee WHERE Eno=" + empId + "";
                ResultSet rsName = stName.executeQuery(getName);

                while (rsName.next()) {
                    name = rsName.getString("Name");
                }
        %>
        <form method="get" action="Checkout">
                    
    <center>
        <h1>Check Out Employee <%=name%> </h1>
    
<%
            Statement stDate=con.createStatement();
            String getDate="SELECT Date FROM attendence WHERE Eno="+empId+" ";
            ResultSet rsDate=stDate.executeQuery(getDate);
            while(rsDate.next()){
            
                date=rsDate.getString("Date");
            }
            %>
            <table>
            <tr><td>Employee ID: </td><td><input type="text" value="<%=empId%>" name="emp_id" readonly></td></tr>
            <tr><td>Check In: </td><td><input type="text" value="<%=date%>" name="Indate" readonly></td></tr>
            <tr><td>Check Out: </td><td><input type="text" id="date" name="date"></td></tr>
            </table><br>
            <input type="submit" value="Check Out">
            
    <%
        
            } catch (SQLException e) {
                e.printStackTrace();
            }
%>
  
        </form>  
        </center>
    </body>
</html>
