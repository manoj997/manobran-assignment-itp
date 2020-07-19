/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.TrouserOrder;
import Service.TrouserOrderService;
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
public class TrouserOrderHandler extends HttpServlet {

  

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String ordid =request.getParameter("ordid");
            String cusid =request.getParameter("cusid");
            String fname=request.getParameter("fname");
            String design=request.getParameter("design");
            String hip=request.getParameter("hip");
            String plength=request.getParameter("plength");
            String ddate=request.getParameter("ddate");
            String fees=request.getParameter("fees");
            
            TrouserOrder torder=new TrouserOrder();
            torder.setOrdid(ordid);
            torder.setCusid(cusid);
            torder.setFname(fname);
            torder.setDesign(design);
            torder.setHip(hip);
            torder.setPlength(plength);
            torder.setDdate(ddate);
            torder.setFees(fees);
            
           TrouserOrderService rs=new TrouserOrderService();
                if(rs.insertTorder(torder))
                    response.sendRedirect("ViewTrouserOrders.jsp");
    }

    

}
