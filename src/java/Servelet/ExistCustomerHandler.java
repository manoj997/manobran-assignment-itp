/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Entities.RegisterUser;
import Service.ExistUserService;
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
public class ExistCustomerHandler extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
            String cusid=request.getParameter("cusid");
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String address=request.getParameter("address");
            String email=request.getParameter("email");
            String fixed=request.getParameter("fixed");
            String phone=request.getParameter("phone");
           
       
            
            RegisterUser register=new RegisterUser();
            register.setCusid(cusid);
            register.setFname(fname);
            register.setLname(lname);
            register.setAddress(address);
            register.setEmail(email);
            register.setFixed(fixed);
            register.setPhone(phone);
            
            ExistUserService rs=new ExistUserService();
                if(rs.UpdateRegister(register))
                    response.sendRedirect("Dress.jsp");
    }

   
}
