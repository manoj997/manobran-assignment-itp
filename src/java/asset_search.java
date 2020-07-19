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

@WebServlet(urlPatterns = {"/VSearch"})
public class asset_search extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VSearch</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VSearch at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
        
        try {
                    	String make=request.getParameter("make");
                                
                        
			Connection conn=DBConnection.getconn();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="select * from asset_vehicle where Make='"+make+"'OR regNo='"+make+"'";
			
                                ResultSet rs=ps.executeQuery(sql);
                               if (!rs.isBeforeFirst() ) {
                                    out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Vehicle Search</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<div align='center'>");
                                    out.println("<h2>No Vehicles found! Go back and try searching again</h2>");
                                    out.println("</div>");
                                    out.println("</body>");
                                    out.println("</html>");
                                } else {
                                    while(rs.next()){
                                        String makee = rs.getString("make");
                                        String model = rs.getString("model");
                                        String year = rs.getString("year");
                                        String type = rs.getString("type");
                                        String initialValue = rs.getString("initialValue");
                                        String regNo = rs.getString("regNo");

                                        out.println("<!DOCTYPE html>");
                                        out.println("<html>");
                                        out.println("<head>");
                                        out.println("<title>Servlet NewServlet</title>");            
                                        out.println("</head>");
                                        out.println("<body bgcolor='#E6E6FA'>");
                                        out.println("<div align='center'>");
                                        out.println("<h2>Employee Details</h2>");
                                        out.println("<table>");
                                        out.println("<tr><td>"+"Vehicle Make: "+ "</td><td>" +makee+ "</td></tr>");
                                        out.println("<tr><td>"+"Model: "+ "</td><td>"  +model+ "</td></tr>");                                   
                                        out.println("<tr><td>"+"Year: "+ "</td><td>" +year+ "</td></tr>");
                                        out.println("<tr><td>"+"Type      : "+ "</td><td>" +type+ "</td></tr>");
                                        out.println("<tr><td>"+"Initial Value : "+ "</td><td>" +initialValue+ "</td></tr>");
                                        out.println("<tr><td>"+"Registration Number: "+ "</td><td>" +regNo+ "</td></tr>");
                                        out.println("</table>");
                                        out.println("<a href='admin_accounts_view_all_assets.jsp'>");
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
