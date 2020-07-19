
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Connection.DbConnection;
import Entities.RegisterUser;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class ExistUserService {
    public boolean UpdateRegister(RegisterUser res) {
		
		
		
			try {
                                                
						java.sql.Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE logintemp SET CusID='"+res.getCusid()+"' where id=1";
                                                        st.executeUpdate(query);

								return true;
				} 

						catch(Exception e){
							System.out.println(e);
						} 

	finally {
			
			try {
				java.sql.Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE register_user SET Fname='"+res.getFname()+"',Lname='"+res.getLname()+"',Address='"+res.getAddress()+"',Email='"+res.getEmail()+"',Fixed_No='"+res.getFixed()+"',Mobile_No='"+res.getPhone()+"'WHERE CusID='"+res.getCusid()+"'";
							st.executeUpdate(query);

								return true;

		
				} 
			
			catch(Exception e){
							System.out.println(e);
						} 
			
                        
			
		}

		return false;
	}
	
    
}

