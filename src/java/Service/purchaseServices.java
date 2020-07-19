/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Connection.DbConnection;
import Entities.purchase;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Vithu Shan
 */
public class purchaseServices {

      public boolean insertSupply(purchase ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO purchase (purchaseid,purchaseDate,payment,purchasetype,contactno,email_id,address ) VALUES('"+ru.getPid()+"','"+ru.getPurchaseD()+"','"+ru.getPay()+"','"+ru.getPtype()+"','"+ru.getContact()+"','"+ru.getEmail()+"','"+ru.getAddress()+"')");

			if(i>0) {
				return true;
			}
                        else 
                            return false;
			
		}
		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}
    
}
    
    

