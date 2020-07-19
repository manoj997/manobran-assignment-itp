/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entities;

/**
 *
 * @author Silva
 */
public class Rider {
    int r_id;
    String name;
    String bike_no;
    
    public int getr_id(){
        return r_id;
        
    }
    
    public void setr_id(int R_id){
        r_id=R_id;
    }
    
      public String getname(){
        return name;
        
    }
    
    public void setname(String Name){
        name=Name;
    }
    
      public String getbike_no(){
        return bike_no;
        
    }
    
    public void setSize(String Bike_no){
        bike_no=Bike_no;
    }
    
     @Override
    public String toString() {
        return "Rider Id"+r_id+"\n"+"Name"+name+"\n"+"Bike Number"+bike_no+"\n";
    }

    public void setBike_no(String bike_no) {
        this.bike_no = bike_no;
    }
    
    
}
