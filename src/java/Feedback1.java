
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
public class Feedback1 {
      private String fname, email, message;
    private Connection newConn = null;
    private DBConnection dbConn = new DBConnection();
    
    public Feedback1(String fname, String email, String message){
        this.fname = fname;
        this.email = email;
        this.message = message;
    }
    
    public boolean isFeedback() throws ClassNotFoundException , SQLException{
        if(dbConn.isConnected()){
            newConn = DBConnection.getconn();
            Statement stmt = newConn.createStatement();
            
            String query = "insert into feedback(UserName,Email,Feedback) values('" +fname+ "', '" +email+ "', '" +message+ "')";
        
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
