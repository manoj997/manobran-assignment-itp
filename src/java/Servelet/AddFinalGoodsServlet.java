/**
 *
 * @author Pavidha Lojini
 */
package Servelet;


import Service.Productsdao;
import Entities.FinalGoods;

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




public class AddFinalGoodsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
        /**
	 * @see HttpServlet#HttpServlet()
         * 
	 */
	public AddFinalGoodsServlet(){
		super();
	}
        
        
       
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           
            
            try {
                
                String ProductId = request.getParameter("productid");
                
                
             
                
                 String Gender=request.getParameter("gender");
                  String Category=request.getParameter("category");
                  int Stock=Integer.parseInt(request.getParameter("stock"));
                  String Color=request.getParameter("color");
                  String Size=request.getParameter("size");
                  Double Price=Double.parseDouble(request.getParameter("price"));
                  String Description=request.getParameter("desc");
                  String img=request.getParameter("image");
                 
                
               
                
               
                
                
                FinalGoods finalgoods=new FinalGoods();
                  finalgoods.setProductId(ProductId);
                  finalgoods.setGender(Gender);
                   finalgoods.setColor(Color);
                  finalgoods.setSize(Size);
                  finalgoods.setCategory(Category);
                  finalgoods.setStock(Stock);
                  finalgoods.setPrice(Price);
                  finalgoods.setDescription(Description);
                  finalgoods.setImages(img);
                  
                  
                  
                  
                  Productsdao prod=new Productsdao();
                  
                   
                     prod.addFinalGoods(finalgoods);


                 
                request.setAttribute("finalgoods", finalgoods);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addfinalgoods.jsp");
		dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AddFinalGoodsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
        }

            

            
   
            

         
          



