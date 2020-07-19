/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class DeleteTrouserOrderService {
 String url="jdbc:mysql://localhost:3306/manobran";  
	String username="root";  
	String password=""; 
	
	public boolean deleteOrder(String OrderID) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection myCon = DriverManager.getConnection(url,username,password);
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM trouser_order WHERE OrderID='"+OrderID+"'";
		
						
			myStm.executeUpdate(query);
				return true;
			
					
		} 
	
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return false;

}   
}
