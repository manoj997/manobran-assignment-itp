package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005faccounts_005fincome_005fmain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Accounts Page</title>\n");
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
      out.write("        <table width=\"55%\">\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <a  href=\"admin_accounts_income_add.jsp\" style=\"text-decoration: none\">\n");
      out.write("                        <center><img src=\"Icons/add.png\" height=\"30%\" width=\"40%\"/></center>\n");
      out.write("                        <br>\n");
      out.write("                        <center><label>Add Income</label></center>\n");
      out.write("                    </a>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <a  href=\"admin_accounts_income_update.jsp\" style=\"text-decoration: none\">\n");
      out.write("                        <center><img src=\"Icons/update.png\" height=\"30%\" width=\"40%\"/></center>\n");
      out.write("                        <br/>\n");
      out.write("                        <center><label>Update an Income</label></center>\n");
      out.write("            </a>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <a  href=\"admin_accounts_income_delete.jsp\" style=\"text-decoration: none\">\n");
      out.write("                        <center><img src=\"Icons/Delete.png\" height=\"30%\" width=\"40%\"/></center>\n");
      out.write("                        <br/>\n");
      out.write("                        <center><label>Delete Income/s</label></center>\n");
      out.write("            </a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("       \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <footer class=\"foot\">\n");
      out.write("            <div style=\"float:left\">\n");
      out.write("            ManoBran Enterprises <br/>\n");
      out.write("            No.310 , Galle Road,<br/>\n");
      out.write("            Colombo 06 </br>\n");
      out.write("            011 2 301904 \n");
      out.write("            </div>\n");
      out.write("            <div style=\"float: right\">\n");
      out.write("                <a href=\"https://www.facebook.com/\" style=\"text-decoration:none\"> <img src=\"Img/fb1.png\" width=\"50px\"> </a> &nbsp;&nbsp;\n");
      out.write("                <a href=\"https://www.instagram.com/\" style=\"text-decoration:none\"> <img src=\"Img/insta.png\" width=\"50px\"> </a> &nbsp;&nbsp;\n");
      out.write("                <a href=\"\" style=\"text-decoration:none\"> <img src=\"Img/twitter1.png\" width=\"50px\"> </a>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function myFunction() {\n");
      out.write("                var x = document.getElementById(\"myTopnav\");\n");
      out.write("                if (x.className === \"topnav\") {\n");
      out.write("                    x.className += \" responsive\";\n");
      out.write("                } else {\n");
      out.write("                    x.className = \"topnav\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
