/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(urlPatterns = {"/EmpSearch"})
public class EmpSearch extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EmpSearch</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmpSearch at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
        
        try {
                    	String empName=request.getParameter("id");
                        
			Connection conn=DBConnect.getConnection();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="select * from employee where Name='"+empName+"'OR Eno='"+empName+"'";
			
                                ResultSet rs=ps.executeQuery(sql);
                               if (!rs.isBeforeFirst() ) {
                                    out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet NewServlet</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<div align='center'>");
                                    out.println("<h2>No Employee Found. Change employee name or employee number</h2>");
                                    out.println("</div>");
                                    out.println("</body>");
                                    out.println("</html>");
                                } else {
                                    while(rs.next()){
                                        String empname = rs.getString("Name");
                                        String empid = rs.getString("Eno");
                                        String mobile = rs.getString("Mobile");
                                        String add = rs.getString("Address");
                                        String nic = rs.getString("NIC");
                                        String status = rs.getString("Status");

                                        out.println("<!DOCTYPE html>");
                                        out.println("<html>");
                                        out.println("<head>");
                                        out.println("<title>Servlet NewServlet</title>");            
                                        out.println("</head>");
                                        out.println("<body bgcolor='#E6E6FA'>");
                                        out.println("<div align='center'>");
                                        out.println("<h2>Employee Details</h2>");
                                        out.println("<table>");
                                        out.println("<tr><td>"+"Employee Name: "+ "</td><td>" +empname+ "</td></tr>");
                                        out.println("<tr><td>"+"Employee Number: "+ "</td><td>"  +empid+ "</td></tr>");                                   
                                        out.println("<tr><td>"+"Contact Number: "+ "</td><td>" +mobile+ "</td></tr>");
                                        out.println("<tr><td>"+"Address      : "+ "</td><td>" +add+ "</td></tr>");
                                        out.println("<tr><td>"+"NIC Number   : "+ "</td><td>" +nic+ "</td></tr>");
                                        out.println("<tr><td>"+"Working Status : "+ "</td><td>" +status+ "</td></tr>");
                                        out.println("</table>");
                                        out.println("<a href='EmpDetails.jsp'>");
                                        out.println("Go Back");
                                        out.println("</a>");
                                        out.println("</div>");
                                        out.println("</body>");
                                        out.println("</html>");

                                    }
                               }
			}
		}
		catch(SQLException e) {
			out.println(e);
                        
		}
		
	}
        
    }
