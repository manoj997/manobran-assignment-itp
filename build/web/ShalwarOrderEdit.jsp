<%-- 
    Document   : ShalwarOrderEdit
    Created on : Aug 24, 2018, 4:07:20 PM
    Author     : TOSHIBA
--%>

 <%@ page import="java.sql.*" %>
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
            function ShalwarValidate(){
                
                var chest = document.forms["RegForm"]["chest"].value;
                var shoulder = document.forms["RegForm"]["shoulder"].value;
                var arms = document.forms["RegForm"]["arms"].value;
                var hip = document.forms["RegForm"]["hip"].value;
                var length = document.forms["RegForm"]["length"].value;
                var fneck = document.forms["RegForm"]["fneck"].value;
                var bneck = document.forms["RegForm"]["bneck"].value;
                var plength = document.forms["RegForm"]["plength"].value;
                var ddate = document.forms["RegForm"]["ddate"].value;
                
             
                if(chest==="" || chest===null){
                    alert('Please enter your chest Size');
                    return false;
                }
                if(shoulder==="" || shoulder===null){
                    alert('Please enter your shoulder Size');
                    return false;
                }
                if(arms==="" || arms===null){
                    alert('Please enter your arms size');
                    return false;
                }
                
                 if(hip==="" || hip===null){
                    alert('Please enter your hip size');
                    return false;
                }
                if(length==="" || length===null){
                    alert('Please enter your  length size');
                    return false;
                }
                if(fneck==="" || fneck===null){
                    alert('Please enter your front neck size');
                    return false;
                }
                if(bneck==="" || bneck===null){
                    alert('Please enter your back neck size');
                    return false;
                }
                if(plength==="" || plength===null){
                    alert('Please enter your  Pant length size');
                    return false;
                }
                
                 if(ddate==="" || ddate===null){
                    alert('Please enter your  delivery date');
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
            <form name="RegForm" method="POST" action="ShalwarOrderUpdateHandler">
              
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>Blouse Order</b></p>
               <%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM shalwar_order WHERE OrderID='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%> 
                <table border="0">
         
                    <tbody>
                       
                        <tr>
                            <td>OrderID &nbsp;</td>
                            <td>
                                 <input type="text" name="ordid" size="30" value="<%=resultSet.getString("OrderID") %>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>CusID &nbsp;</td>
                            <td>
                                 <input type="text" name="cusid" size="30" value="<%=resultSet.getString("CusID") %>"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>UserName &nbsp;</td>
                            <td>
                                 <input size="30" type="text" name="fname" value="<%=resultSet.getString("Fname") %>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Design &nbsp;</td>
                            <td>
                                 <select name="design">
                                    <option> <%=resultSet.getString("design") %>  </option>
                                    <option>Design 1</option>
                                    <option>Design 2</option>
                                    <option>Design 3</option>
                                    <option>Design 4</option>
                                </select> 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Chest &nbsp;</td>
                            
                            <td>
                                 <select name="chest">
                                    <option> <%=resultSet.getString("chest") %>  </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                    <option> 21 </option>
                                    <option> 22 </option>
                                    <option> 23 </option>
                                    <option> 24 </option>
                                    <option> 25 </option>
                                    <option> 26 </option>
                                    <option> 27 </option>
                                    <option> 28 </option>
                                    <option> 29 </option>
                                    <option> 30 </option>
                                    <option> 31 </option>
                                    <option> 32 </option>
                                    <option> 33 </option>
                                    <option> 34 </option>
                                    <option> 35 </option>
                                    <option> 36 </option>
                                    <option> 37 </option>
                                    <option> 38 </option>
                                    <option> 39 </option>
                                    <option> 40 </option>
                                    <option> 41 </option>
                                    <option> 42 </option>
                                    <option> 43 </option>
                                    <option> 44 </option>
                                    <option> 45 </option>
                                    <option> 46 </option>
                                    <option> 47 </option>
                                    <option> 48 </option>
                                    <option> 49 </option>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Shoulder &nbsp;</td>
                            
                            <td>
                                 <select name="shoulder">
                                    <option> <%=resultSet.getString("shoulder") %>  </option>
                                    <option> 1 </option>
                                    <option> 2 </option>
                                    <option> 3 </option>
                                    <option> 4 </option>
                                    <option> 5 </option>
                                    <option> 6 </option>
                                    <option> 7 </option>
                                    <option> 8 </option>
                                    <option> 9 </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Arms &nbsp;</td>
                           
                            <td>
                                 <select name="arms">
                                    <option> <%=resultSet.getString("arms") %>  </option>
                                    <option> 1 </option>
                                    <option> 2 </option>
                                    <option> 3 </option>
                                    <option> 4 </option>
                                    <option> 5 </option>
                                    <option> 6 </option>
                                    <option> 7 </option>
                                    <option> 8 </option>
                                    <option> 9 </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Hip &nbsp;</td>
                            
                            <td>
                                 <select name="hip">
                                    <option> <%=resultSet.getString("hip") %>  </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                    <option> 21 </option>
                                    <option> 22 </option>
                                    <option> 23 </option>
                                    <option> 24 </option>
                                    <option> 25 </option>
                                    <option> 26 </option>
                                    <option> 27 </option>
                                    <option> 28 </option>
                                    <option> 29 </option>
                                    <option> 30 </option>
                                    <option> 31 </option>
                                    <option> 32 </option>
                                    <option> 33 </option>
                                    <option> 34 </option>
                                    <option> 35 </option>
                                    <option> 36 </option>
                                    <option> 37 </option>
                                    <option> 38 </option>
                                    <option> 39 </option>
                                    <option> 40 </option>
                                    <option> 41 </option>
                                    <option> 42 </option>
                                    <option> 43 </option>
                                    <option> 44 </option>
                                    <option> 45 </option>
                                    <option> 46 </option>
                                    <option> 47 </option>
                                    <option> 48 </option>
                                    <option> 49 </option>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Length &nbsp;</td>
                            
                            <td>
                                 <select name="length">
                                    <option> <%=resultSet.getString("length") %>  </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                    <option> 21 </option>
                                    <option> 22 </option>
                                    <option> 23 </option>
                                    <option> 24 </option>
                                    <option> 25 </option>
                                    <option> 26 </option>
                                    <option> 27 </option>
                                    <option> 28 </option>
                                    <option> 29 </option>
                                    <option> 30 </option>
                                    <option> 31 </option>
                                    <option> 32 </option>
                                    <option> 33 </option>
                                    <option> 34 </option>
                                    <option> 35 </option>
                                    <option> 36 </option>
                                    <option> 37 </option>
                                    <option> 38 </option>
                                    <option> 39 </option>
                                    <option> 40 </option>
                                    <option> 41 </option>
                                    <option> 42 </option>
                                    <option> 43 </option>
                                    <option> 44 </option>
                                    <option> 45 </option>
                                    <option> 46 </option>
                                    <option> 47 </option>
                                    <option> 48 </option>
                                    <option> 49 </option>
                                    <option> 50 </option>
                                    <option> 51 </option>
                                    <option> 52 </option>
                                    <option> 53 </option>
                                    <option> 54 </option>
                                    <option> 55 </option>
                                    <option> 56 </option>
                                    <option> 57 </option>
                                    <option> 58 </option>
                                    <option> 59 </option>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Front Neck &nbsp;</td>
                           
                            <td>
                                 <select name="fneck">
                                    <option> <%=resultSet.getString("fneck") %>  </option>
                                    <option> 1 </option>
                                    <option> 2 </option>
                                    <option> 3 </option>
                                    <option> 4 </option>
                                    <option> 5 </option>
                                    <option> 6 </option>
                                    <option> 7 </option>
                                    <option> 8 </option>
                                    <option> 9 </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Back Neck &nbsp;</td>
                            
                            <td>
                                 <select name="bneck">
                                    <option> <%=resultSet.getString("bneck") %>  </option>
                                    <option> 1 </option>
                                    <option> 2 </option>
                                    <option> 3 </option>
                                    <option> 4 </option>
                                    <option> 5 </option>
                                    <option> 6 </option>
                                    <option> 7 </option>
                                    <option> 8 </option>
                                    <option> 9 </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Pant Length &nbsp;</td>
                          
                            <td>
                                 <select name="plength">
                                    <option> <%=resultSet.getString("plength") %>  </option>
                                    <option> 10 </option>
                                    <option> 11 </option>
                                    <option> 12 </option>
                                    <option> 13 </option>
                                    <option> 14 </option>
                                    <option> 15 </option>
                                    <option> 16 </option>
                                    <option> 17 </option>
                                    <option> 18 </option>
                                    <option> 19 </option>
                                    <option> 20 </option>
                                    <option> 21 </option>
                                    <option> 22 </option>
                                    <option> 23 </option>
                                    <option> 24 </option>
                                    <option> 25 </option>
                                    <option> 26 </option>
                                    <option> 27 </option>
                                    <option> 28 </option>
                                    <option> 29 </option>
                                    <option> 30 </option>
                                    <option> 31 </option>
                                    <option> 32 </option>
                                    <option> 33 </option>
                                    <option> 34 </option>
                                    <option> 35 </option>
                                    <option> 36 </option>
                                    <option> 37 </option>
                                    <option> 38 </option>
                                    <option> 39 </option>
                                    <option> 40 </option>
                                    <option> 41 </option>
                                    <option> 42 </option>
                                    <option> 43 </option>
                                    <option> 44 </option>
                                    <option> 45 </option>
                                    <option> 46 </option>
                                    <option> 47 </option>
                                    <option> 48 </option>
                                    <option> 49 </option>
                                    <option> 50 </option>
                                    <option> 51 </option>
                                    <option> 52 </option>
                                    <option> 53 </option>
                                    <option> 54 </option>
                                    <option> 55 </option>
                                    <option> 56 </option>
                                    <option> 57 </option>
                                    <option> 58 </option>
                                    <option> 59 </option>
                                    <option> 60 </option>
                                    <option> 61 </option>
                                    <option> 62 </option>
                                    <option> 63 </option>
                                    <option> 64 </option>
                                    <option> 65 </option>
                                    <option> 66 </option>
                                    <option> 67 </option>
                                    <option> 68 </option>
                                    <option> 69 </option>
                                    <option> 70 </option>
                                    <option> 71 </option>
                                    <option> 72 </option>
                                    <option> 73 </option>
                                    <option> 74 </option>
                                    <option> 75 </option>
                                    <option> 76 </option>
                                    <option> 77 </option>
                                    <option> 78 </option>
                                    <option> 79 </option>
                                    <option> 80 </option>
                                    <option> 81 </option>
                                    <option> 82 </option>
                                    <option> 83 </option>
                                    <option> 84 </option>
                                    <option> 85 </option>
                                    <option> 86 </option>
                                    <option> 87 </option>
                                    <option> 88 </option>
                                    <option> 89 </option>
                                    <option> 90 </option>
                                    <option> 91 </option>
                                    <option> 92 </option>
                                    <option> 93 </option>
                                    <option> 94 </option>
                                    <option> 95 </option>
                                    <option> 96 </option>
                                    <option> 97 </option>
                                    <option> 98 </option>
                                    <option> 99 </option>
                                </select> 
                            </td>
                        </tr>
                         <tr>
                            <td>Delivery Date &nbsp;</td>
                            <td>
                                <input type="date" name="ddate" value="<%=resultSet.getString("Ddate") %>"size="30" maxlength="10" />
                            </td>
                        </tr>
                        <tr>
                            <td>Tailoring Fees &nbsp;</td>
                            <td>
                                 <input type="text" name="fees" value="<%=resultSet.getString("Fees") %>" size="30" />
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                
                <br>
                
                <button class="button1" type="submit" onclick="return ShalwarValidate()" >Submit</button> &nbsp;&nbsp;&nbsp;&nbsp;
             
                
                <br>
              
            </form>
                                                                      
<% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
 
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

