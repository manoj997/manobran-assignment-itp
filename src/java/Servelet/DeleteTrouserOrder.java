/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Service.DeleteTrouserOrderService;
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
public class DeleteTrouserOrder extends HttpServlet {

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         String OrderID=request.getParameter("id");
		
			DeleteTrouserOrderService auds = new DeleteTrouserOrderService();
		
		if(auds.deleteOrder(OrderID))
			response.sendRedirect("DeleteTrouserOrder.jsp");
		
    }
    

   
}
