/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author jahrin
 */
@WebServlet(name = "courseReport", urlPatterns = {"/courseReport"})
public class assetReport_building extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            Connection conn;

            conn = DBConnection.getconn();
             //Statement st = conn.createStatement();
            String query = "SELECT\n" +
"     asset_building.`buildingId` AS asset_building_buildingId,\n" +
"     asset_building.`initialValue` AS asset_building_initialValue,\n" +
"     asset_building.`regNo` AS asset_building_regNo,\n" +
"     asset_building.`address` AS asset_building_address\n" +
"FROM\n" +
"     `asset_building` asset_building";

            String reportPath = "C:\\Users\\Manoj Kumar\\Documents\\NetBeansProjects\\ManoBran\\src\\java\\Reports\\accounts_asset_buildings.jrxml";
            // Map<String, Object> parameters = new HashMap<String, Object>();

////                //loading the design from the file path
            JasperDesign jasperDesign = JRXmlLoader.load(reportPath);
////                
////                //Designing the query for the report
            JRDesignQuery newQuery = new JRDesignQuery();
////                
////                //setting the query text
            newQuery.setText(query);
//////                
//////                //seeting the query for the report design
            jasperDesign.setQuery(newQuery);
//////                
//////                //compile the jasper report for the design
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
//////                
//////                //creating a JasperPrint object to fill the report
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, conn);
            JasperViewer.viewReport(jasperPrint);
            //JasperExportManager.exportReportToPdfFile(jasperPrint, "C://Users//Manoj Kumar//Documents//NetBeansProjects//web//Building Report.pdf");
//         
           response.sendRedirect("CourseView.jsp");
        } catch (JRException ex) {
           Logger.getLogger(assetReport_building.class.getName()).log(Level.SEVERE, null, ex);

        }
        
        
    }
    }



