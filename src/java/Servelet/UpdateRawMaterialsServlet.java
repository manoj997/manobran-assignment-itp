
package Servelet;

import Service.Productsdao;
import Entities.Product;
import Entities.RawMaterials;
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


@WebServlet(name = "UpdateMarksServlet", urlPatterns = {"/UpdateMarksServlet"})
public class UpdateRawMaterialsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
        
        /**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateRawMaterialsServlet() {
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
                String ProductId=request.getParameter("productid");
                String ProductName = request.getParameter("productname");
                String Date= request.getParameter("date");
                String SupplierId=request.getParameter("supplierid");
                int Quantity=Integer.parseInt(request.getParameter("quantity"));
                int Stock=Integer.parseInt(request.getParameter("rstock"));
             
                Product addproduct = new Product();
                
                addproduct.setProductId(ProductId);
                addproduct.setProductName(ProductName);
                addproduct.setSuppliedDate(Date);
                addproduct.setSupplierId(SupplierId);
                
                RawMaterials raw=new RawMaterials();
                raw.setProductID(ProductId);
                raw.setSuppliedQuantity(Quantity);
                raw.setAvailableStock(Stock);
                
                
         
                
                
                
                Productsdao prod=new Productsdao();
                prod.UpdateProducts(addproduct);
                prod.UpdateRawMaterials(raw);
                
                
                
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addrawmaterials.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(UpdateRawMaterialsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
}
            

            
   
            

         
          




