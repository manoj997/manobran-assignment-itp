
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
public class ResetPassword {
    private  String username;
    private  DBConnection dbConn = new DBConnection();
    private  Connection newConn = null;

    public ResetPassword(String username) {
        this.username = username;
    }
    
    public boolean check() throws ClassNotFoundException, SQLException{
        if(dbConn.isConnected()){
            newConn = DBConnection.getconn();
            Statement statement = newConn.createStatement();
            
            String query = "SELECT * FROM customer WHERE Email = '" + username + "' ";
            
           int result=statement.executeUpdate(query);
            if(result>0)
                return true;
            else 
                return false;
        }
        else
            return false;
    }
}
