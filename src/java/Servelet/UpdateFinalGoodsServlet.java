
package Servelet;

import Service.Productsdao;
import Entities.FinalGoods;
import Entities.Product;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;


public class UpdateFinalGoodsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
        
        /**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateFinalGoodsServlet() {
		super();
	}
        /**
         * @param request
         * @param response
         * @throws javax.servlet.ServletException
         * @throws java.io.IOException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	/**
         * @param request
         * @param response
         * @throws javax.servlet.ServletException
         * @throws java.io.IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
            
         try {
                
                String ProductId = request.getParameter("productid");
                String ProductName = request.getParameter("productname");
                String Date= request.getParameter("date");
                
                
                String SupplierId=request.getParameter("supplierid");
                
                 String Gender=request.getParameter("gender");
                  String Category=request.getParameter("category");
                  int Stock=Integer.parseInt(request.getParameter("stock"));
                  String Color=request.getParameter("color");
                  String Size=request.getParameter("size");
                  Double Price=Double.parseDouble(request.getParameter("price"));
                  String Description=request.getParameter("desc");

                 
                
                Product addproduct = new Product();
                
                addproduct.setProductId(ProductId);
                addproduct.setProductName(ProductName);
                addproduct.setSuppliedDate(Date);
                addproduct.setSupplierId(SupplierId);
                
                
                
                FinalGoods finalgoods=new FinalGoods();
                  finalgoods.setProductId(ProductId);
                  finalgoods.setGender(Gender);
                  finalgoods.setCategory(Category);
                  finalgoods.setStock(Stock);
                  finalgoods.setColor(Color);
                  finalgoods.setSize(Size);
                  
                                 
                  finalgoods.setPrice(Price);
                  finalgoods.setDescription(Description);
                  
                  
                  
                  Productsdao prod=new Productsdao();
                   prod.UpdateProducts(addproduct);
                   
                     prod.UpdateFinalGoods(finalgoods);


                 
                request.setAttribute("addproduct", addproduct);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addfinalgoods.jsp");
		dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AddFinalGoodsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }}
            

            
   
            

         
          




