/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Vithu Shan
 */
public class DeletepurchaseService {
    
        String url="jdbc:mysql://localhost:3306/mb";  
	String username="root";  
	String password=""; 
    
 public boolean deletepurchase(String Pid) throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection(url,username,password);
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM purchase WHERE purchaseid  ='"+ Pid+"'";
		
						
			myStm.executeUpdate(query);
				return true;
			
					
		} 
	
		catch ( ClassNotFoundException e) {
			e.printStackTrace();
		}

		return false;

}
}

