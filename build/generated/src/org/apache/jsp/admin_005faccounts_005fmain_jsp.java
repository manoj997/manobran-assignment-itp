package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class admin_005faccounts_005fmain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                        int sum_b;
                        int sum_l;
                        int sum_m;
                        int sum_v;
                        int totalSum;
                        String sumval;

                    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBConfig.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
           String url = "jdbc:mysql://localhost:3306/manobran";
           String username = "root";
           String password = "";
           
           Connection conn = DriverManager.getConnection(url, username, password);
   
           if (conn != null) 
                out.println();
            else
                out.println(); 
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Dashboard - Accounting</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"AdminCSS.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center>\n");
      out.write("                <img src=\"img/1.png\" style=\"width: 150px\">\n");
      out.write("            </center>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"topnav\" id=\"myTopNav\">\n");
      out.write("            <a href=\"admin_dashboard.jsp\" >Dashboard</a>\n");
      out.write("            <a href=\"admin_accounts_main.jsp\" class=\"active\">Accounts</a>\n");
      out.write("\n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("                <button class=\"dropbtn\">Inventory\n");
      out.write("                    <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a href=\"#\">Link 1</a>\n");
      out.write("                    <a href=\"#\">Link 2</a>\n");
      out.write("                    <a href=\"#\">Link 3</a>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("\n");
      out.write("            <a href=\"#\">Suppliers & Purchases</a>\n");
      out.write("\n");
      out.write("            <a href=\"#\">Employees</a>\n");
      out.write("            <a href=\"#\">Feedbacks</a>\n");
      out.write("\n");
      out.write("            <div style=\"float: right; margin-top: 20px; margin-right: 50px\">\n");
      out.write("                <img src=\"img/user3.png\" style=\"width: 20px\" >\n");
      out.write("            </div>\n");
      out.write("            <div style=\"float: right\">\n");
      out.write("                <div class=\"dropdown\">\n");
      out.write("                    <button class=\"dropbtn\">Session Name\n");
      out.write("                        <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"dropdown-content\">\n");
      out.write("                        <a href=\"admin_login.jsp\">Sign In</a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <a href=\"javascript:void(0);\" style=\"font-size:15px;\" class=\"icon\" onclick=\"myFunction()\">&#9776;</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            //function for responsive page\n");
      out.write("            function myFunction() {\n");
      out.write("                var x = document.getElementById(\"myTopnav\");\n");
      out.write("                if (x.className === \"topnav\") {\n");
      out.write("                    x.className += \" responsive\";\n");
      out.write("                } else {\n");
      out.write("                    x.className = \"topnav\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("    <center>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--\n");
      out.write("        <a  href=\"admin_accounts_income_main.jsp\" style=\"text-decoration: none\">\n");
      out.write("            <button class=\"button1\" >Income</button>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <a  href=\"admin_accounts_investment_main.jsp\" style=\"text-decoration: none\">\n");
      out.write("            <button class=\"button1\" >Investment</button>\n");
      out.write("        </a>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <a  href=\"admin_accounts_expense_main.jsp\" style=\"text-decoration: none\">\n");
      out.write("            <button class=\"button1\" >Expenses</button>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <a  href=\"admin_accounts_profitLossViewer.jsp\" style=\"text-decoration: none\">\n");
      out.write("            <button class=\"button1\" >View Profit or Loss</button>\n");
      out.write("        </a>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        -->\n");
      out.write("\n");
      out.write("        <h1>\n");
      out.write("            Accounting Summary of your business\n");
      out.write("        </h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    ");
                    //building sum
                        try {
                            Statement st1 = conn.createStatement();
                            String sumofBuilding = "SELECT SUM(initialValue)FROM asset_building";

                            ResultSet rs = st1.executeQuery(sumofBuilding);

                            if (rs.next()) {
                                sum_b = rs.getInt("SUM(initialValue)");

            //                            System.out.print("your assets: LKR " + sum_b);
                            }
                            //land sum
                            Statement st2 = conn.createStatement();
                            String sumofLand = "SELECT SUM(initialValue)FROM asset_land";

                            ResultSet rs1 = st2.executeQuery(sumofLand);

                            if (rs1.next()) {
                                sum_l = rs1.getInt("SUM(initialValue)");

            //                            System.out.print("your assets: LKR " + sum_l);
                            }
                            Statement st3 = conn.createStatement();
                            String sumofMachines = "SELECT SUM(initialValue)FROM asset_machines";

                            ResultSet rs2 = st3.executeQuery(sumofMachines);

                            if (rs2.next()) {
                                sum_m = rs2.getInt("SUM(initialValue)");

                                //                           System.out.print("your assets: LKR " + sum_m);
                            }
                            Statement st4 = conn.createStatement();
                            String sumofVehicle = "SELECT SUM(initialValue)FROM asset_building";

                            ResultSet rs3 = st4.executeQuery(sumofVehicle);

                            if (rs3.next()) {
                                sum_v = rs3.getInt("SUM(initialValue)");

                                //                          System.out.print("your assets: LKR " + sum_v);
                            }
                            totalSum = sum_b + sum_l + sum_m + sum_v;

                        } catch (SQLException e) {
                            e.getMessage();
                        }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p style=\"background-color: #4CAF50; color: white;font-size: 18px\">\n");
      out.write("\n");
      out.write("                       &nbsp; Your total asset Value is currently LKR ");
      out.print(totalSum);
      out.write(".00 &nbsp;<br>\n");
      out.write("                    \n");
      out.write("                       <br>&nbsp;View all your assets <a style=\"color: appworkspace;text-decoration: none\" href=\"admin_accounts_view_all_assets.jsp\">Here!</a>\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <p style=\"background-color: #0dad8d; color: white;font-size: 18px\">\n");
      out.write("                        &nbsp;View Profit / Loss Statement&nbsp;\n");
      out.write("                        <br><br>&nbsp;  <a style=\"color: white;text-decoration: none\" href=\"admin_accounts_profitLossViewer.jsp\">Here!</a>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <td>\n");
      out.write("                    <p style=\"background-color: #a94442;font-size: 18px;color: white\">\n");
      out.write("                        &nbsp;View All incomes and expenses&nbsp;<br>\n");
      out.write("                        <br>\n");
      out.write("                        &nbsp;<a style=\"color: white;text-decoration: none\" href=\"admin_accounts_view_incomeExpenses.jsp\">Here!</a>\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <footer class=\"foot\">\n");
      out.write("        <div style=\"float:left\">\n");
      out.write("            ManoBran Enterprises <br/>\n");
      out.write("            No.310 , Galle Road,<br/>\n");
      out.write("            Colombo 06 </br>\n");
      out.write("            011 2 301904 \n");
      out.write("        </div>\n");
      out.write("        <div style=\"float: right\">\n");
      out.write("            <a href=\"https://www.facebook.com/\" style=\"text-decoration:none\"> <img src=\"Img/fb1.png\" width=\"50px\"> </a> &nbsp;&nbsp;\n");
      out.write("            <a href=\"https://www.instagram.com/\" style=\"text-decoration:none\"> <img src=\"Img/insta.png\" width=\"50px\"> </a> &nbsp;&nbsp;\n");
      out.write("            <a href=\"\" style=\"text-decoration:none\"> <img src=\"Img/twitter1.png\" width=\"50px\"> </a>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function myFunction() {\n");
      out.write("            var x = document.getElementById(\"myTopnav\");\n");
      out.write("            if (x.className === \"topnav\") {\n");
      out.write("                x.className += \" responsive\";\n");
      out.write("            } else {\n");
      out.write("                x.className = \"topnav\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
