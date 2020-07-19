<%-- 
    Document   : ResetPasswordStep
    Created on : Sep 16, 2018, 8:39:45 PM
    Author     : AMASHI SANDUNIKA
--%>

<%@include file="DBconfig.jsp" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ManoBran Enterprises</title>
    </head>
    <body>

        <% 
            try {
                String email = request.getParameter("email");
                session.setAttribute("email", email);
                //    String psw = request.getParameter("psw");

                Statement st = conn.createStatement();
                String query = "SELECT * FROM customer WHERE Email='" + email + "'";

                ResultSet rsq=st.executeQuery(query);

                if (rsq.next()) {
                    response.sendRedirect("emailSent.jsp");
                } else {
                    response.sendRedirect("noEmailFound.jsp");
                }
            } catch (SQLException e) {

                e.printStackTrace();
            }
        %>

    </body>
</html>
