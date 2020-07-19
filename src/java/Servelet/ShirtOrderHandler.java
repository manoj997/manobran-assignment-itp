/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.ShirtOrder;
import Service.ShirtOrderService;
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
public class ShirtOrderHandler extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String ordid =request.getParameter("ordid");
            String cusid =request.getParameter("cusid");
            String fname=request.getParameter("fname");
            String design=request.getParameter("design");
            String chest=request.getParameter("chest");
            String shoulder=request.getParameter("shoulder");
            String arms=request.getParameter("arms");
            String slength=request.getParameter("slength");
            String fneck=request.getParameter("fneck");
            String length=request.getParameter("length"); 
            String ddate=request.getParameter("ddate");
            String fees=request.getParameter("fees");
            
            
            ShirtOrder sorder=new ShirtOrder();
            sorder.setOrdid(ordid);
            sorder.setCusId(cusid);
            sorder.setFname(fname);
            sorder.setDesign(design);
            sorder.setChest(chest);
            sorder.setShoulder(shoulder);
            sorder.setArms(arms);
            sorder.setSlength(slength);
            sorder.setFneck(fneck);
            sorder.setLength(length);
            sorder.setDdate(ddate);
            sorder.setFees(fees);
            
             ShirtOrderService rs=new ShirtOrderService();
                if(rs.insertSorder(sorder))
                    response.sendRedirect("ViewShirtOrders.jsp");
             
    }

    
   
}
