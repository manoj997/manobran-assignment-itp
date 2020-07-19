

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


@WebServlet("/TempEmp")
public class TempEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TempEmp() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

			int eno=Integer.parseInt(request.getParameter("eno"));
			float OTH=Float.parseFloat(request.getParameter("oth"));
		 	double OTR=Double.parseDouble(request.getParameter("otr"));
                        
                        EmpSalary sal=new EmpSalary(eno,OTH,OTR);
                        response.sendRedirect("ShowSalTemp.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
