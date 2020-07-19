/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.BlouseOrder;
import Service.BlouseOrderService;
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
public class BlouseOrderHandler extends HttpServlet {


   
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
            String bneck=request.getParameter("bneck");
            String length=request.getParameter("length"); 
            String ddate=request.getParameter("ddate");
            String fees=request.getParameter("fees");
            
            BlouseOrder border=new BlouseOrder ();
            border.setOrdid(ordid);
            border.setCusid(cusid);
            border.setFname(fname);
            border.setDesign(design);
            border.setChest(chest);
            border.setShoulder(shoulder);
            border.setArms(arms);
            border.setSlength(slength);
            border.setFneck(fneck);
            border.setBneck(bneck);
            border.setLength(length);
            border.setDdate(ddate);
            border.setFees(fees);
            
            BlouseOrderService rs=new BlouseOrderService();
                if(rs.insertBorder(border))
                    response.sendRedirect("ViewBlouseOrders.jsp");
             
    }

    }

   
