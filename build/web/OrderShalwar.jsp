<%-- 
    Document   : OrderShalwar
    Created on : Aug 8, 2018, 5:58:09 PM
    Author     : TOSHIBA
--%>

       <%@ page import="java.sql.*" %>
     <%

	String url="jdbc:mysql://localhost:3306/Manobran";  
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
                
              var ordid = document.forms["RegForm"]["ordid"].value;
                var ddate = document.forms["RegForm"]["ddate"].value;
                var fees = document.forms["RegForm"]["fees"].value;
             
                if(ordid==="" || ordid===null){
                    alert('Please enter your Order ID');
                    return false;
                }
               
                 if(ddate==="" || ddate===null){
                    alert('Please enter your  delivery date');
                    return false;
                }
                if(fees==="" || fees===null){
                    alert('Please enter your  Tailoring Fees');
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
            <a href="TailoringMain.jsp"class="active">Tailoring</a>
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
    <script>
function setValue() {
    document.getElementById("ordid").value = "Shalwar 4";
    document.getElementById('design').value = 'Design 4';
    document.getElementById('chest').value = '30';
    document.getElementById('shoulder').value = '10';
    document.getElementById('arms').value = '9';
     document.getElementById('hip').value = '30';
    document.getElementById('plength').value = '70';
    document.getElementById('fneck').value = '7';
    document.getElementById('bneck').value = '5';
    document.getElementById('length').value = '28';
    document.getElementById('ddate').valueAsDate = new Date();
    document.getElementById("fees").value = "4000.00";
  
}
</script>
    <input type="button" name="set_Value" id="set_Value" value="Demo" onclick="setValue()" />
            <form name="RegForm" method="POST" action="ShalwarOrderHandler">
              
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>Shalwar Order Order</b></p>
                
                <table border="0">
         <%           
             try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();

	 		       	
	 		        
	 		       	String query  ="SELECT * FROM logintemp l, register_user r where r.CusID= l.CusID";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      		
      				if(resultSet.next()){
    	  
    	  
      					
%>
                    <tbody>
                       
                        <tr>
                            <td>OrderID &nbsp;</td>
                            <td>
                                 <input type="text" name="ordid" id="ordid" value="" size="30" placeholder="OrderID"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Customer ID &nbsp;</td>
                            <td>
                                <input type="text" name="cusid"  size="30" value="<%=resultSet.getString("CusID") %>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>UserName &nbsp;</td>
                            <td>
                                <input type="text" name="fname" size="30" value="<%=resultSet.getString("Fname") %>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Design &nbsp;</td>
                            <td>
                                 <select name="design" id="design">
                                    <option value="Design 1">Design 1</option>
                                    <option value="Design 2">Design 2</option>
                                    <option value="Design 3">Design 3</option>
                                    <option value="Design 4">Design 4</option>
                                </select> 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Chest &nbsp;</td>
                            <td>
                                 <select name="chest" id="chest">
                                    <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                    <option value="21"> 21 </option>
                                    <option value="22"> 22 </option>
                                    <option value="23"> 23 </option>
                                    <option value="24"> 24 </option>
                                    <option value="25"> 25 </option>
                                    <option value="26"> 26 </option>
                                    <option value="27"> 27 </option>
                                    <option value="28"> 28 </option>
                                    <option value="29"> 29 </option>
                                    <option value="30"> 30 </option>
                                    <option value="31"> 31 </option>
                                    <option value="32"> 32 </option>
                                    <option value="33"> 33 </option>
                                    <option value="34"> 34 </option>
                                    <option value="35"> 35 </option>
                                    <option value="36"> 36 </option>
                                    <option value="37" > 37 </option>
                                    <option value="38"> 38 </option>
                                    <option value="39"> 39 </option>
                                    <option value="40"> 40 </option>
                                    <option value="41"> 41 </option>
                                    <option value="42"> 42 </option>
                                    <option value="43"> 43 </option>
                                    <option value="44"> 44 </option>
                                    <option value="45"> 45 </option>
                                    <option value="46"> 46 </option>
                                    <option value="47"> 47 </option>
                                    <option value="48"> 48 </option>
                                    <option value="49"> 49 </option>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Shoulder &nbsp;</td>
                            <td>
                                 <select name="shoulder" id="shoulder">
                                    <option value="1"> 1 </option>
                                    <option value="2"> 2 </option>
                                    <option value="3"> 3 </option>
                                    <option value="4"> 4 </option>
                                    <option value="5"> 5 </option>
                                    <option value="6"> 6 </option>
                                    <option value="7"> 7 </option>
                                    <option value="8"> 8 </option>
                                    <option value="9"> 9 </option>
                                    <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Arms &nbsp;</td>
                               <td>
                                 <select name="arms" id="arms">
                                 option value="1"> 1 </option>
                                    <option value="2"> 2 </option>
                                    <option value="3"> 3 </option>
                                    <option value="4"> 4 </option>
                                    <option value="5"> 5 </option>
                                    <option value="6"> 6 </option>
                                    <option value="7"> 7 </option>
                                    <option value="8"> 8 </option>
                                    <option value="9"> 9 </option>
                                    <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                  
                                </select> 
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Hip &nbsp;</td>
                            <td>
                                 <select name="hip" id="hip">
                                     <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                    <option value="21"> 21 </option>
                                    <option value="22"> 22 </option>
                                    <option value="23"> 23 </option>
                                    <option value="24"> 24 </option>
                                    <option value="25"> 25 </option>
                                    <option value="26"> 26 </option>
                                    <option value="27"> 27 </option>
                                    <option value="28"> 28 </option>
                                    <option value="29"> 29 </option>
                                    <option value="30"> 30 </option>
                                    <option value="31"> 31 </option>
                                    <option value="32"> 32 </option>
                                    <option value="33"> 33 </option>
                                    <option value="34"> 34 </option>
                                    <option value="35"> 35 </option>
                                    <option value="36"> 36 </option>
                                    <option value="37" > 37 </option>
                                    <option value="38"> 38 </option>
                                    <option value="39"> 39 </option>
                                    <option value="40"> 40 </option>
                                    <option value="41"> 41 </option>
                                    <option value="42"> 42 </option>
                                    <option value="43"> 43 </option>
                                    <option value="44"> 44 </option>
                                    <option value="45"> 45 </option>
                                    <option value="46"> 46 </option>
                                    <option value="47"> 47 </option>
                                    <option value="48"> 48 </option>
                                    <option value="49"> 49 </option>
                                </select> 
                            </td
                            
                        </tr>
                        
                       <tr>
                            <td>Length &nbsp;</td>
                             <td>
                                 <select name="length" id="length">
                                      <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                    <option value="21"> 21 </option>
                                    <option value="22"> 22 </option>
                                    <option value="23"> 23 </option>
                                    <option value="24"> 24 </option>
                                    <option value="25"> 25 </option>
                                    <option value="26"> 26 </option>
                                    <option value="27"> 27 </option>
                                    <option value="28"> 28 </option>
                                    <option value="29"> 29 </option>
                                    <option value="30"> 30 </option>
                                    <option value="31"> 31 </option>
                                    <option value="32"> 32 </option>
                                    <option value="33"> 33 </option>
                                    <option value="34"> 34 </option>
                                    <option value="35"> 35 </option>
                                    <option value="36"> 36 </option>
                                    <option value="37"> 37 </option>
                                    <option value="38"> 38 </option>
                                    <option value="39"> 39 </option>
                                    <option value="40"> 40 </option>
                                    <option value="41"> 41 </option>
                                    <option value="42"> 42 </option>
                                    <option value="43"> 43 </option>
                                    <option value="44"> 44 </option>
                                    <option value="45"> 45 </option>
                                    <option value="46"> 46 </option>
                                    <option value="47"> 47 </option>
                                    <option value="48"> 48 </option>
                                    <option value="49"> 49 </option>
                                    <option value="50"> 50 </option>
                                    <option value="51"> 51 </option>
                                    <option value="52"> 52 </option>
                                    <option value="53"> 53 </option>
                                    <option value="54"> 54 </option>
                                    <option value="55"> 55 </option>
                                    <option value="56"> 56 </option>
                                    <option value="57"> 57 </option>
                                    <option value="58"> 58 </option>
                                    <option value="59"> 59 </option>
                                </select> 
                            </td>
                        </tr>
                         <tr>
                            <td>Front Neck &nbsp;</td>
                             <td>
                                 <select name="fneck" id="fneck">
                                     <option value="2"> 2 </option>
                                    <option value="3"> 3 </option>
                                    <option value="4"> 4 </option>
                                    <option value="5"> 5 </option>
                                    <option value="6"> 6 </option>
                                    <option value="7"> 7 </option>
                                    <option value="8"> 8 </option>
                                    <option value="9"> 9 </option>
                                    <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                </select> 
                            </td>
                        </tr>                    
                        
                        <tr>
                            <td>Back Neck &nbsp;</td>
                            <td>
                                 <select name="bneck" id="bneck">
                                    <option value="2"> 2 </option>
                                    <option value="3"> 3 </option>
                                    <option value="4"> 4 </option>
                                    <option value="5"> 5 </option>
                                    <option value="6"> 6 </option>
                                    <option value="7"> 7 </option>
                                    <option value="8"> 8 </option>
                                    <option value="9"> 9 </option>
                                    <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                </select> 
                            </td>
                        </tr>
                       <tr>
                            <td>Pant Length &nbsp;</td>
                            <td>
                                 <select name="plength" id="plength">
                                     <option value="10"> 10 </option>
                                    <option value="11"> 11 </option>
                                    <option value="12"> 12 </option>
                                    <option value="13"> 13 </option>
                                    <option value="14"> 14 </option>
                                    <option value="15"> 15 </option>
                                    <option value="16"> 16 </option>
                                    <option value="17"> 17 </option>
                                    <option value="18"> 18 </option>
                                    <option value="19"> 19 </option>
                                    <option value="20"> 20 </option>
                                    <option value="21"> 21 </option>
                                    <option value="22"> 22 </option>
                                    <option value="23"> 23 </option>
                                    <option value="24"> 24 </option>
                                    <option value="25"> 25 </option>
                                    <option value="26"> 26 </option>
                                    <option value="27"> 27 </option>
                                    <option value="28"> 28 </option>
                                    <option value="29"> 29 </option>
                                    <option value="30"> 30 </option>
                                    <option value="31"> 31 </option>
                                    <option value="32"> 32 </option>
                                    <option value="33"> 33 </option>
                                    <option value="34"> 34 </option>
                                    <option value="35"> 35 </option>
                                    <option value="36"> 36 </option>
                                    <option value="37" > 37 </option>
                                    <option value="38"> 38 </option>
                                    <option value="39"> 39 </option>
                                    <option value="40"> 40 </option>
                                    <option value="41"> 41 </option>
                                    <option value="42"> 42 </option>
                                    <option value="43"> 43 </option>
                                    <option value="44"> 44 </option>
                                    <option value="45"> 45 </option>
                                    <option value="46"> 46 </option>
                                    <option value="47"> 47 </option>
                                    <option value="48"> 48 </option>
                                    <option value="49"> 49 </option>
                                    <option value="50"> 50 </option>
                                    <option value="51"> 51 </option>
                                    <option value="52"> 52 </option>
                                    <option value="53"> 53 </option>
                                    <option value="54"> 54 </option>
                                    <option value="55"> 55 </option>
                                    <option value="56"> 56 </option>
                                    <option value="57"> 57 </option>
                                    <option value="58"> 58 </option>
                                    <option value="59"> 59 </option>
                                    <option value="60"> 60 </option>
                                    <option value="61"> 61 </option>
                                    <option value="62"> 62 </option>
                                    <option value="63"> 63 </option>
                                    <option value="64"> 64 </option>
                                    <option value="65"> 65 </option>
                                    <option value="66"> 66 </option>
                                    <option value="67"> 67 </option>
                                    <option value="68"> 68 </option>
                                    <option value="69"> 69 </option>
                                    <option value="70"> 70 </option>
                                    <option value="71"> 71 </option>
                                    <option value="72"> 72 </option>
                                    <option value="73"> 73 </option>
                                    <option value="74"> 74 </option>
                                    <option value="75"> 75 </option>
                                    <option value="76"> 76 </option>
                                    <option value="77"> 77 </option>
                                    <option value="78"> 78 </option>
                                    <option value="79"> 79 </option>
                                    <option value="80"> 80 </option>
                                    <option value="81"> 81 </option>
                                    <option value="82"> 82 </option>
                                    <option value="83"> 83 </option>
                                    <option value="84"> 84 </option>
                                    <option value="85"> 85 </option>
                                    <option value="86"> 86 </option>
                                    <option value="87"> 87 </option>
                                    <option value="88"> 88 </option>
                                    <option value="89"> 89 </option>
                                    <option value="90"> 90 </option>
                                   
                                </select> 
                            </td>
                            
                        </tr>
                         <tr>
                            <td>Delivery Date &nbsp;</td>
                            <td>
                                <input type="date" name="ddate" id="ddate" value="" size="30" maxlength="10" />
                            </td>
                        </tr>
                        
                         <tr>
                            <td>Tailoring Fees &nbsp;</td>
                            <td>
                                 <input type="text" name="fees" id="fees" value="" size="30" placeholder="Tailoring Fees"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <br>
                
                <h6>*All Measurement In Inches</h6>
                
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
</div>
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
</body>

</html>
