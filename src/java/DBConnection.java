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

public class DBConnection {
    private String url = "jdbc:mysql://localhost:3306/manobran";
    private String username = "root";
    private String password = "";
    static Connection conn = null;
    
    public DBConnection(){}
    
    public boolean isConnected() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        
        if(conn != null){
            return true;
        }
        else{
            return false;
        }
    }
    
    public static Connection getconn(){
        return conn;
    }
}
