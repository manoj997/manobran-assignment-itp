

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteEmpServlet")
public class DeleteEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteEmpServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
			String empName=request.getParameter("name");
			Connection conn=DBConnect.getConnection();
			
			if(conn!=null) {
				Statement ps=conn.createStatement();
				String sql="DELETE FROM employee WHERE Name='"+empName+"' OR Eno='"+empName+"'" ;
				int result = ps.executeUpdate(sql);
				
				if(result > 0) {
					response.sendRedirect("deleted.html");
				}
				else{
                                    out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet NewServlet</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<h2>No Employee Found. Change employee name or employee number</h2>");
                                    out.println("</body>");
                                    out.println("</html>");
				}
				
			}
		}
		catch(SQLException e) {
			out.println(e);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
