/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.Supply;
import Services.SupplyOrderUpdateService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vithu Shan
 */
public class SupplyOrderUpdateHandler extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String sid=request.getParameter("sid");
    String address=request.getParameter("address");
    String tno=request.getParameter("tno");
    String otype=request.getParameter("otype");
    String date=request.getParameter("date");
    String email=request.getParameter("email");
    String payment=request.getParameter("payment");
    
    Supply supply=new Supply();
    supply.setSid(sid);
    supply.setAddress(address);
    supply.setTno(tno);
    supply.setOtype(otype);
    supply.setDate(date);
    supply.setEmail(email);
    supply.setPayment(payment);
    
    SupplyOrderUpdateService sous=new SupplyOrderUpdateService();
		if(sous.updateSupplyOrder(supply))
			response.sendRedirect("ViewSupplyDetails.jsp");
    
    }

}
