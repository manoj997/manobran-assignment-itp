/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.ShalwarOrder;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class ShalwarOrderUpdateService {
    public boolean updateShalwarOrder(ShalwarOrder   res) {
			try {
                                                
						java.sql.Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE shalwar_order SET CusID='"+res.getCusid()+"',Fname='"+res.getFname()+"',Design='"+res.getDesign()+"',Chest='"+res.getChest()+"',Shoulder='"+res.getShoulder()+"',Arms='"+res.getArms()+"',Hip='"+res.getHip()+"',Length='"+res.getLength()+"',Fneck='"+res.getFneck()+"',Bneck='"+res.getBneck()+"',PLength='"+res.getPlength()+"',Ddate='"+res.getDdate()+"',Fees='"+res.getFees()+"'WHERE OrderID='"+res.getOrdid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 

						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}

}
