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
public class SupplyServices {
    public boolean insertSupply(Supply ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO supply (SupplyID,Address,TelNo,OType,ODate,Email,Payment) VALUES('"+ru.getSid()+"','"+ru.getAddress()+"','"+ru.getTno()+"','"+ru.getOtype()+"','"+ru.getDate()+"','"+ru.getEmail()+"','"+ru.getPayment()+"')");

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