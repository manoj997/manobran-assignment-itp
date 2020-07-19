<%-- 
    Document   : CustomerDetailsEdit
    Created on : Aug 26, 2018, 10:47:29 AM
    Author     : TOSHIBA
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
	String id=request.getParameter("id");
	String url="jdbc:mysql://localhost:3306/manobran";  
	String username="root";  
	String password=""; 

	try {		
			Class.forName("com.mysql.jdbc.Driver");
		} 

	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">

        <script>
            function regValidate(){
                var cusid = document.forms["RegForm"]["cusid"].value;
                var fname = document.forms["RegForm"]["fname"].value;
                var lname = document.forms["RegForm"]["lname"].value;
                var address = document.forms["RegForm"]["address"].value;
                var email = document.forms["RegForm"]["email"].value;
                var fixed = document.forms["RegForm"]["fixed"].value;
                var phone = document.forms["RegForm"]["phone"].value;
                
                
             
                 if(cusid==="" || cusid===null){
                    alert('Please enter your Customer ID');
                    return false;
                }
                if(fname==="" || fname===null){
                    alert('Please enter your first name');
                    return false;
                }
                if(lname==="" || lname===null){
                    alert('Please enter your last name');
                    return false;
                }
                if(address==="" || address===null){
                    alert('Please enter your home address');
                    return false;
                }
                if(email==="" || email===null){
                    alert('Please enter the email');
                    return false;
                }
                if(fixed==="" || fixed===null){
                    alert('Please enter the name of the Phone No');
                    return false;
                }
                if(phone==="" || phone===null){
                    alert('Please enter the postal code');
                    return false;
                }
               
            }
        </script>
</head>
<body>
        <header>
            <center>
                <img src="img/1.png" style="width: 150px">
            </center>

        </header>


        <div class="topnav" id="myTopNav">
            <a href="admin_dashboard.jsp" >Dashboard</a>
            <a href="admin_accounts_main.jsp" >Accounts</a>

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
            <a href="ViewFeedback.jsp">Feedbacks</a>
            <a href="TailoringMain.jsp" class="active">Tailoring</a>
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
      
<center>
            <form name="RegForm" method="POST" action="ExistCustomerHandler">
              <%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM register_user WHERE CusID='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>Edit Exist Tailoring Customer</b></p>
                
                <table border="0">
                    <tbody>
                       
                        <tr>
                            <td>Customer ID &nbsp;</td>
                            <td>
                                <input type="text" name="cusid" value="<%=resultSet.getString("CusID") %>" size="30" />
                            </td>
                        </tr>
                        <tr>
                            <td>First Name &nbsp;</td>
                            <td>
                                <input type="text" name="fname" value="<%=resultSet.getString("Fname") %>" size="30" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name &nbsp;</td>
                            <td>
                                <input type="text" name="lname" value="<%=resultSet.getString("Lname") %>" size="30" />
                            </td>
                        </tr>
                        <tr>
                            <td>Address &nbsp;</td>
                            <td>
                                <input type="text" name="address" value="<%=resultSet.getString("Address") %>" size="30" /> 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Email &nbsp;</td>
                            <td>
                                <input type="text" name="email" value="<%=resultSet.getString("Email") %>" />
                            </td>
                        </tr>
                        <tr>
                            <td>Fixed Number &nbsp;</td>
                            <td>
                                <input type="text" name="fixed" maxlength="10"  size="30" value="<%=resultSet.getString("Fixed_No") %>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile Number &nbsp;</td>
                            <td>
                                <input type="text" name="fixed" maxlength="10"  size="30" value="<%=resultSet.getString("Mobile_No") %>"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <br>
                
                <button class="button1" type="submit" onclick="return regValidate()" >Make Order </button> &nbsp;&nbsp;&nbsp;&nbsp;
             
                
                <br>
                           <% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
            </form>
            </center>

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

