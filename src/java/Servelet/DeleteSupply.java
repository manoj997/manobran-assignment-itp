/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Services.DeleteSupplyorderService;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vithu Shan
 */
public class DeleteSupply extends HttpServlet {

    
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
                        String SupplyID=request.getParameter("id");
		
			DeleteSupplyorderService auds = new DeleteSupplyorderService();
		
        try {
            if(auds.deleteSupplyOrder(SupplyID))
                response.sendRedirect("ViewSupplyDetails.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(DeleteSupply.class.getName()).log(Level.SEVERE, null, ex);
        }
		
    }
}
