/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Service.Orderdao;
import Service.Productsdao;
import Entities.Order;
import Entities.Product;
import Entities.RawMaterials;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class UpdateCartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
            
            try {
                  String ProductId = request.getParameter("Id");
                String Color = request.getParameter("color");
                String Size= request.getParameter("size");
                int Quantity=Integer.parseInt(request.getParameter("quantity"));
                Order order=new Order();
                order.setProductId(ProductId);
                order.setColor(Color);
                order.setSize(Size);
                order.setQuantity(Quantity);
                Orderdao orderdao=new Orderdao();
                orderdao.UpdateOrder(order);
                
                request.setAttribute("order", order);                 
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ShoppingCart.jsp");
                dispatcher.forward(request, response);
                
            } catch (SQLException ex) {
                Logger.getLogger(AddToCartServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }} 

