

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


@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddServlet() {
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
				
				String sql="INSERT INTO employee(Name,Eno,Mobile,Address,NIC,Status) VALUES ('"+name+"','"+eno+"','"+phone+"','"+address+"','"+nic+"','"+status+"')";
				int result = ps.executeUpdate(sql);
				if(result > 0) {
						response.sendRedirect("added.html");
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
                                    out.println("<div align='center'>");
                                    out.println("<h2>Not Inserted. Employee Number violation.</h2>");
                                    out.println("</div>");
                                    out.println("</body>");
                                    out.println("</html>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
