

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEmpServlet")
public class UpdateEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateEmpServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		//out.println("lol");
		try {
	
			String name=request.getParameter("name");
			
			int eno=Integer.parseInt(request.getParameter("eno"));
			String phone=request.getParameter("contact");
			String address=request.getParameter("address");
                        String nic=request.getParameter("nic");
		 	String status=request.getParameter("status");

			Connection conn=DBConnect.getConnection();
			
			if(conn!=null) {
				
				Statement ps=conn.createStatement();
				
				String sql="UPDATE employee SET Name='"+name+"',Mobile='"+phone+"',Address='"+address+"',NIC='"+nic+"',Status='"+status+"' WHERE Eno='"+eno+"'";
				int result = ps.executeUpdate(sql);
				if(result > 0) {
					response.sendRedirect("updated.html");
				}
				else{
                                    out.println("<!DOCTYPE html>");
                                    out.println("<html>");
                                    out.println("<head>");
                                    out.println("<title>Servlet NewServlet</title>");            
                                    out.println("</head>");
                                    out.println("<body>");
                                    out.println("<h2>No Employee Found. Change employee number</h2>");
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
