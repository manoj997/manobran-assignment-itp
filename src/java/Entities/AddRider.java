/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entities;
import Service.Riderdao;
import Entities.Rider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Silva
 */
@WebServlet(name="AddRider", urlPatterns={"/AddRider"})
public class AddRider extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddRider</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddRider at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
       try {
                int r_id = Integer.parseInt(request.getParameter("r_id"));
                String name = request.getParameter("name");
                String bike_no= request.getParameter("bike_no");
                
                Rider rider=new Rider();
                rider.setr_id(r_id);
                rider.setname(name);
                rider.setBike_no(bike_no);
                
                Riderdao riderdao=new Riderdao();
                String s = riderdao.addRider(rider);
                
                request.setAttribute("rider", rider);                 
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Product.jsp");
                dispatcher.forward(request, response);
                
            } catch (Exception ex) {
                Logger.getLogger(AddRider.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
