/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.RegisterUser;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class RegisterService {
    public boolean insertRegister(RegisterUser ru) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO register_user(CusID,Fname,Lname,Address,Email,Fixed_No,Mobile_No) VALUES('"+ru.getCusid()+"','"+ru.getFname()+"','"+ru.getLname()+"','"+ru.getAddress()+"','"+ru.getEmail()+"','"+ru.getFixed()+"','"+ru.getPhone()+"')");

			if(i>0) {
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 
                    finally {
			Connection con = DbConnection.getDBConnection();  	
			Statement st;
			try {
				st = con.createStatement();
				String query = "UPDATE logintemp SET CusID='"+ru.getCusid()+"' where id=1";
				st.executeUpdate(query);
			} 
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
                        
			
		}

		return false;
	}
	
    
}
