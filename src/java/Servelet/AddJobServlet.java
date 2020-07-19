/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RENUKA FERNANDO
 */
@WebServlet(name = "AddJobServlet", urlPatterns = {"/AddJobServlet"})
public class AddJobServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet AddJobServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddJobServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            int order_id = Integer.parseInt(request.getParameter("order_id"));
            String name = request.getParameter("c_name");
            Date date = Date.valueOf(request.getParameter("date"));
            String address = request.getParameter("address");
            
            Job newJob = new Job();
            newJob.setOrder_id(order_id);
            newJob.setc_name(name);
            newJob.setdate(date);
            newJob.setadress(address);
            
            jobdao jobDB = new jobdao();
            if (jobDB.addjob(newJob)) {
                response.sendRedirect("Req_Deli_form.jsp");
                
            }
            else {
                out.println("something went wrong");
            }
            
            
            
            
        } catch (SQLException ex) {
            PrintWriter out = response.getWriter();
            Logger.getLogger(AddJobServlet.class.getName()).log(Level.SEVERE, null, ex);
            out.println("An SQL Exception occured");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
