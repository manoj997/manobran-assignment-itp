<%-- 
    Document   : asset_add_process
    Created on : Sep 13, 2018, 8:16:02 PM
    Author     : Manoj Kumar
--%>
<%@include file="DBConfig.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <%
            
        String type=request.getParameter("assetType");
        out.print(type);
        if(type.equals("addBuilding")){
       response.sendRedirect("admin_accounts_asset_building_add.jsp");
        }
        else if(type.equals("addVehicle")){
        response.sendRedirect("admin_accounts_asset_vehicle_add.jsp");
        }
        else if(type.equals("addLand")){
            response.sendRedirect("admin_accounts_asset_land_add.jsp");
        }
        else if(type.equals("addMachine")){
            response.sendRedirect("admin_accounts_asset_machine_add.jsp");
        }
        %>
    </body>
</html>
