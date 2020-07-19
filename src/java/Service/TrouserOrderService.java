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
public class TrouserOrderService {
    
     public boolean insertTorder(TrouserOrder ru) {
		
		
		try {
			java.sql.Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO trouser_order(OrderID,CusID,Fname,Design,Hip,PLength,Ddate,Fees) VALUES('"+ru.getOrdid()+"','"+ru.getCusid()+"','"+ru.getFname()+"','"+ru.getDesign()+"','"+ru.getHip()+"','"+ru.getPlength()+"','"+ru.getDdate()+"','"+ru.getFees()+"')");

			if(i>0) {
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}
    
    
}
