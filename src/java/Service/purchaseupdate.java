/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Connection.DbConnection;
import Entities.Supply;
import Entities.purchase;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Vithu Shan
 */
public class purchaseupdate {
public boolean purchaseupdate( purchase  rws) {
      
      
   
    
    
			try {
                             
                                                
						Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE purchase SET purchaseDate='"+rws.getPurchaseD()+"',payment='"+rws.getPay()+"',purchasetype ='"+rws.getPtype()+"',contactno ='"+rws.getContact()+"',email_id ='"+rws.getEmail()+"',address ='"+rws.getAddress()+"'WHERE purchaseid ='"+rws.getPid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 
						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}

}
