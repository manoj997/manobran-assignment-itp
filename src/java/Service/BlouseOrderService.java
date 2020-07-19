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
public class BlouseOrderService {

    public boolean insertBorder(BlouseOrder ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO blouse_order(OrderID,CusID,Fname,Design,Chest,Shoulder,Arms,Slength,Fneck,Bneck,Length,Ddate,Fees) VALUES('"+ru.getOrdid()+"','"+ru.getCusid()+"','"+ru.getFname()+"','"+ru.getDesign()+"','"+ru.getChest()+"','"+ru.getShoulder()+"','"+ru.getArms()+"','"+ru.getSlength()+"','"+ru.getFneck()+"','"+ru.getBneck()+"','"+ru.getLength()+"','"+ru.getDdate()+"','"+ru.getFees()+"')");

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