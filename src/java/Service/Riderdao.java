/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Entities.Rider;
import Connection.DbConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Silva
 */
public class Riderdao {

    Connection connection;
    Statement statement;

    public String addRider(Rider rider) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        String sql = "insert into riderdetails(r_id,name,bike_no) values('" + rider.getr_id() + "','" + rider.getname() + "','" + rider.getbike_no() + "')";
        int i = statement.executeUpdate(sql);

        if (i != 0) {
            return "SUCCESS";
        } else {
            return "OOPS SOMETHING WENT WRONG";
        }
    }

    public String UpdateRider(Rider rider) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        String sql = "update riderdetails set name='" + rider.getname() + "', bike_no='" + rider.getbike_no() + "' "
                + "WHERE r_id='"+rider.getr_id()+"'";
        int i = statement.executeUpdate(sql);

        if (i != 0) {
            return "SUCCESS";
        } else {
            return "OOPS SOMETHING WENT WRONG";
        }
    }

    public String DeleteRider(int r_id) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        String sql = "Delete from riderdetails where r_id='" + r_id + "'";
        int i = statement.executeUpdate(sql);

        if (i != 0) {
            return "SUCCESS";
        } else {
            return "OOPS SOMETHING WENT WRONG";
        }
    }
    
    public ResultSet getAllRiders() throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        ResultSet res = null;
        String query = "SELECT * FROM riderdetails";
        res = statement.executeQuery(query);
        return res;
    }
    
    public ResultSet getRiderById(int id) throws SQLException {
        connection = DbConnect.getDBConnection();
        statement = connection.createStatement();
        ResultSet res = null;
        String query = "SELECT * FROM riderdetails WHERE r_id = "+ id;
        res = statement.executeQuery(query);
        return res;
    }
}
