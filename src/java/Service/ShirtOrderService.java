/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.ShirtOrder;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class ShirtOrderService {
    
    public boolean insertSorder(ShirtOrder ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO shirt_order(OrderID,CusID,Fname,Design,Chest,Shoulder,Arms,Slength,Fneck,Length,Ddate,Fees) VALUES('"+ru.getOrdid()+"','"+ru.getCusId()+"','"+ru.getFname()+"','"+ru.getDesign()+"','"+ru.getChest()+"','"+ru.getShoulder()+"','"+ru.getArms()+"','"+ru.getSlength()+"','"+ru.getFneck()+"','"+ru.getLength()+"','"+ru.getDdate()+"','"+ru.getFees()+"')");

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
