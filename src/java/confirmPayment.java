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


@WebServlet(urlPatterns = {"/confirmPayment"})
public class confirmPayment extends HttpServlet {

 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
		//out.println("lol");
		try {
	
			int eno=Integer.parseInt(request.getParameter("emp_id"));
			String total=request.getParameter("amount");
		 	String pay_day=request.getParameter("date");
		 	                      
		
			Connection conn=DBConnect.getConnection();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="INSERT INTO pay(Eno,Total,Date) VALUES ('"+eno+"','"+total+"','"+pay_day+"')";
                                String sql2="DELETE FROM per where Eno='"+eno+"' ";
                                String sql3="DELETE FROM temp where Eno='"+eno+"' ";
                                String sql4="INSERT INTO expense_salaries(amount,date) VALUES ('"+total+"','"+pay_day+"')";

                                int result2 = ps.executeUpdate(sql2);
                                int result3 = ps.executeUpdate(sql3);
                                int result4=ps.executeUpdate(sql4);

				int result = ps.executeUpdate(sql);
				if(result > 0) {
						response.sendRedirect("ShowSal.jsp");
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
