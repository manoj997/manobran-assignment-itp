
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author AMASHI SANDUNIKA
 */
public class AmaCustomerRegistration {
    private String fname, lname, address1, address2, city, province, pcode, mobile, email, password;
    private Connection newConn = null;
    private DBConnection dbConn = new DBConnection();
    
    public AmaCustomerRegistration(String fname, String lname, String address1, String address2, String city, String province, String pcode, String mobile, String email, String password){
        this.fname = fname;
        this.lname = lname;
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.province = province;
        this.pcode = pcode;
        this.mobile = mobile;
        this.email = email;
        this.password = password;
    }
    
    public boolean isRegistered() throws ClassNotFoundException , SQLException{
        if(dbConn.isConnected()){
            newConn = DBConnection.getconn();
            Statement stmt = newConn.createStatement();
            
            String query = "insert into customer(First_Name,Last_Name,Address_1,Address_2,City,Province,Postal_Code,Contact_No,Email,Password) values('" +fname+ "','" +lname+ "','" +address1+ "','" +address2+ "','" +city+ "','" +province+ "', '" +pcode+ "','" +mobile+ "', '" +email+ "', '" +password+ "')";
        
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
