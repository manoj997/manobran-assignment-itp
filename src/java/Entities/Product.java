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
public class Product {
    

     
     String ProductId;
     String ProductName;
     String SuppliedDate;
     String SupplierId;
   
     
    /**
     * @return the ProductId
     */ 
    public String getProductId(){
        return ProductId;
    }
    
    /**
     * @param productid
     */
    public void setProductId(String productid){
        ProductId=productid;
    }
  
     /**
     * @return the ProductName
     */
    public String getProductName(){
        return ProductName;
    }
    
    /**
     * @param productName
     */
    public void setProductName(String productName){
        ProductName=productName;
    }
    
    /**
     * @return the SupplierDate
     */
    public String getSuppliedDate(){
        return SuppliedDate;
    }
    
    /**
     * @param supplieddate
     */
    public void setSuppliedDate(String supplieddate){
        SuppliedDate=supplieddate;
    }
    
    /**
     * @return the SupplierId
     */
    public String getSupplierId(){
        return SupplierId;
    }
    
    /**
     * @param supplierid
     */
    public void setSupplierId(String supplierid){
        SupplierId=supplierid;
    }
    
  
    @Override
    public String toString() {
        return "Product Id"+ProductId+"\n"+"Product Name"+ProductName+"\n"+"Supplied Date"+SuppliedDate+"\n"+"SupplierId"+SupplierId+"\n";
    } 
    
}

    

