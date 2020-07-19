/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.TrouserOrder;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class TrouserOrderUpdateService {
  public boolean updateTrouserOrder(TrouserOrder   res) {

			try {
                                                
						java.sql.Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE trouser_order SET CusID='"+res.getCusid()+"',Fname='"+res.getFname()+"',Design='"+res.getDesign()+"',Hip='"+res.getHip()+"',PLength='"+res.getPlength()+"',Ddate='"+res.getDdate()+"',Fees='"+res.getFees()+"'WHERE OrderID='"+res.getOrdid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 

						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}
  
}
