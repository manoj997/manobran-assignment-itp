/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.ShalwarOrder;
import Service.ShalwarOrderUpdateService;
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
public class ShalwarOrderUpdateHandler extends HttpServlet {

   
   
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
            String hip=request.getParameter("hip");
            String length=request.getParameter("length");
            String fneck=request.getParameter("fneck");
            String bneck=request.getParameter("bneck");
            String plength=request.getParameter("plength"); 
            String ddate=request.getParameter("ddate");
            String fees=request.getParameter("fees");
            
            
            ShalwarOrder shorder=new ShalwarOrder();
            shorder.setOrdid(ordid);
            shorder.setCusid(cusid);
            shorder.setFname(fname);
            shorder.setDesign(design);
            shorder.setChest(chest);
            shorder.setShoulder(shoulder);
            shorder.setArms(arms);
            shorder.setHip(hip);
            shorder.setLength(length);
            shorder.setFneck(fneck);
            shorder.setBneck(bneck);
            shorder.setPlength(plength);
            shorder.setDdate(ddate);
            shorder.setFees(fees);
            
             ShalwarOrderUpdateService sous=new ShalwarOrderUpdateService();
		if(sous.updateShalwarOrder(shorder))
			response.sendRedirect("ViewShalwarOrders.jsp");
            
    }

    
}
