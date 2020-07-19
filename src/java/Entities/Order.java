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
public class Order {
    String ProductId;
    String Color;
    String Size;
    int Quantity;
    
    public String getProductId(){
        return ProductId;
        
    }
    
    public void setProductId(String productid){
        ProductId=productid;
    }
    
      public String getColor(){
        return Color;
        
    }
    
    public void setColor(String color){
        Color=color;
    }
    
      public String getSize(){
        return Size;
        
    }
    
    public void setSize(String size){
        Size=size;
    }
    
      public int getQuantity(){
        return Quantity;
        
    }
    
    public void setQuantity(int quantity){
        Quantity=quantity;
    }
    
     @Override
    public String toString() {
        return "Product Id"+ProductId+"\n"+"Color"+Color+"\n"+"Size"+Size+"\n"+"Quantity"+Quantity+"\n";
    }
}
