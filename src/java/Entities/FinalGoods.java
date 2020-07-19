/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.lang.reflect.Field;

/**
 *
 * @author USER
 */
public class FinalGoods {
    
    String Productid;
    String Gender;
    String Category;
    int Stock;
    String Color;
    String Size;
    double Price;
    String Description;
    String images;
    
    
    public String getProductId(){
       return Productid;
    }
    
   
    public void setProductId(String Productid){
        this.Productid=Productid;
    }
    public String getGender(){
        return Gender;
    }
    
    public void setGender(String gender){
        Gender=gender;
    }
    
    public String getCategory(){
        return Gender;
    }
    
    public void setCategory(String category){
        Category=category;
    }
    
    public int getStock(){
        return Stock;
    }
    
    public void setStock(int stock){
        Stock=stock;
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
    
    public double getPrice(){
        return Price;
    }
    
    public void setPrice(double price){
        Price=price;
    }
    
    public String getDescription(){
        return Description;
    }
    
    public void setDescription(String description){
        Description=description;
    }
    
      public String getImages(){
        return images;
    }
    
    public void setImages(String Images){
        images=Images;
    }
     @Override
    public String toString() {
        return "ProductId"+Productid+"\n"+"Gender"+Gender+"\n"+"Category"+Category+"\n"+"Available Stock"+Stock+"\n"+"Color"+Color+"\n"+"Size"+Size+"\n"+"Price"+Price+"\n"+"Description"+Description+"\n"+"Images"+images+"\n";
    }
    
     
}
