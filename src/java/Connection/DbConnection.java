/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

/**
 *
 * @author TOSHIBA
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DbConnection { 
	private static Connection con; 

	public static Connection getDBConnection(){ 
		
		
		try{  
			String driver ="com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/manobran"; 
			String username = "root"; 
			String password = "";
			  
			if(con == null || con.isClosed())
			{
				Class.forName(driver); 
				con = DriverManager.getConnection(url,username,password); 
			}
			
		} catch(ClassNotFoundException | SQLException e){
			System.out.println(e);
		}
		return con;  
	}  
	
}  