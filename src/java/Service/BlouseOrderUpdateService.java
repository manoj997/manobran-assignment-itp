/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.BlouseOrder;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class BlouseOrderUpdateService {
     public boolean updateBlouseOrder(BlouseOrder   res) {

			try {
                                                
						Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE Blouse_order SET CusID='"+res.getCusid()+"',Fname='"+res.getFname()+"',Design='"+res.getDesign()+"',Chest='"+res.getChest()+"',Shoulder='"+res.getShoulder()+"',Arms='"+res.getArms()+"',Slength='"+res.getSlength()+"',Fneck='"+res.getFneck()+"',Bneck='"+res.getBneck()+"',Length='"+res.getLength()+"',Ddate='"+res.getDdate()+"',Fees='"+res.getFees()+"'WHERE OrderID='"+res.getOrdid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 

						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}

    
}
