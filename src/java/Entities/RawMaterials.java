/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;



/**
 *
 * @author USER
 */
public class RawMaterials extends Product {
    
       String ProductID;
       int SuppliedQuantity;
      int AvailableStock;
      
 
    public String getProductID(){
       return ProductID;
    }
    
    
    public void setProductID(String Productid){
        ProductID=Productid;
    }
      public int getSuppliedQuantity(){
          return SuppliedQuantity;
      }
      
      public void setSuppliedQuantity(int quantity){
          SuppliedQuantity=quantity;
      }
      
      public int getAvailableStock(){
          return AvailableStock;
      }
      
      public void setAvailableStock(int stock){
          AvailableStock=stock;
      }
      
    @Override
    public String toString() {
        return "ProductId"+ProductID+"\n"+"Supplied Quantity"+SuppliedQuantity+"\n"+"Available Stock"+AvailableStock+"\n";
    }
    
   
}
