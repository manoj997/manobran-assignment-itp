/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Connection.DbConnection;
import Entities.Supply;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Vithu Shan
 */
public class SupplyOrderUpdateService {
public boolean updateSupplyOrder(Supply   res) {
      
      
   
    
    
			try {
                             
                                                
						Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE supply SET Address='"+res.getAddress()+"',TelNo='"+res.getTno()+"',OType='"+res.getOtype()+"',ODate='"+res.getDate()+"',Email='"+res.getEmail()+"',Payment='"+res.getPayment()+"'WHERE SupplyID='"+res.getSid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 
						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}

}
