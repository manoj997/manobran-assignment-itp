
<%@include file="DBconfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            int pin, cid;
            //  String result;


        %>

        <%            String email = session.getAttribute("email").toString();
            Statement st = conn.createStatement();
            String q1 = "SELECT CustId FROM customer WHERE Email='" + email + "'";
            ResultSet rs1 = st.executeQuery(q1);

            while (rs1.next()) {
                cid = rs1.getInt("CustId");
            }

            Statement st1 = conn.createStatement();
            String q2 = "INSERT INTO resetPinRequest(custId) VALUES (" + cid + ")";
            int rst = st1.executeUpdate(q2);

            if (rst > 0) {

                Statement st2 = conn.createStatement();
                String q3 = "SELECT pin FROM resetPinRequest WHERE custId=" + cid + "";

                ResultSet rs3 = st2.executeQuery(q3);
                while (rs3.next()) {
                    pin = rs3.getInt("pin");
                }
            }
            request.setAttribute("email", email);
            request.setAttribute("pin", pin);


        %>
        <form name="myForm" id="myForm" target="_myFrame" action="TempServlet" method="POST">
            <p>
                <input type="hidden" name="email" value="<%=email%>" />
                <input type="hidden" name="pin" value="<%=pin%>"/>
            </p>
            <p>
                <input type="submit" value="Submit" />
            </p>
        </form>

        <script type="text/javascript">
            window.onload = function () {

                document.forms["myForm"].submit();

            }
        </script>
        <h4>

        </h4>
    </center>
</body>
</html>
