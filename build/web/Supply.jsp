    <%-- 
    Document   : supply
    Created on : 26-Aug-2018, 14:13:54
    Author     : Vithu Shan
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="AdminCSS.css">

        <script>
            function regValidate(){      //validation
                var address = document.forms["RegForm"]["address"].value;   
                var tno= document.forms["RegForm"]["tno"].value;
                var otype = document.forms["RegForm"]["otype"].value;
                var date= document.forms["RegForm"]["date"].value;
                var email = document.forms["RegForm"]["email"].value;
                var payment = document.forms["RegForm"]["payment"].value;
                
                
                
             
                 if(address==="" || address===null){
                    alert('Please enter your Address');
                    return false;
                }
                if(tno==="" || tno===null){
                    alert('Please enter your Mobile number');
                    return false;
                }
                if(otype==="" || otype===null){
                    alert('Please enter your Order Type');
                    return false;
                }
                if(date==="" || date===null){
                    alert('Please enter your Order Date');
                    return false;
                }
                if(email==="" || email===null){
                    alert('Please enter the email');
                    return false;
                }
                if(payment==="" || payment===null){
                    alert('Please enter Payment Type');
                    return false;
                }
               
               
            }
        </script>
</head>
<body> 
        <header>    //top
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

            <a href="supply.jsp" class="active">Suppliers & Purchases</a>

            <a href="#">Employees</a>
            <a href="ViewFeedback.jsp">Feedbacks</a>
            <a href="TailoringMain.jsp" >Tailoring</a>
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
            <form name="RegForm" method="POST" action="SupplyHandler">   
              
                <p style="margin-left: 1px; color: black; font-size: 18px"><b>suppliers form</b></p>
                
                <table border="0">
                    <tbody>
                       
                        <tr>
                            <td>Supply ID &nbsp;</td>
                            <td>
                                <input type="text" name="sid" value="" size="30" placeholder="Supply ID"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Address &nbsp;</td>
                            <td>
                                <input type="text" name="address" value="" size="30" placeholder="Address"/>
                            </td>
                        </tr>
                        <tr>
                            <td>mobile Number &nbsp;</td>
                            <td>
                                <input type="text" name="tno" value="" size="30"  placeholder="Mobile Number"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Order Type &nbsp;</td>
                            <td>
                                 <select name="otype">
                                    <option>Silk</option>
                                    <option>Cotton</option>
                                    <option>Linen</option>
                                    <option> wool</option>
                                    <option> fabric </option> 
                                </select> 
                            </td>`
                        </tr>
                        
                         <tr>
                            <td>Order Date &nbsp;</td>
                            <td>
                                <input type="date" name="date" value="" size="30" maxlength="10" />
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>Email &nbsp;</td>
                            <td>
                                <input type="text" name="email" value="" size="30" placeholder="Email"/>
                            </td>
                        </tr>
                        
                         <tr>
                            <td>Payment &nbsp;</td>
                            <td>
                                <input type="text" name="payment" value="" size="30" placeholder="Payment"/>
                            </td>
                        </tr>
                       
                    </tbody>
                </table>
                
                <br>
                
                <button class="button1" type="submit" onclick="return regValidate()" >Save & Proceed </button> &nbsp;&nbsp;&nbsp;&nbsp;
             
                
                <br>
              
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