/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.purchase;
import Services.Services;
import Services.purchaseServices;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vithu Shan
 */
public class purchasehandler extends HttpServlet {

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
    
    purchaseServices rs=new purchaseServices();
                if(rs.insertSupply(purchase)){
                    response.sendRedirect("viewpurchase.jsp");
                }
                else{
                out.print("kotta");
                }
    }

}
