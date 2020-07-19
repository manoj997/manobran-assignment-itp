/**
 *
 * @author Pavidha Lojini
 */
package Servelet;


import Service.Productsdao;

import Entities.RawMaterials;
import java.io.IOException;
import static java.lang.System.out;
import java.lang.reflect.Field;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;




public class AddRawMaterialsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
        /**
	 * @see HttpServlet#HttpServlet()
         * 
	 */
	public AddRawMaterialsServlet(){
		super();
	}
        
        
       
        
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           
            
            try {
                
                String ProductId = request.getParameter("productid");
               
               
                int Quantity=Integer.parseInt(request.getParameter("quantity"));
                int Stock=Integer.parseInt(request.getParameter("rstock"));
                 
                
                
               
                
                RawMaterials raw=new RawMaterials();
                raw.setProductID(ProductId);
                raw.setSuppliedQuantity(Quantity);
                raw.setAvailableStock(Stock);
                
             
                  
                  
                  
                  
                  Productsdao prod=new Productsdao();
                 
                     prod.addRawMaterials(raw);


                 
                request.setAttribute("prod", prod);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addrawmaterials.jsp");
		dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AddFinalGoodsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
        }

            

            
   
            

         
          



