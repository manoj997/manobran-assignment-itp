/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.Feedback;
import Service.FeedbackService;
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
public class FeedbackHandler extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                String username=request.getParameter("username");
		String email=request.getParameter("email");
		String feedback=request.getParameter("feedback");
                
                Feedback Feed=new Feedback();
                Feed.setUsername(username);
                Feed.setEmail(email);
                Feed.setFeedback(feedback);
                
                FeedbackService fbs=new FeedbackService();
                if(fbs.insertFeedback(Feed))
                    response.sendRedirect("Feedback.jsp");
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
