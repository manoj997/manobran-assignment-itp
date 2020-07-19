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

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/Checkout"})
public class Checkout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        PrintWriter out=response.getWriter();
		//out.println("lol");
		try {
	
			int eno=Integer.parseInt(request.getParameter("emp_id"));
			String in=request.getParameter("Indate");
		 	String checkout=request.getParameter("date");
		 	                      
		
			Connection conn=DBConnect.getConnection();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="INSERT INTO fullattendence(Eno,CheckIn,CheckOut) VALUES ('"+eno+"','"+in+"','"+checkout+"')";
                                String sql2="DELETE FROM attendence where Eno='"+eno+"' ";
                                int result2 = ps.executeUpdate(sql2);
				int result = ps.executeUpdate(sql);
				if(result > 0) {
						response.sendRedirect("AttendInsert.jsp");
				}
				else {
					out.print("Not Inserted");
				}
			}
		}
		catch(SQLException e) {
			//out.println(e);
                        //out.print("Not Inserted. Employee Number violation.");
                        out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet NewServlet</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<h2>Not Inserted. Employee Number violation.</h2>");
                                    out.println("</body>");
                                    out.println("</html>");
		}
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }


}
