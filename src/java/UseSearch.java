/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author TOSHIBA
 */
@WebServlet(urlPatterns = {"/UseSearch"})
public class UseSearch extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        PrintWriter out=response.getWriter();
        
        try {
                    	String Name=request.getParameter("id");
                        
			Connection conn=DbConnection.getDBConnection();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="select * from register_user where CusID='"+Name+"'OR Fname='"+Name+"'";
			
                                ResultSet rs=ps.executeQuery(sql);
                               if (!rs.isBeforeFirst() ) {
                                    out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet NewServlet</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<div align='center'>");
                                    out.println("<h2>User Not Found </h2>");
                                    out.println("</div>");
                                    out.println("</body>");
                                    out.println("</html>");
                                } else {
                                    while(rs.next()){
                                        String Cusid = rs.getString("CusID");
                                        String Fname = rs.getString("Fname");
                                        String Lname = rs.getString("Lname");
                                        String Address = rs.getString("Address");
                                        String Email = rs.getString("Email");
                                        String no = rs.getString("Fixed_No");
                                        String no2 = rs.getString("Mobile_No");

                                        out.println("<!DOCTYPE html>");
                                        out.println("<html>");
                                        out.println("<head>");
                                        out.println("<title>Servlet NewServlet</title>");            
                                        out.println("</head>");
                                        out.println("<body bgcolor='#E6E6FA'>");
                                        out.println("<div align='center'>");
                                        out.println("<h2>Employee Details</h2>");
                                        out.println("<table>");
                                        out.println("<tr><td>"+"Customer ID: "+ "</td><td>" +Cusid+ "</td></tr>");
                                        out.println("<tr><td>"+"FirstName: "+ "</td><td>"  +Fname+ "</td></tr>");                                   
                                        out.println("<tr><td>"+"LastName: "+ "</td><td>" +Lname+ "</td></tr>");
                                        out.println("<tr><td>"+"Address      : "+ "</td><td>" +Address+ "</td></tr>");
                                        out.println("<tr><td>"+"Email   : "+ "</td><td>" +Email+ "</td></tr>");
                                        out.println("<tr><td>"+"Phone No : "+ "</td><td>" +no+ "</td></tr>");
                                        out.println("<tr><td>"+"Mobile No : "+ "</td><td>" +no2+ "</td></tr>");
                                        out.println("</table>");
                                        out.println("<a href='ViewCustomerDetails.jsp'>");
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
