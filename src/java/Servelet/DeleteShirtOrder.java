/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Service.DeleteShirtOrderService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TOSHIBA
 */
public class DeleteShirtOrder extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
                        String OrderID=request.getParameter("id");
		
			DeleteShirtOrderService auds = new DeleteShirtOrderService();
		
		if(auds.deleteOrder(OrderID))
			response.sendRedirect("DeleteShirtOrder.jsp");
		
    }

    
    
}
