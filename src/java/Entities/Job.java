/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;
import java.sql.Date;

/**
 *
 * @author RENUKA FERNANDO
 */
public class Job {
    int order_id;
    String c_name;
    Date date;
    String address;
    
    public int getorder_id(){
        return order_id;
        
    }
    
    public void setr_id(int Order_id){
        order_id=Order_id;
    }
    
      public String getc_name(){
        return c_name;
        
    }
    
    public void setc_name(String C_Name){
        c_name=C_Name;
    }
    
      public Date getdate(){
        return date;
        
    }
    
    public void setdate(Date Date){
        date=Date;
    }
    
    public String getadress(){
        return address;
        
    }
    
    public void setadress(String Adress){
        address=Adress;
    }
    
     @Override
    public String toString() {
        return "Order Id"+order_id+"\n"+"Name"+c_name+"\n"+"Date"+date+"\n"+"Adress"+address+"\n";
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    
    
}
