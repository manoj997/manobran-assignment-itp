/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Entities.Order;
import Entities.Product;
import Connection.DbConnect;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author USER
 */
public class Orderdao {
    
    
    Connection connection;
	Statement statement;
        
     
     
        public String addOrder(Order order) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="insert into orders(ProductId,Color,Size,Quantity) values('"+order.getProductId()+"','"+order.getColor()+"','"+order.getSize()+"','"+order.getQuantity()+"')";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }
           public String UpdateOrder(Order order) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="update orders set Color='"+order.getColor()+"',Size='"+order.getSize()+"',Quantity='"+order.getQuantity()+"'";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }
              public String DeleteOrder(String productid) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="Delete from orders where ProductId='"+productid+"'";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }
        
        
}
