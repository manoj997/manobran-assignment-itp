/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author RENUKA FERNANDO
 */
public class jobdao {

    Connection connection;
    Statement statement;

    public boolean addjob(Job job) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        String sql = "insert into job(order_id,c_name,date,adress) values('" + job.getorder_id() + "','" + job.getc_name() + "','" + job.getdate() + "','" + job.getadress() + "')";
        int i = statement.executeUpdate(sql);

        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    
    /*public String DeleteRider(int r_id) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        String sql = "Delete from riderdetails where r_id='" + r_id + "'";
        int i = statement.executeUpdate(sql);

        if (i != 0) {
            return "SUCCESS";
        } else {
            return "OOPS SOMETHING WENT WRONG";
        }
    }*/
    
    public ResultSet getAlljobs() throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        ResultSet res = null;
        String query = "SELECT * FROM job";
        res = statement.executeQuery(query);
        return res;
    }
    
    public ResultSet getjobById(int id) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        ResultSet res = null;
        String query = "SELECT * FROM riderdetails WHERE order_id = "+ id;
        res = statement.executeQuery(query);
        return res;
    }
}
