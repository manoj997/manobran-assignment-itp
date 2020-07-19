/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

/**
 *
 * @author TOSHIBA
 */

import Connection.DbConnection;
import Entities.Feedback;
import java.sql.Connection;
import java.sql.Statement;


public class FeedbackService {
    public boolean insertFeedback(Feedback fb) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO feedback(UserName,Email,Feedback) VALUES('"+fb.getUsername()+"','"+fb.getEmail()+"','"+fb.getFeedback()+"')");

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
