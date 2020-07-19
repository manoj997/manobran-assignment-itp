/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.ShalwarOrder;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class ShalwarOrderService {
    public boolean insertShorder(ShalwarOrder ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO shalwar_order(OrderID,CusID,Fname,Design,Chest,Shoulder,Arms,Hip,Length,Fneck,Bneck,PLength,Ddate,Fees) VALUES('"+ru.getOrdid()+"','"+ru.getCusid()+"','"+ru.getFname()+"','"+ru.getDesign()+"','"+ru.getChest()+"','"+ru.getShoulder()+"','"+ru.getArms()+"','"+ru.getHip()+"','"+ru.getLength()+"','"+ru.getFneck()+"','"+ru.getBneck()+"','"+ru.getPlength()+"','"+ru.getDdate()+"','"+ru.getFees()+"')");

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
