/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Entities.FinalGoods;
import Entities.Product;

import Entities.RawMaterials;
import Connection.DbConnect;
import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author USER
 */
public class Productsdao {
    
    
    
	Connection connection;
	Statement statement;
        
     
     
        public String addProducts(Product product) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="insert into products(ProductId,ProductName,SuppliedDate,SupplierId) values('"+product.getProductId()+"','"+product.getProductName()+"','"+product.getSuppliedDate()+"','"+product.getSupplierId()+"')";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }

      public String addFinalGoods(FinalGoods goods) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="insert into final_goods(ProductId,Gender,Category,Stock,Color,Size,Price,Description,Image) values('"+goods.getProductId()+"','"+goods.getGender()+"','"+goods.getCategory()+"','"+goods.getStock()+"','"+goods.getColor()+"','"+goods.getSize()+"','"+goods.getPrice()+"','"+goods.getDescription()+"','"+goods.getImages()+"')";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }

      public String addRawMaterials(RawMaterials raw) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="insert into raw_materials(ProductID,SuppliedQuantity,AvailableStock) values('"+raw.getProductID()+"','"+raw.getSuppliedQuantity()+"','"+raw.getAvailableStock()+"')";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }
        
         /**
     * @param goods
          
         */
       
        public void UpdateFinalGoods(FinalGoods goods){
            
            try {
                connection=DbConnect.getDBConnection();
                statement=connection.createStatement();
                String sql="UPDATE final_goods SET Gender='"+goods.getGender()+"',Category='"+goods.getCategory()+"',Stock='"+goods.getStock()+"',Color='"+goods.getColor()+"',Size='"+goods.getSize()+"',Price='"+goods.getPrice()+"',Description='"+goods.getDescription()+"'  where ProductId='"+goods.getProductId()+"'";
                statement.executeUpdate(sql);
               
            } catch (SQLException ex) {
                Logger.getLogger(Productsdao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
         public void UpdateRawMaterials(RawMaterials raw){
            
            try {
                connection=DbConnect.getDBConnection();
                statement=connection.createStatement();
                String sql="UPDATE raw_materials SET SuppliedQuantity='"+raw.getSuppliedQuantity()+"',AvailableStock='"+raw.getAvailableStock()+"'  where ProductID='"+raw.getProductID()+"'";
                statement.executeUpdate(sql);
               
            } catch (SQLException ex) {
                Logger.getLogger(Productsdao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
     
       /** public ArrayList<Product> ListProducts(){
             
                ArrayList<Product>productsList = new ArrayList<>();
            try {
                connection=DbConnect.getDBConnection();
                statement=connection.createStatement();
                String sql="select * from products order by StudentId,SubjectName";
                ResultSet resultSet = statement.executeQuery(sql);
                
                while (resultSet.next()) {
                    Product products = new Product();
                    products.setStudentId(resultSet.getString(2));
                    products.setSubjectName(resultSet.getString(3));
                    products.setAssignmentProduct(Integer.parseInt(resultSet.getString(4)));
                    products.setMidProduct(Integer.parseInt(resultSet.getString(5)));
                    products.setFinalProduct(Integer.parseInt(resultSet.getString(6)));
                    productsList.add(products);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Productdao.class.getName()).log(Level.SEVERE, null, ex);
            }
            return productsList;
     * @param ProductId}**/
      
        public void DeleteFinalGoods(String ProductId){
            try {
                connection=DbConnect.getDBConnection();
                statement=connection.createStatement();
                String sql="Delete from final_goods where ProductId='"+ProductId+"'";
                statement.executeUpdate(sql);
               
            } catch (SQLException ex) {
                Logger.getLogger(Productsdao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
          public void DeleteRawMaterials(String ProductId){
            try {
                connection=DbConnect.getDBConnection();
                statement=connection.createStatement();
                String sql="Delete from raw_materials where ProductID='"+ProductId+"'";
                statement.executeUpdate(sql);
               
            } catch (SQLException ex) {
                Logger.getLogger(Productsdao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
     
                  public String UpdateProducts(Product product) throws SQLException{

            
                connection = DbConnect.getDBConnection();
                statement = connection.createStatement();
                String sql="update products set ProductName='"+product.getProductName()+"',SuppliedDate='"+product.getSuppliedDate()+"',SupplierId='"+product.getSupplierId()+"' where ProductId='"+product.getProductId()+"'";
                int i=statement.executeUpdate(sql);
                
                 if(i!=0)
                     return "SUCCESS";
                  else
                     return "OOPS SOMETHING WENT WRONG";
        
        
           
        }}
                 
//                   public ArrayList searchProducts(String Type,String Color,String Size,String Price) throws SQLException{
//                       ArrayList list = new ArrayList();
//                       connection = DbConnect.getDBConnection();
//                statement = connection.createStatement();
//                String sql="select * from product p,final_goods f where p.ProductId=f.ProductId and  ;
//                ResultSet resultSet = statement.executeQuery(sql);
//                
//                while (resultSet.next()) {
//                    Marks marks = new Marks();
//                    marks.setStudentId(resultSet.getString(2));
//                    marks.setSubjectName(resultSet.getString(3));
//                    marks.setAssignmentMarks(Integer.parseInt(resultSet.getString(4)));
//                    marks.setMidMarks(Integer.parseInt(resultSet.getString(5)));
//                    marks.setFinalMarks(Integer.parseInt(resultSet.getString(6)));
//                    marksList.add(marks);
//                }
//            } catch (SQLException ex) {
//                Logger.getLogger(Marksdao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//            return marksList;
//}

