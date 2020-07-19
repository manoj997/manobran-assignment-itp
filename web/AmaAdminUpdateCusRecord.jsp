<%-- 
    Document   : AmaAdminUpdateCusRecord
    Created on : Aug 27, 2018, 4:30:23 AM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBConfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
        
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">
    </head>
    <body>
        <br>
        <header>
            <center>
                <img src="img/1.png" style="width: 200px">
            </center>
        </header>
        <br>
        
        <div class="topnav" id="myTopnav">
            <a href="AmaAdminHome.jsp" class="active">Home</a>
            <a href="AmaAdminServices1.jsp">Services</a>
            <a href="AmaAdminMeetTheTeam1.jsp">Meet the Team</a>
            
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <br>
        <br>
        
         <% 
           String CustId = request.getParameter("CustId");
            
           Statement st = conn.createStatement();
           String query = "select * from customer where CustId = "+CustId+"";
           
           ResultSet rs = st.executeQuery(query); 
         %>
          
         <center>
       
            <form  action ="AmaAdminCusFinalUpdate.jsp" method="post"> 
                <table>
                    <% while (rs.next()) { %>
            <tr>
                <td>
                    <input type="hidden" name="userID" value="<%=CustId%>">
                </td>
            </tr>
            <tr>
                <td>
                    First Name &nbsp;
                </td>
                <td>
                    <input type="text" name="first" value="<%=rs.getString("First_Name") %>">
                </td>
            </tr>
            <tr>
                <td>
                    Last Name &nbsp;
                </td>
                <td>
                    <input type="text" name="last" value="<%=rs.getString("Last_Name") %>">
                </td>
            </tr>
            <tr>
                <td>
                    Address_1 &nbsp;
                </td>
                <td>
                    <input type="text" name="add1" value="<%=rs.getString("Address_1") %>">
                </td>
            </tr>
            <tr>
                <td>
                    Address_2 &nbsp;
                </td>
                <td>
                    <input type="text" name="add2" value="<%=rs.getString("Address_2") %>">
                </td>
            </tr>
            <tr>
                <td>
                    City &nbsp;
                </td>
                <td>
                    <input type="text" name="city" value="<%=rs.getString("City") %>">
                </td>
            </tr>
             <tr>
                <td>
                    State/Province &nbsp;
                </td>
                <td>
                    <input type="text" name="province" value="<%=rs.getString("Province") %>">
                </td>
            </tr>
             <tr>
                <td>
                     Postal Code &nbsp;
                </td>
                <td>
                    <input type="text" name="pcode" value="<%=rs.getString("Postal_Code") %>">
                </td>
            </tr>
             <tr>
                <td>
                    Contact No &nbsp;
                </td>
                <td>
                    <input type="text" name="contact" value="<%=rs.getString("Contact_No") %>">
                </td>
            </tr>
            <tr>
                <td>
                   Email &nbsp;
                </td>
                <td>
                    <input type="text" name="email" value="<%=rs.getString("Email") %>">
                </td>
            </tr>
        </table>
                <center>
            <input type="hidden" value="<%=rs.getString("CustId") %>"
                <center><input type="submit" class="button1" value="Update"></center>
             
                </center>
      <% } %>
        
    </form>
    </center>
         
        <br>
        <br>
        <br>
        
        <footer class="foot">
            <div style="float:left">
            ManoBran Enterprises </br>
            No.310 , Galle Road,</br>
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

