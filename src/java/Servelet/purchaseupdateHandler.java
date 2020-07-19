/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.purchase;
import Services.purchaseupdate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vithu Shan
 */
@WebServlet(name = "purchaseupdateHandler", urlPatterns = {"/purchaseupdateHandler"})
public class purchaseupdateHandler extends HttpServlet {
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String pid=request.getParameter("pid");
    String purchaseD=request.getParameter("purchaseD");
    String pay=request.getParameter("pay");
    String ptype=request.getParameter("ptype");
    String contact=request.getParameter("contact");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    
    purchase purchase=new purchase();
     purchase.setPid(pid);
     purchase.setPurchaseD(purchaseD);
     purchase.setPay(pay);
     purchase.setPtype(ptype);
     purchase.setContact(contact);
     purchase.setEmail(email);
     purchase.setAddress(address);
    
   purchaseupdate sous=new purchaseupdate();
		if(sous.purchaseupdate( purchase))
			response.sendRedirect("ViewSupplyDetails.jsp");
    
    }

}

   