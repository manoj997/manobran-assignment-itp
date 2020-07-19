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

public class AmaAdminLogin {
    private String username, password;
    private DBConnection dbConn = new DBConnection();
    private Connection newConn = null;

    public AmaAdminLogin(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public boolean check() throws ClassNotFoundException, SQLException{
        if(dbConn.isConnected()){
            newConn = DBConnection.getconn();
            Statement statement = newConn.createStatement();
            
            String query = "select * from manager where Email = '" +username+ "' and Password ='"+ password +"'";
            
            ResultSet rs=statement.executeQuery(query);
            if(rs.next())
                return true;
            else 
                return false;
        }
        else
            return false;
    }
}


