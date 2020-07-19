/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author AMASHI SANDUNIKA
 */
import java.sql.*;

public class AmaAdminManagerRegister {
    private String fname, lname,category, mobile, email, password;
    private Connection newConn = null;
    private DBConnection dbConn = new DBConnection();
    
public AmaAdminManagerRegister(String fname, String lname, String category, String mobile, String email, String password){
        this.fname = fname;
        this.lname = lname;
        this.category = category;
        this.mobile = mobile;
        this.email = email;
        this.password = password;
    }
    
    public boolean isRegistered() throws ClassNotFoundException , SQLException{
        if(dbConn.isConnected()){
            newConn = DBConnection.getconn();
            Statement stmt = newConn.createStatement();
            
            String query = "insert into manager(First_Name,Last_Name, Category, Contact_No,Email,Password) values('" +fname+ "','" +lname+ "','" +category+ "','" +mobile+ "', '" +email+ "', '" +password+ "')";
        
            int result = stmt.executeUpdate(query);
            
            if(result > 0)
                return true;
            else 
                return false;
        }      
        else 
            return false;
    } 
}
